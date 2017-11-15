from vehicleType import VehicleType
from actionType import ActionType

type Move* = object
  case exists*: bool
  of true:
    action*: ActionType
    group*: int32
    left*: float64
    top*: float64
    right*: float64
    bottom*: float64
    x*: float64
    y*: float64
    angle*: float64
    factor*: float64
    maxSpeed*: float64
    maxAngularSpeed*: float64
    vehicleType*: VehicleType
    facilityId*: int64
    vehicleId*: int64
  else: discard
