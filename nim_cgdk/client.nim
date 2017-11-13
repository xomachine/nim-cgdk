from streams import Stream
from tables import Table, `[]`, `[]=`, initTable, len, values
from utils.socketstream import newSocketStream, SocketStream
from net import Port, Socket, newSocket, connect, getFd, close
from nativesockets import setSockOptInt
from posix import TCP_NODELAY, IPPROTO_TCP
from nesm import toSerializable, serializable
from model import ActionType, Facility, FacilityType, Game, Move, Player,
                  PlayerContext, TerrainType, Vehicle, VehicleType,
                  VehicleUpdate, WeatherType, World, PlayerType
from model import serialize, deserialize
when defined(errortrace):
  include check
else:
  serializable:
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



type
  Client* = tuple
    socket: Socket
    stream: SocketStream
    previousPlayers: Table[int64, Player]
    terrainCache: seq[seq[TerrainType]]
    weatherCache: seq[seq[WeatherType]]
    facilitiesCache: seq[Facility]

proc newClient*(address: string, port: Natural): Client =
  result.socket = newSocket()
  result.socket.getFd().setSockOptInt(IPPROTO_TCP, TCP_NODELAY, 1)
  result.socket.connect(address, Port(port), 1000)
  result.stream = newSocketStream(result.socket)
  result.previousPlayers = initTable[int64, Player](16)

proc startConversation*(self: Client, token: string,
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

proc deserializePlayer(self: var Client): Player =
  result = Player.deserialize(self.stream)

  if result.flag == FromId:
    result = self.previousPlayers[result.sourceId]
  else:
    self.previousPlayers[result.id] = result

proc readTheSeq[T](stream: Stream, cache: seq[T] = nil): seq[T] =
  let oplen = OptionalLen.deserialize(stream)
  if oplen < 0:
    result = cache
  else:
    result = newSeq[T](oplen)
    for i in 0..<oplen:
      result[i] = T.deserialize(stream)

proc getPlayerContext*(self: var Client): PlayerContext =
  let kind = MessageType.deserialize(self.stream)
  if kind == MessageType.GAME_OVER:
    return PlayerContext(exists: false)
  assert(kind == MessageType.PLAYER_CONTEXT)
  result.exists = PlayerType.deserialize(self.stream) == Exists
  result.player = self.deserializePlayer()
  let wh = WorldHead.deserialize(self.stream)
  result.world.exists = wh.exists
  if wh.exists:
    result.world.tickIndex = wh.tickIndex
    result.world.tickCount = wh.tickCount
    result.world.width = wh.width
    result.world.height = wh.height
    let plen = OptionalLen.deserialize(self.stream)
    if plen < 0:
      result.world.players = newSeq[Player](len(self.previousPlayers))
      var i = 0
      for v in self.previousPlayers.values():
        result.world.players[i] = v
        i += 1
    else:
      result.world.players = newSeq[Player](plen)
      for i in 0..<plen:
        result.world.players[i] = self.deserializePlayer()
    result.world.newVehicles = readTheSeq[Vehicle](self.stream)
    result.world.vehicleUpdates = readTheSeq[VehicleUpdate](self.stream)
    if len(self.terrainCache) == 0:
      self.terrainCache = Terrains.deserialize(self.stream)
    if len(self.weatherCache) == 0:
      self.weatherCache = Weathers.deserialize(self.stream)
    result.world.weatherByCellXY = self.weatherCache
    result.world.terrainByCellXY = self.terrainCache
    self.facilitiesCache = readTheSeq[Facility](self.stream, self.facilitiesCache)
    result.world.facilities = self.facilitiesCache

proc doMove*(self: Client, move: Move) =
  let moveMessage = Message(kind: MessageType.MOVE, move: move)
  moveMessage.serialize(self.stream)

proc close*(self: Client) =
  self.socket.close()

