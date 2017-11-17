from model.action_type import ActionType
from model.player import Player
from model.world import World
from model.move import Move
from model.game import Game

type MyStrategy* = object
  # put your custom fields here

proc initMyStrategy*(): MyStrategy =
  # put your initialization code here
  discard

proc move*(self: var MyStrategy, player: Player, world: World, game: Game,
           move: var Move) =
  if world.tick_index == 0:
    move.action = ActionType.CLEAR_AND_SELECT
    move.right = world.width
    move.bottom = world.height
  elif world.tickIndex == 1:
    move.action = ActionType.MOVE
    move.x = world.width/2
    move.y = world.height/2
