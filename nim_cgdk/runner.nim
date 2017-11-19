from remote_process_client import RemoteProcessClient, newRemoteProcessClient,
                                  startConversation, getPlayerContext, doMove,
                                  close
from os import paramCount, paramStr
from strutils import parseInt
from model.move import Move
from model.action_type import ActionType
from model.vehicle_type import VehicleType
from my_strategy import move, MyStrategy, initMyStrategy

var rpClient: RemoteProcessClient
var token: string

(rpClient, token) =
  if paramCount() == 3: # $0 is not counted by paramCount
    (newRemoteProcessClient(paramStr(1), parseInt(paramStr(2))), paramStr(3))
  else:
    (newRemoteProcessClient("127.0.0.1", 31001), "0000000000000000")

try:
  let game = rpClient.startConversation(token, 3)
  var strategy = initMyStrategy()
  while true:
    let context = rpClient.getPlayerContext()
    if context.isNil:
      break
    let player = context.player
    if player.isNil:
      break
    var themove = Move(action: ActionType.NONE, group:0, left:0,
                       top: 0, right: 0, bottom: 0, x: 0, y: 0, angle: 0,
                       factor: 0, maxSpeed: 0, maxAngularSpeed: 0,
                       vehicleType: VehicleType.UNKNOWN, facilityId: -1,
                       vehicleId: -1)
    move(strategy, player, context.world, game, themove)
    rpClient.doMove(themove)
finally:
  rpClient.close()

