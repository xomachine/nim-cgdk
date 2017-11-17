from math import hypot
from vehicle import Vehicle

type
  UnitConcept = concept c
    c.id is int64
    c.x is float64
    c.y is float64
  GenericUnit = UnitConcept | Vehicle

type Unit* = object
  id*: int64
  x*: float64
  y*: float64

proc getDistanceTo*(self: GenericUnit, x, y: BiggestFloat): BiggestFloat =
  hypot(x - self.x, y - self.y)

proc getDistanceToUnit*(self: GenericUnit, target: GenericUnit): BiggestFloat =
  self.getDistanceTo(target.x, target.y)

proc getSquaredDistanceTo*(self: GenericUnit, x, y: BiggestFloat): BiggestFloat =
  let x_dist = x - self.x
  let y_dist = y - self.y
  x_dist * x_dist + y_dist * y_dist
