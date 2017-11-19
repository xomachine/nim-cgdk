type VehicleUpdate* = ref object
  id*: int64
  x*: float64
  y*: float64
  durability*: int32
  remainingAttackCooldownTicks*: int32
  selected*: bool
  groups*: seq[int32]
