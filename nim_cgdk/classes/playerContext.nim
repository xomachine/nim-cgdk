from nesm import serializable
import player
import vehicle
import vehicleUpdate
import facility
import weatherType
import terrainType
import world

serializable:
  type PlayerContext* = object
    case exists*: bool
    of true:
      player*: Player
      world*: World
    else: discard
