from nesm import serializable

serializable:
  type TerrainType* = enum
    PLAIN = 0
    SWAMP = 1
    FOREST = 2
    UNKNOWN = 127
