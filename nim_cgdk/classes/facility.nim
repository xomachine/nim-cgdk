from nesm import serializable
from game import CachedFlag
import facilityType
import vehicleType

serializable:
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
