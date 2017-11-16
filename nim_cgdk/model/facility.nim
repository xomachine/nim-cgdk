from game import CachedFlag
from facility_type import FacilityType
from vehicle_type import VehicleType

type Facility* = object
  case flag*: CachedFlag
  of FromId:
    sourceId*: int64
  of Exists:
    id*: int64
    theType*: FacilityType
    ownerPlayerId*: int64
    left*: float64
    top*: float64
    capturePoints*: float64
    vehicleType*: VehicleType
    productionProgress*: int32
  else: discard
