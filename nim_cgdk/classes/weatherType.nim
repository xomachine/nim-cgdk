from nesm import serializable

serializable:
  type WeatherType* = enum
    CLEAR = 0
    CLOUD = 1
    RAIN = 2
    UNKNOWN = 127
