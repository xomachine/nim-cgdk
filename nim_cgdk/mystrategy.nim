from model import ActionType, Player, World, Move, Game

# Dont panic! MyStrategy object was removed as redundant. Just use global
# variables if you want. They are local to module until they will be exported.

proc move*(player: Player, world: World, game: Game, move: var Move) =
  if world.tick_index == 0:
    move.action = ActionType.CLEAR_AND_SELECT
    move.right = world.width
    move.bottom = world.height
  elif world.tick_index == 1:
    move.action = ActionType.MOVE
    move.x = world.width/2
    move.y = world.height/2
