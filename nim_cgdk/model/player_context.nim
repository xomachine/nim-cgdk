from player import Player
from world import World

type PlayerContext* = ref object
  player*: Player
  world*: World
