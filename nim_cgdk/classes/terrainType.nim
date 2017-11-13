from nesm import serializable

serializable:
  type TerrainType* {.pure, size: 1.} = enum
    PLAIN = 0
    SWAMP = 1
    FOREST = 2
    UNKNOWN = 255
