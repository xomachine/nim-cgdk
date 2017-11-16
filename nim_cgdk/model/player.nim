from game import CachedFlag

type
  Player* = object
    case flag*: CachedFlag
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
