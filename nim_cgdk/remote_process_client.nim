from streams import Stream
from tables import Table, `[]`, `[]=`, initTable, len, values
from utils.socketstream import newSocketStream, SocketStream
from net import Port, Socket, newSocket, connect, getFd, close
from nativesockets import setSockOptInt
when defined(posix):
  from posix import TCP_NODELAY, IPPROTO_TCP
else:
  # Temporary workaroud since nims stdlib has no such a constants
  const TCP_NODELAY = 1
  const IPPROTO_TCP = 6
from model.action_type import ActionType
from model.facility import Facility
from model.facility_type import FacilityType
from model.game import Game, CachedFlag
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
  MessageType {.pure.} = enum
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
  WorldHead = object
    case exists: bool
    of true:
      tickIndex: int32
      tickCount: int32
      width: float64
      height: float64
    else: discard
  WorldTail = object
    newVehicles: seq[Vehicle]
    vehicleUpdates: seq[VehicleUpdate]
    #terrainByCellXY: seq[seq[TerrainType]]
    #weatherByCellXY: seq[seq[WeatherType]]
    #facilities: seq[Facility]
  Terrains = seq[seq[TerrainType]]
  Weathers = seq[seq[WeatherType]]
  OptionalLen = int32

when defined(nodeps):
  from streams import writeData, readData, newStringStream
  from endians import swapEndian16, swapEndian32, swapEndian64
  include utils.generated
else:
  from nesm import toSerializable
  toSerializable(ActionType, size: 1)
  toSerializable(TerrainType, size: 1)
  toSerializable(WeatherType, size: 1)
  toSerializable(VehicleType, size: 1)
  toSerializable(CachedFlag, size: 1)
  toSerializable(FacilityType, size: 1)
  toSerializable(Game)
  toSerializable(Move)
  toSerializable(VehicleUpdate)
  toSerializable(Vehicle)
  toSerializable(Facility)
  toSerializable(Player)
  toSerializable(World)
  toSerializable(PlayerContext)
  toSerializable(WorldHead)
  toSerializable(WorldTail)
  toSerializable(Terrains)
  toSerializable(Weathers)
  toSerializable(MessageType)
  toSerializable(Message)
  toSerializable(OptionalLen, size: 1)

type
  RemoteProcessClient* = tuple
    socket: Socket
    stream: SocketStream
    playersCache: Table[int64, Player]
    terrainCache: seq[seq[TerrainType]]
    weatherCache: seq[seq[WeatherType]]
    facilitiesCache: Table[int64, Facility]

proc newRemoteProcessClient*(address: string,
                             port: Natural): RemoteProcessClient =
  result.socket = newSocket()
  result.socket.getFd().setSockOptInt(IPPROTO_TCP, TCP_NODELAY, 1)
  result.socket.connect(address, Port(port), 1000)
  result.stream = newSocketStream(result.socket)
  result.playersCache = initTable[int64, Player](16)
  result.facilitiesCache = initTable[int64, Facility](16)

proc startConversation*(self: RemoteProcessClient, token: string,
                        protoVer: int32): Game =
  let tokenMessage = Message(kind: MessageType.AUTHENTICATION_TOKEN,
                             token: token)
  let protoMessage = Message(kind: MessageType.PROTOCOL_VERSION,
                             version: protoVer)
  tokenMessage.serialize(self.stream)
  protoMessage.serialize(self.stream)
  let teamSize = Message.deserialize(self.stream)
  assert(teamSize.kind == MessageType.TEAM_SIZE)
  let gameContext = Message.deserialize(self.stream)
  assert(gameContext.kind == MessageType.GAME_CONTEXT)
  return gameContext.game

proc readCachedObject[T](stream: Stream, cache: var Table[int64, T]): T =
  result = T.deserialize(stream)
  if result.flag == FromId:
    result = cache[result.sourceId]
  else:
    cache[result.id] = result

proc readCachedObjSeq[T](stream: Stream, cache: var Table[int64, T]): seq[T] =
  let plen = OptionalLen.deserialize(stream)
  if plen < 0:
    result = newSeq[T](len(cache))
    var i = 0
    for v in cache.values():
      result[i] = v
      i += 1
  else:
    result = newSeq[T](plen)
    for i in 0..<plen:
      result[i] = readCachedObject[T](stream, cache)

proc readSeq[T](stream: Stream, cache: seq[T] = nil): seq[T] =
  let oplen = OptionalLen.deserialize(stream)
  if oplen < 0:
    result = cache
  else:
    result = newSeq[T](oplen)
    for i in 0..<oplen:
      result[i] = T.deserialize(stream)

proc getPlayerContext*(self: var RemoteProcessClient): PlayerContext =
  let kind = MessageType.deserialize(self.stream)
  if kind == MessageType.GAME_OVER:
    return PlayerContext(exists: false)
  assert(kind == MessageType.PLAYER_CONTEXT)
  result.exists = CachedFlag.deserialize(self.stream) == Exists
  result.player = readCachedObject(self.stream, self.playersCache)

  let wh = WorldHead.deserialize(self.stream)
  result.world.exists = wh.exists
  if wh.exists:
    result.world.tickIndex = wh.tickIndex
    result.world.tickCount = wh.tickCount
    result.world.width = wh.width
    result.world.height = wh.height
    result.world.players = readCachedObjSeq(self.stream, self.playersCache)
    result.world.newVehicles = readSeq[Vehicle](self.stream)
    result.world.vehicleUpdates = readSeq[VehicleUpdate](self.stream)
    if len(self.terrainCache) == 0:
      self.terrainCache = Terrains.deserialize(self.stream)
    if len(self.weatherCache) == 0:
      self.weatherCache = Weathers.deserialize(self.stream)
    result.world.weatherByCellXY = self.weatherCache
    result.world.terrainByCellXY = self.terrainCache
    result.world.facilities = readCachedObjSeq(self.stream, self.facilitiesCache)

proc doMove*(self: RemoteProcessClient, move: Move) =
  let moveMessage = Message(kind: MessageType.MOVE, move: move)
  moveMessage.serialize(self.stream)

proc close*(self: RemoteProcessClient) =
  self.socket.close()

