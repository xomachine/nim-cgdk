from player import Player
from world import World

type PlayerContext* = object
  case exists*: bool
  of true:
    player*: Player
    world*: World
  else: discard
