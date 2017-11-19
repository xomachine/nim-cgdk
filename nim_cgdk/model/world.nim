from player import Player
from vehicle import Vehicle
from vehicle_update import VehicleUpdate
from terrain_type import TerrainType
from weather_type import WeatherType
from facility import Facility


type World* = ref object
  tickIndex*: int32
  tickCount*: int32
  width*: float64
  height*: float64
  players*: seq[Player]
  newVehicles*: seq[Vehicle]
  vehicleUpdates*: seq[VehicleUpdate]
  terrainByCellXY*: seq[seq[TerrainType]]
  weatherByCellXY*: seq[seq[WeatherType]]
  facilities*: seq[Facility]

proc getMyPlayer*(self: World): Player =
  for player in self.players:
    if player.me:
      return player

proc getOpponentPlayer*(self: World): Player =
  for player in self.players:
    if not player.me:
      return player
