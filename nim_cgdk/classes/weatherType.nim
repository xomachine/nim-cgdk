from nesm import serializable

serializable:
  type WeatherType* {.pure, size: 1.} = enum
    CLEAR = 0
    CLOUD = 1
    RAIN = 2
    UNKNOWN = 255
