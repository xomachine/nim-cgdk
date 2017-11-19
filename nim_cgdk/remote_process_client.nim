from sequtils import toSeq
from tables import Table, `[]`, `[]=`, initTable, len, values
from net import Port, Socket, newSocket, connect, getFd, close, recv, send
from nativesockets import setSockOptInt
from macros import `!`, quote
from typetraits import name
when defined(posix):
  from posix import TCP_NODELAY, IPPROTO_TCP
else:
  # Temporary workaroud since nims stdlib has no such constants for windows
  const TCP_NODELAY = 1
  const IPPROTO_TCP = 6
from model.action_type import ActionType
from model.facility import Facility
from model.facility_type import FacilityType
from model.game import Game
from model.move import Move
from model.player import Player
from model.player_context import PlayerContext
from model.terrain_type import TerrainType
from model.vehicle import Vehicle
from model.vehicle_type import VehicleType
from model.vehicle_update import VehicleUpdate
from model.weather_type import WeatherType
from model.world import World

type
  MessageType {.pure, size: 1.} = enum
    UNKNOWN = 0
    GAME_OVER = 1
    AUTHENTICATION_TOKEN = 2
    TEAM_SIZE = 3
    PROTOCOL_VERSION = 4
    GAME_CONTEXT = 5
    PLAYER_CONTEXT = 6
    MOVE = 7
  Message = object
    case kind: MessageType
    of MessageType.AUTHENTICATION_TOKEN:
      token: string
    of MessageType.PROTOCOL_VERSION:
      version: int32
    of MessageType.TEAM_SIZE:
      size: int32
    of MessageType.GAME_CONTEXT:
      game: Game
    of MessageType.MOVE:
      move: Move
    of MessageType.PLAYER_CONTEXT:
      playerContext: PlayerContext
    else:
      discard
  CachedObject = Player | Facility ## Objects to be cached to a Table
  CachedEnum = TerrainType | WeatherType ## Matricies of these enums is also
                                         ## will be cached
  PlainType = int8 | int32 | int64 | float64 | bool
  PlainOrEnum = PlainType | enum

type
  RemoteProcessClient* = tuple
    socket: Socket
    PlayerCache: Table[int64, Player]
    TerrainTypeCache: seq[seq[TerrainType]]
    WeatherTypeCache: seq[seq[WeatherType]]
    FacilityCache: Table[int64, Facility]

proc read[T: PlainType](rpc: var RemoteProcessClient, a: typedesc[T]): T =
  let received = rpc.socket.recv(result.addr, T.sizeof())
  assert(T.sizeof() == received)

proc read[T: enum](rpc: var RemoteProcessClient, a: typedesc[T]): T =
  let received = rpc.socket.recv(result.addr, T.sizeof())
  assert(T.sizeof() == received)
  #assert($result != $(ord(result)) & " (invalid data!)") # bounds check
  # In general case the following check is not enough due to possible
  # holes inside the enum. But enums in model have no holes, so
  # it will be left here
  assert(result.high() >= result and result.low() <= result)


macro toField(rpc: untyped, tn: static[string]): untyped =
  ## Constructs expression rpc.tn by given `rpc` and `tn`
  let fieldname = !(tn)
  result = (quote do: `rpc`.`fieldname`)

proc read[T: object](rpc: var RemoteProcessClient, a: typedesc[T]): T =
  for k, v in result.fieldPairs():
    when defined(debug):
      echo "Reading key " & k & ":"
    toField(result, k) = rpc.read(type(v))
    when defined(debug) and toField(result, k) is PlainType:
      echo k & " = " & $(toField(result, k))

proc read[T: ref object](rpc: var RemoteProcessClient, a: typedesc[T]): T =
  let existance = rpc.read(int8)
  const cachename = name(T) & "Cache"
  when defined(debug):
    echo "Read existance " & $existance & " for object " & name(T)
  when T is CachedObject:
    if existance == 127:
      let id = rpc.read(int64)
      when defined(debug):
        echo name(T) & " is CachedObject, and its cached as " & $id
      return toField(rpc, cachename)[id]
  if existance > 0:
    new(result)
    result[] = read(rpc, type(result[]))
    when T is CachedObject:
      when defined(debug):
        echo name(T) & " is CachedObject, so writing its id " & $result.id
      toField(rpc, cachename)[result.id] = result

proc read[T: CachedEnum](rpc: var RemoteProcessClient,
                         a: typedesc[seq[seq[T]]]): seq[seq[T]] =
  ## Special reader for weather and terrain matricies.
  const cachename = name(T) & "Cache"
  if toField(rpc, cachename).isNil:
    when defined(debug):
      echo "Encountered CachedEnumSeq and its empty " & cachename
    toField(rpc, cachename) = cast[seq[seq[T]]](read(rpc, seq[seq[int8]]))
  toField(rpc, cachename)

proc read[T: string](rpc: var RemoteProcessClient, a: typedesc[T]): T =
  let strlen = rpc.read(int32)
  result = newString(strlen)
  let received = rpc.socket.recv(result[0].addr, strlen)
  assert(strlen == received)

proc read[T](rpc: var RemoteProcessClient, a: typedesc[seq[T]]): seq[T] =
  let seqlen = rpc.read(int32)
  if seqlen >= 0:
    result = newSeq[T](seqlen)
    for i in 0..<seqlen:
      result[i] = rpc.read(T)
  when T is CachedObject:
    # For objects what cached into Table it is possible to skip reading
    # of whole table by returning the cached one
    const cachename = name(T) & "Cache"
    if seqlen < 0:
      when defined(debug):
        echo name(T) & "s was taken from cache"
      return toSeq(toField(rpc, cachename).values())


proc write[T: PlainOrEnum](rpc: RemoteProcessClient, data: T) =
  let sent = rpc.socket.send(data.unsafeAddr, T.sizeof())
  assert(sent == T.sizeof())

proc write[T: object](rpc: RemoteProcessClient, data: T) =
  for k, v in data.fieldPairs():
    rpc.write(v)

proc write[T: string](rpc: RemoteProcessClient, data: T) =
  rpc.write(int32(data.len))
  let sent = rpc.socket.send(data[0].unsafeAddr, data.len)
  assert(sent == data.len)

proc write[T: ref object](rpc: RemoteProcessClient, data: T) =
  rpc.write(not data.isNil)
  if not data.isNil:
    rpc.write(data[])

proc write[T](rpc: RemoteProcessClient, data: seq[T]) =
  if data.isNil:
    rpc.write(0'i32)
  else:
    rpc.write(int32(data.len))
    for element in data:
      rpc.write(element)

proc newRemoteProcessClient*(address: string,
                             port: Natural): RemoteProcessClient =
  result.socket = newSocket()
  result.socket.getFd().setSockOptInt(IPPROTO_TCP, TCP_NODELAY, 1)
  result.socket.connect(address, Port(port))
  result.PlayerCache = initTable[int64, Player](16)
  result.FacilityCache = initTable[int64, Facility](16)

proc startConversation*(self: var RemoteProcessClient, token: string,
                        protoVer: int32): Game =
  let tokenMessage = Message(kind: MessageType.AUTHENTICATION_TOKEN,
                             token: token)
  let protoMessage = Message(kind: MessageType.PROTOCOL_VERSION,
                             version: protoVer)
  self.write(tokenMessage)
  self.write(protoMessage)
  let teamSize = self.read(Message)
  assert(teamSize.kind == MessageType.TEAM_SIZE)
  let gameContext = self.read(Message)
  assert(gameContext.kind == MessageType.GAME_CONTEXT)
  return gameContext.game

proc getPlayerContext*(self: var RemoteProcessClient): PlayerContext =
  let message = self.read(Message)
  assert(message.kind == MessageType.PLAYER_CONTEXT)
  message.playerContext

proc doMove*(self: RemoteProcessClient, move: Move) =
  let moveMessage = Message(kind: MessageType.MOVE, move: move)
  self.write(moveMessage)

proc close*(self: RemoteProcessClient) =
  self.socket.close()

