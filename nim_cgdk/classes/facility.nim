from nesm import serializable
import facilityType
import vehicleType

serializable:
  type Facility* = object
    case exists*: bool
    of true:
      id*: int64
      theType*: FacilityType
      ownerPlayerId*: int64
      left*: float64
      top*: float64
      capturePoints*: float64
      vehicleType*: VehicleType
      productionProgress*: int32
    else: discard
