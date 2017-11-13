from client import Client, newClient, startConversation, getPlayerContext,
                   doMove, close
from os import paramCount, paramStr
from strutils import parseInt
from model import Move, PlayerType, ActionType, VehicleType
from mystrategy import move

var rpClient: Client
var token: string

(rpClient, token) =
  if paramCount() == 4:
    (newClient(paramStr(1), parseInt(paramStr(2))), paramStr(3))
  else:
    (newClient("127.0.0.1", 31001), "0000000000000000")

try:
  let game = rpClient.startConversation(token, 3)
  while true:
    let context = rpClient.getPlayerContext()
    if not context.exists:
      break
    let player = context.player
    if player.flag == None:
      break
    var themove = Move(exists: true, action: ActionType.NONE, group:0, left:0,
                       top: 0, right: 0, bottom: 0, x: 0, y: 0, angle: 0,
                       factor: 0, maxSpeed: 0, maxAngularSpeed: 0,
                       vehicleType: VehicleType.UNKNOWN, facilityId: -1)
    move(player, context.world, game, themove)
    rpClient.doMove(themove)
finally:
  rpClient.close()

