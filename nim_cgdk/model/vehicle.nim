from strutils import `%`
from vehicle_type import VehicleType 
from vehicle_update import VehicleUpdate 

type Vehicle* = ref object
  id*: int64
  x*: float64
  y*: float64
  radius*: float64
  player_id*: int64
  durability*: int32
  maxDurability*: int32
  maxSpeed*: float64
  visionRange*: float64
  squaredVisionRange*: float64
  groundAttackRange*: float64
  squaredGroundAttachRange*: float64
  aerialAttackRange*: float64
  squaredAerialAttackRange*: float64
  groundDamage*: int32
  aerialDamage*: int32
  groundDefence*: int32
  aerialDefence*: int32
  attackCooldownTicks*: int32
  remainingAttackCooldownTicks*: int32
  thetype*: VehicleType
  aerial*: bool
  selected*: bool
  groups*: seq[int32]

proc update*(self: var Vehicle, newData: VehicleUpdate) =
  if newData.id != self.id:
    raise newException(ValueError, "Vehicle ID mismatch [actual=$1, expected=$2]." %
                       [$newData.id, $self.id])
  self.x = newData.x
  self.y = newData.y
  self.durability = newData.durability
  self.remainingAttackCooldownTicks = newData.remainingAttackCooldownTicks
  self.selected = newData.selected
  self.groups = newData.groups
