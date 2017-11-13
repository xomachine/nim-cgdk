from nesm import serializable

serializable:
  type ActionType* {.pure, size: 1.} = enum
    NONE = 0
    CLEAR_AND_SELECT = 1
    ADD_TO_SELECTION = 2
    DESELECT = 3
    ASSIGN = 4
    DISMISS = 5
    DISBAND = 6
    MOVE = 7
    ROTATE = 8
    SCALE = 9
    SETUP_VEHICLE_PRODUCTION = 10
    TACTICAL_NUCLEAR_STRIKE = 11
    UNKNOWN = 255
