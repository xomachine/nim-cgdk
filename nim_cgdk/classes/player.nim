from nesm import serializable

serializable:
  type
    PlayerType* = enum
      None = 0,
      Exists = 1,
      FromId = 127
    Player* = object
      case flag*: PlayerType
      of Exists:
        id*: int64
        me*: bool
        strategyCrashed*: bool
        score*: int32
        remainingActionCooldownTicks*: int32
        remaining_nuclear_strike_cooldown_ticks*: int32
        next_nuclear_strike_vehicle_id*: int64
        next_nuclear_strike_tick_index*: int32
        next_nuclear_strike_x*: float64
        next_nuclear_strike_y*: float64
      of FromId:
        sourceId*: int64
      else:
        discard
