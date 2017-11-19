from vehicle_type import VehicleType
from action_type import ActionType

type Move* = ref object
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
