from nesm import serializable

serializable:
  type FacilityType* = enum
    CONTROL_CENTER = 0
    VEHICLE_FACTORY = 1
    UNKNOWN = 127
