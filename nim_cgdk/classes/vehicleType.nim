from nesm import serializable

serializable:
  type VehicleType* = enum
    ARRV = 0
    FIGHTER = 1
    HELICOPTER = 2
    IFV = 3
    TANK = 4
    UNKNOWN = 127
