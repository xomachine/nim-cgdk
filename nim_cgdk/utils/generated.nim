proc size(obj238006: ActionType): Natural =
  1

proc serialize(obj238007: ActionType; thestream: Stream) =
  thestream.writeData(obj238007.unsafeAddr, 1)

proc serialize(obj238011: ActionType): string =
  let ss238013 = newStringStream()
  serialize(obj238011, ss238013)
  ss238013.data

proc deserialize(a238009: typedesc[ActionType]; thestream: Stream): ActionType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  NONE = 0, CLEAR_AND_SELECT = 1, ADD_TO_SELECTION = 2, DESELECT = 3, ASSIGN = 4, DISMISS = 5,\x0A  DISBAND = 6, MOVE = 7, ROTATE = 8, SCALE = 9, SETUP_VEHICLE_PRODUCTION = 10,\x0A  TACTICAL_NUCLEAR_STRIKE = 11, UNKNOWN = 255")
proc size(obj238038: TerrainType): Natural =
  1

proc serialize(obj238039: TerrainType; thestream: Stream) =
  thestream.writeData(obj238039.unsafeAddr, 1)

proc serialize(obj238043: TerrainType): string =
  let ss238045 = newStringStream()
  serialize(obj238043, ss238045)
  ss238045.data

proc deserialize(a238041: typedesc[TerrainType]; thestream: Stream): TerrainType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
proc size(obj238070: WeatherType): Natural =
  1

proc serialize(obj238071: WeatherType; thestream: Stream) =
  thestream.writeData(obj238071.unsafeAddr, 1)

proc serialize(obj238075: WeatherType): string =
  let ss238077 = newStringStream()
  serialize(obj238075, ss238077)
  ss238077.data

proc deserialize(a238073: typedesc[WeatherType]; thestream: Stream): WeatherType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
proc size(obj238102: VehicleType): Natural =
  1

proc serialize(obj238103: VehicleType; thestream: Stream) =
  thestream.writeData(obj238103.unsafeAddr, 1)

proc serialize(obj238107: VehicleType): string =
  let ss238109 = newStringStream()
  serialize(obj238107, ss238109)
  ss238109.data

proc deserialize(a238105: typedesc[VehicleType]; thestream: Stream): VehicleType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
proc size(obj238134: CachedFlag): Natural =
  1

proc serialize(obj238135: CachedFlag; thestream: Stream) =
  thestream.writeData(obj238135.unsafeAddr, 1)

proc serialize(obj238139: CachedFlag): string =
  let ss238141 = newStringStream()
  serialize(obj238139, ss238141)
  ss238141.data

proc deserialize(a238137: typedesc[CachedFlag]; thestream: Stream): CachedFlag =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
proc size(obj238166: FacilityType): Natural =
  1

proc serialize(obj238167: FacilityType; thestream: Stream) =
  thestream.writeData(obj238167.unsafeAddr, 1)

proc serialize(obj238171: FacilityType): string =
  let ss238173 = newStringStream()
  serialize(obj238171, ss238173)
  ss238173.data

proc deserialize(a238169: typedesc[FacilityType]; thestream: Stream): FacilityType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
proc size(obj238200: Game): Natural =
  result += 1
  case obj238200.exists
  of true:
    result += 8
    result += 4
    result += 8
    result += 8
    result += 1
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 8
    result += 8
    result += 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj238201: Game; thestream: Stream) =
  discard
  var tmp238199 = obj238201.exists
  thestream.writeData(tmp238199.unsafeAddr, 1)
  case obj238201.exists
  of true:
    discard
    thestream.writeData(obj238201.randomSeed.unsafeAddr, 8)
    thestream.writeData(obj238201.tickCount.unsafeAddr, 4)
    thestream.writeData(obj238201.worldWidth.unsafeAddr, 8)
    thestream.writeData(obj238201.worldHeight.unsafeAddr, 8)
    thestream.writeData(obj238201.fogOfWarEnabled.unsafeAddr, 1)
    thestream.writeData(obj238201.victoryScore.unsafeAddr, 4)
    thestream.writeData(obj238201.facilityCaptureScore.unsafeAddr, 4)
    thestream.writeData(obj238201.vehicleEliminationScore.unsafeAddr, 4)
    thestream.writeData(obj238201.actionDetectionInterval.unsafeAddr, 4)
    thestream.writeData(obj238201.baseActionCount.unsafeAddr, 4)
    thestream.writeData(obj238201.additionalActionCountPerControlCenter.unsafeAddr,
                        4)
    thestream.writeData(obj238201.maxUnitGroup.unsafeAddr, 4)
    thestream.writeData(obj238201.terrainWeatherMapColumnCount.unsafeAddr, 4)
    thestream.writeData(obj238201.terrainWeatherMapRowCount.unsafeAddr, 4)
    thestream.writeData(obj238201.plainTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.plainTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.plainTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.swampTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.swampTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.swampTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.forestTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.forestTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.forestTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.clearWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.clearWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.clearWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.cloudWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.cloudWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.cloudWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.rainWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.rainWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.rainWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj238201.vehicleRadius.unsafeAddr, 8)
    thestream.writeData(obj238201.tankDurability.unsafeAddr, 4)
    thestream.writeData(obj238201.tankSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.tankVisionRange.unsafeAddr, 8)
    thestream.writeData(obj238201.tankGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.tankAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.tankGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.tankAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.tankGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.tankAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.tankAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj238201.tankProductionCost.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvDurability.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.ifvVisionRange.unsafeAddr, 8)
    thestream.writeData(obj238201.ifvGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.ifvAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.ifvGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj238201.ifvProductionCost.unsafeAddr, 4)
    thestream.writeData(obj238201.arrvDurability.unsafeAddr, 4)
    thestream.writeData(obj238201.arrvSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.arrvVisionRange.unsafeAddr, 8)
    thestream.writeData(obj238201.arrvGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.arrvAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.arrvProductionCost.unsafeAddr, 4)
    thestream.writeData(obj238201.arrvRepairRange.unsafeAddr, 8)
    thestream.writeData(obj238201.arrvRepairSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.helicopterDurability.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.helicopterVisionRange.unsafeAddr, 8)
    thestream.writeData(obj238201.helicopterGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.helicopterAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.helicopterGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj238201.helicopterProductionCost.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterDurability.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterSpeed.unsafeAddr, 8)
    thestream.writeData(obj238201.fighterVisionRange.unsafeAddr, 8)
    thestream.writeData(obj238201.fighterGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.fighterAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj238201.fighterGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj238201.fighterProductionCost.unsafeAddr, 4)
    thestream.writeData(obj238201.maxFacilityCapturePoint32s.unsafeAddr, 8)
    thestream.writeData(obj238201.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                        8)
    thestream.writeData(obj238201.facilityWidth.unsafeAddr, 8)
    thestream.writeData(obj238201.facilityHeight.unsafeAddr, 8)
    thestream.writeData(obj238201.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                        4)
    thestream.writeData(obj238201.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                        4)
    thestream.writeData(obj238201.max_tactical_nuclear_strike_damage.unsafeAddr,
                        8)
    thestream.writeData(obj238201.tactical_nuclear_strike_radius.unsafeAddr, 8)
    thestream.writeData(obj238201.tactical_nuclear_strike_delay.unsafeAddr, 4)
  else:
    discard

proc serialize(obj238205: Game): string =
  let ss238207 = newStringStream()
  serialize(obj238205, ss238207)
  ss238207.data

proc deserialize(a238203: typedesc[Game]; thestream: Stream): Game =
  discard
  var tmp238199: type(result.exists)
  assert(1 ==
      thestream.readData(tmp238199.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp238199
  case result.exists
  of true:
    discard
    assert(8 ==
        thestream.readData(result.randomSeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tickCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.worldWidth.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.worldHeight.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.fogOfWarEnabled.unsafeAddr, 1),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.victoryScore.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.facilityCaptureScore.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.vehicleEliminationScore.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.actionDetectionInterval.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.baseActionCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.additionalActionCountPerControlCenter.unsafeAddr,
                           4), "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.maxUnitGroup.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.terrainWeatherMapColumnCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.terrainWeatherMapRowCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.plainTerrainVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.plainTerrainStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.plainTerrainSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.swampTerrainVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.swampTerrainStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.swampTerrainSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.forestTerrainVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.forestTerrainStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.forestTerrainSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.clearWeatherVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.clearWeatherStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.clearWeatherSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.cloudWeatherVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.cloudWeatherStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.cloudWeatherSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.rainWeatherVisionFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.rainWeatherStealthFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.rainWeatherSpeedFactor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.vehicleRadius.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.tankSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.tankVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.tankGroundAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.tankAerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankGroundDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankAerialDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankGroundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankAerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tankProductionCost.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.ifvSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.ifvVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.ifvGroundAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.ifvAerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvGroundDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvAerialDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvGroundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvAerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.ifvProductionCost.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.arrvDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.arrvSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.arrvVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.arrvGroundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.arrvAerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.arrvProductionCost.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.arrvRepairRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.arrvRepairSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.helicopterSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.helicopterVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.helicopterGroundAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.helicopterAerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterGroundDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterAerialDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterGroundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterAerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.helicopterProductionCost.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.fighterSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.fighterVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.fighterGroundAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.fighterAerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterGroundDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterAerialDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterGroundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterAerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.fighterProductionCost.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.maxFacilityCapturePoint32s.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                           8), "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.facilityWidth.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.facilityHeight.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                           4), "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                           4), "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.max_tactical_nuclear_strike_damage.unsafeAddr,
                           8), "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.tactical_nuclear_strike_radius.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tactical_nuclear_strike_delay.unsafeAddr, 4),
           "Stream was not provided enough data")
  else:
    discard
proc size(obj239400: Move): Natural =
  result += 1
  case obj239400.exists
  of true:
    result += 1
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 1
    result += 8
    result += 8
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj239401: Move; thestream: Stream) =
  discard
  var tmp239399 = obj239401.exists
  thestream.writeData(tmp239399.unsafeAddr, 1)
  case obj239401.exists
  of true:
    discard
    thestream.writeData(obj239401.action.unsafeAddr, 1)
    thestream.writeData(obj239401.group.unsafeAddr, 4)
    thestream.writeData(obj239401.left.unsafeAddr, 8)
    thestream.writeData(obj239401.top.unsafeAddr, 8)
    thestream.writeData(obj239401.right.unsafeAddr, 8)
    thestream.writeData(obj239401.bottom.unsafeAddr, 8)
    thestream.writeData(obj239401.x.unsafeAddr, 8)
    thestream.writeData(obj239401.y.unsafeAddr, 8)
    thestream.writeData(obj239401.angle.unsafeAddr, 8)
    thestream.writeData(obj239401.factor.unsafeAddr, 8)
    thestream.writeData(obj239401.maxSpeed.unsafeAddr, 8)
    thestream.writeData(obj239401.maxAngularSpeed.unsafeAddr, 8)
    thestream.writeData(obj239401.vehicleType.unsafeAddr, 1)
    thestream.writeData(obj239401.facilityId.unsafeAddr, 8)
    thestream.writeData(obj239401.vehicleId.unsafeAddr, 8)
  else:
    discard

proc serialize(obj239405: Move): string =
  let ss239407 = newStringStream()
  serialize(obj239405, ss239407)
  ss239407.data

proc deserialize(a239403: typedesc[Move]; thestream: Stream): Move =
  discard
  var tmp239399: type(result.exists)
  assert(1 ==
      thestream.readData(tmp239399.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp239399
  case result.exists
  of true:
    discard
    assert(1 ==
        thestream.readData(result.action.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(result.action) ==
        $(ord(result.action)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(result.action) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  NONE = 0, CLEAR_AND_SELECT = 1, ADD_TO_SELECTION = 2, DESELECT = 3, ASSIGN = 4, DISMISS = 5,\x0A  DISBAND = 6, MOVE = 7, ROTATE = 8, SCALE = 9, SETUP_VEHICLE_PRODUCTION = 10,\x0A  TACTICAL_NUCLEAR_STRIKE = 11, UNKNOWN = 255")
    assert(4 ==
        thestream.readData(result.group.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.left.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.top.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.right.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.bottom.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.x.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.y.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.angle.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.factor.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.maxSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.maxAngularSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.vehicleType.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(result.vehicleType) ==
        $(ord(result.vehicleType)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(result.vehicleType) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
    assert(8 ==
        thestream.readData(result.facilityId.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.vehicleId.unsafeAddr, 8),
           "Stream was not provided enough data")
  else:
    discard
proc size(obj239653: VehicleUpdate): Natural =
  result += 1
  case obj239653.exists
  of true:
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 1
    result += 4 + len(obj239653.groups) * 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj239654: VehicleUpdate; thestream: Stream) =
  discard
  var tmp239651 = obj239654.exists
  thestream.writeData(tmp239651.unsafeAddr, 1)
  case obj239654.exists
  of true:
    discard
    thestream.writeData(obj239654.id.unsafeAddr, 8)
    thestream.writeData(obj239654.x.unsafeAddr, 8)
    thestream.writeData(obj239654.y.unsafeAddr, 8)
    thestream.writeData(obj239654.durability.unsafeAddr, 4)
    thestream.writeData(obj239654.remainingAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj239654.selected.unsafeAddr, 1)
    var length239652 = len(obj239654.groups)
    thestream.writeData(length239652.unsafeAddr, 4)
    if len(obj239654.groups) > 0:
      thestream.writeData(obj239654.groups[0].unsafeAddr, len(obj239654.groups) *
          4)
  else:
    discard

proc serialize(obj239658: VehicleUpdate): string =
  let ss239660 = newStringStream()
  serialize(obj239658, ss239660)
  ss239660.data

proc deserialize(a239656: typedesc[VehicleUpdate]; thestream: Stream): VehicleUpdate =
  discard
  var tmp239651: type(result.exists)
  assert(1 ==
      thestream.readData(tmp239651.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp239651
  case result.exists
  of true:
    discard
    assert(8 ==
        thestream.readData(result.id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.x.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.y.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.durability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.remainingAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.selected.unsafeAddr, 1),
           "Stream was not provided enough data")
    var length239652: int32
    assert(4 ==
        thestream.readData(length239652.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.groups = newSeq[int32](length239652)
    if len(result.groups) > 0:
      assert(len(result.groups) * 4 ==
          thestream.readData(result.groups[0].unsafeAddr, len(result.groups) *
          4), "Stream was not provided enough data")
  else:
    discard
proc size(obj239847: Vehicle): Natural =
  result += 1
  case obj239847.exists
  of true:
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 4
    result += 1
    result += 1
    result += 1
    result += 4 + len(obj239847.groups) * 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj239848: Vehicle; thestream: Stream) =
  discard
  var tmp239845 = obj239848.exists
  thestream.writeData(tmp239845.unsafeAddr, 1)
  case obj239848.exists
  of true:
    discard
    thestream.writeData(obj239848.id.unsafeAddr, 8)
    thestream.writeData(obj239848.x.unsafeAddr, 8)
    thestream.writeData(obj239848.y.unsafeAddr, 8)
    thestream.writeData(obj239848.radius.unsafeAddr, 8)
    thestream.writeData(obj239848.player_id.unsafeAddr, 8)
    thestream.writeData(obj239848.durability.unsafeAddr, 4)
    thestream.writeData(obj239848.maxDurability.unsafeAddr, 4)
    thestream.writeData(obj239848.maxSpeed.unsafeAddr, 8)
    thestream.writeData(obj239848.visionRange.unsafeAddr, 8)
    thestream.writeData(obj239848.squaredVisionRange.unsafeAddr, 8)
    thestream.writeData(obj239848.groundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj239848.squaredGroundAttachRange.unsafeAddr, 8)
    thestream.writeData(obj239848.aerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj239848.squaredAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj239848.groundDamage.unsafeAddr, 4)
    thestream.writeData(obj239848.aerialDamage.unsafeAddr, 4)
    thestream.writeData(obj239848.groundDefence.unsafeAddr, 4)
    thestream.writeData(obj239848.aerialDefence.unsafeAddr, 4)
    thestream.writeData(obj239848.attackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj239848.remainingAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj239848.thetype.unsafeAddr, 1)
    thestream.writeData(obj239848.aerial.unsafeAddr, 1)
    thestream.writeData(obj239848.selected.unsafeAddr, 1)
    var length239846 = len(obj239848.groups)
    thestream.writeData(length239846.unsafeAddr, 4)
    if len(obj239848.groups) > 0:
      thestream.writeData(obj239848.groups[0].unsafeAddr, len(obj239848.groups) *
          4)
  else:
    discard

proc serialize(obj239852: Vehicle): string =
  let ss239854 = newStringStream()
  serialize(obj239852, ss239854)
  ss239854.data

proc deserialize(a239850: typedesc[Vehicle]; thestream: Stream): Vehicle =
  discard
  var tmp239845: type(result.exists)
  assert(1 ==
      thestream.readData(tmp239845.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp239845
  case result.exists
  of true:
    discard
    assert(8 ==
        thestream.readData(result.id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.x.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.y.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.radius.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.player_id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.durability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.maxDurability.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.maxSpeed.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.visionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.squaredVisionRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.groundAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.squaredGroundAttachRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.aerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.squaredAerialAttackRange.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.groundDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.aerialDamage.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.groundDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.aerialDefence.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.attackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.remainingAttackCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.thetype.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(result.thetype) ==
        $(ord(result.thetype)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(result.thetype) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
    assert(1 ==
        thestream.readData(result.aerial.unsafeAddr, 1),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.selected.unsafeAddr, 1),
           "Stream was not provided enough data")
    var length239846: int32
    assert(4 ==
        thestream.readData(length239846.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.groups = newSeq[int32](length239846)
    if len(result.groups) > 0:
      assert(len(result.groups) * 4 ==
          thestream.readData(result.groups[0].unsafeAddr, len(result.groups) *
          4), "Stream was not provided enough data")
  else:
    discard
proc size(obj240244: Facility): Natural =
  result += 1
  case obj240244.flag
  of FromId:
    result += 8
    result += 0
  of Exists:
    result += 8
    result += 1
    result += 8
    result += 8
    result += 8
    result += 8
    result += 1
    result += 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj240245: Facility; thestream: Stream) =
  discard
  var tmp240243 = obj240245.flag
  thestream.writeData(tmp240243.unsafeAddr, 1)
  case obj240245.flag
  of FromId:
    discard
    thestream.writeData(obj240245.sourceId.unsafeAddr, 8)
  of Exists:
    discard
    thestream.writeData(obj240245.id.unsafeAddr, 8)
    thestream.writeData(obj240245.theType.unsafeAddr, 1)
    thestream.writeData(obj240245.ownerPlayerId.unsafeAddr, 8)
    thestream.writeData(obj240245.left.unsafeAddr, 8)
    thestream.writeData(obj240245.top.unsafeAddr, 8)
    thestream.writeData(obj240245.capturePoints.unsafeAddr, 8)
    thestream.writeData(obj240245.vehicleType.unsafeAddr, 1)
    thestream.writeData(obj240245.productionProgress.unsafeAddr, 4)
  else:
    discard

proc serialize(obj240249: Facility): string =
  let ss240251 = newStringStream()
  serialize(obj240249, ss240251)
  ss240251.data

proc deserialize(a240247: typedesc[Facility]; thestream: Stream): Facility =
  discard
  var tmp240243: type(result.flag)
  assert(1 ==
      thestream.readData(tmp240243.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp240243) ==
      $(ord(tmp240243)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp240243) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
  result.flag = tmp240243
  case result.flag
  of FromId:
    discard
    assert(8 ==
        thestream.readData(result.sourceId.unsafeAddr, 8),
           "Stream was not provided enough data")
  of Exists:
    discard
    assert(8 ==
        thestream.readData(result.id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.theType.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(result.theType) ==
        $(ord(result.theType)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(result.theType) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
    assert(8 ==
        thestream.readData(result.ownerPlayerId.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.left.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.top.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.capturePoints.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.vehicleType.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(result.vehicleType) ==
        $(ord(result.vehicleType)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(result.vehicleType) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
    assert(4 ==
        thestream.readData(result.productionProgress.unsafeAddr, 4),
           "Stream was not provided enough data")
  else:
    discard
proc size(obj240433: Player): Natural =
  result += 1
  case obj240433.flag
  of Exists:
    result += 8
    result += 1
    result += 1
    result += 4
    result += 4
    result += 4
    result += 8
    result += 4
    result += 8
    result += 8
    result += 0
  of FromId:
    result += 8
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj240434: Player; thestream: Stream) =
  discard
  var tmp240432 = obj240434.flag
  thestream.writeData(tmp240432.unsafeAddr, 1)
  case obj240434.flag
  of Exists:
    discard
    thestream.writeData(obj240434.id.unsafeAddr, 8)
    thestream.writeData(obj240434.me.unsafeAddr, 1)
    thestream.writeData(obj240434.strategyCrashed.unsafeAddr, 1)
    thestream.writeData(obj240434.score.unsafeAddr, 4)
    thestream.writeData(obj240434.remainingActionCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj240434.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                        4)
    thestream.writeData(obj240434.next_nuclear_strike_vehicle_id.unsafeAddr, 8)
    thestream.writeData(obj240434.next_nuclear_strike_tick_index.unsafeAddr, 4)
    thestream.writeData(obj240434.next_nuclear_strike_x.unsafeAddr, 8)
    thestream.writeData(obj240434.next_nuclear_strike_y.unsafeAddr, 8)
  of FromId:
    discard
    thestream.writeData(obj240434.sourceId.unsafeAddr, 8)
  else:
    discard

proc serialize(obj240438: Player): string =
  let ss240440 = newStringStream()
  serialize(obj240438, ss240440)
  ss240440.data

proc deserialize(a240436: typedesc[Player]; thestream: Stream): Player =
  discard
  var tmp240432: type(result.flag)
  assert(1 ==
      thestream.readData(tmp240432.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp240432) ==
      $(ord(tmp240432)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp240432) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
  result.flag = tmp240432
  case result.flag
  of Exists:
    discard
    assert(8 ==
        thestream.readData(result.id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.me.unsafeAddr, 1),
           "Stream was not provided enough data")
    assert(1 ==
        thestream.readData(result.strategyCrashed.unsafeAddr, 1),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.score.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.remainingActionCooldownTicks.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                           4), "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.next_nuclear_strike_vehicle_id.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.next_nuclear_strike_tick_index.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.next_nuclear_strike_x.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.next_nuclear_strike_y.unsafeAddr, 8),
           "Stream was not provided enough data")
  of FromId:
    discard
    assert(8 ==
        thestream.readData(result.sourceId.unsafeAddr, 8),
           "Stream was not provided enough data")
  else:
    discard
proc size(obj240662: World): Natural =
  result += 1
  case obj240662.exists
  of true:
    result += 4
    result += 4
    result += 8
    result += 8
    for index240647 in 0 ..<
        (len(obj240662.players)):
      result += 1
      case obj240662.players[index240647].flag
      of Exists:
        result += 8
        result += 1
        result += 1
        result += 4
        result += 4
        result += 4
        result += 8
        result += 4
        result += 8
        result += 8
        result += 0
      of FromId:
        result += 8
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    for index240649 in 0 ..<
        (len(obj240662.newVehicles)):
      result += 1
      case obj240662.newVehicles[index240649].exists
      of true:
        result += 8
        result += 8
        result += 8
        result += 8
        result += 8
        result += 4
        result += 4
        result += 8
        result += 8
        result += 8
        result += 8
        result += 8
        result += 8
        result += 8
        result += 4
        result += 4
        result += 4
        result += 4
        result += 4
        result += 4
        result += 1
        result += 1
        result += 1
        result +=
            4 +
            len(obj240662.newVehicles[index240649].groups) * 4
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    for index240651 in 0 ..<
        (len(obj240662.vehicleUpdates)):
      result += 1
      case obj240662.vehicleUpdates[index240651].exists
      of true:
        result += 8
        result += 8
        result += 8
        result += 4
        result += 4
        result += 1
        result +=
            4 +
            len(obj240662.vehicleUpdates[index240651].groups) * 4
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    for index240655 in 0 ..<
        (len(obj240662.terrainByCellXY)):
      result +=
          4 +
          len(obj240662.terrainByCellXY[index240655]) * 1
    result += 4
    for index240659 in 0 ..<
        (len(obj240662.weatherByCellXY)):
      result +=
          4 +
          len(obj240662.weatherByCellXY[index240659]) * 1
    result += 4
    for index240661 in 0 ..<
        (len(obj240662.facilities)):
      result += 1
      case obj240662.facilities[index240661].flag
      of FromId:
        result += 8
        result += 0
      of Exists:
        result += 8
        result += 1
        result += 8
        result += 8
        result += 8
        result += 8
        result += 1
        result += 4
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj240663: World; thestream: Stream) =
  discard
  var tmp240645 = obj240663.exists
  thestream.writeData(tmp240645.unsafeAddr, 1)
  case obj240663.exists
  of true:
    discard
    thestream.writeData(obj240663.tickIndex.unsafeAddr, 4)
    thestream.writeData(obj240663.tickCount.unsafeAddr, 4)
    thestream.writeData(obj240663.width.unsafeAddr, 8)
    thestream.writeData(obj240663.height.unsafeAddr, 8)
    var length240646 = len(obj240663.players)
    thestream.writeData(length240646.unsafeAddr, 4)
    for index240647 in 0 ..<
        (len(obj240663.players)):
      discard
      var tmp240432 = obj240663.players[index240647].flag
      thestream.writeData(tmp240432.unsafeAddr, 1)
      case obj240663.players[index240647].flag
      of Exists:
        discard
        thestream.writeData(obj240663.players[index240647].id.unsafeAddr, 8)
        thestream.writeData(obj240663.players[index240647].me.unsafeAddr, 1)
        thestream.writeData(obj240663.players[index240647].strategyCrashed.unsafeAddr,
                            1)
        thestream.writeData(obj240663.players[index240647].score.unsafeAddr, 4)
        thestream.writeData(obj240663.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj240663.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                            4)
        thestream.writeData(obj240663.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                            8)
        thestream.writeData(obj240663.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                            4)
        thestream.writeData(obj240663.players[index240647].next_nuclear_strike_x.unsafeAddr,
                            8)
        thestream.writeData(obj240663.players[index240647].next_nuclear_strike_y.unsafeAddr,
                            8)
      of FromId:
        discard
        thestream.writeData(obj240663.players[index240647].sourceId.unsafeAddr, 8)
      else:
        discard
    var length240648 = len(obj240663.newVehicles)
    thestream.writeData(length240648.unsafeAddr, 4)
    for index240649 in 0 ..<
        (len(obj240663.newVehicles)):
      discard
      var tmp239845 = obj240663.newVehicles[index240649].exists
      thestream.writeData(tmp239845.unsafeAddr, 1)
      case obj240663.newVehicles[index240649].exists
      of true:
        discard
        thestream.writeData(obj240663.newVehicles[index240649].id.unsafeAddr, 8)
        thestream.writeData(obj240663.newVehicles[index240649].x.unsafeAddr, 8)
        thestream.writeData(obj240663.newVehicles[index240649].y.unsafeAddr, 8)
        thestream.writeData(obj240663.newVehicles[index240649].radius.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].player_id.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].durability.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].maxDurability.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].maxSpeed.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].visionRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].groundAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj240663.newVehicles[index240649].groundDamage.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].aerialDamage.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].groundDefence.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].aerialDefence.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj240663.newVehicles[index240649].thetype.unsafeAddr,
                            1)
        thestream.writeData(obj240663.newVehicles[index240649].aerial.unsafeAddr,
                            1)
        thestream.writeData(obj240663.newVehicles[index240649].selected.unsafeAddr,
                            1)
        var length239846 = len(obj240663.newVehicles[index240649].groups)
        thestream.writeData(length239846.unsafeAddr, 4)
        if len(obj240663.newVehicles[index240649].groups) > 0:
          thestream.writeData(obj240663.newVehicles[index240649].groups[0].unsafeAddr, len(
              obj240663.newVehicles[index240649].groups) * 4)
      else:
        discard
    var length240650 = len(obj240663.vehicleUpdates)
    thestream.writeData(length240650.unsafeAddr, 4)
    for index240651 in 0 ..<
        (len(obj240663.vehicleUpdates)):
      discard
      var tmp239651 = obj240663.vehicleUpdates[index240651].exists
      thestream.writeData(tmp239651.unsafeAddr, 1)
      case obj240663.vehicleUpdates[index240651].exists
      of true:
        discard
        thestream.writeData(obj240663.vehicleUpdates[index240651].id.unsafeAddr,
                            8)
        thestream.writeData(obj240663.vehicleUpdates[index240651].x.unsafeAddr, 8)
        thestream.writeData(obj240663.vehicleUpdates[index240651].y.unsafeAddr, 8)
        thestream.writeData(obj240663.vehicleUpdates[index240651].durability.unsafeAddr,
                            4)
        thestream.writeData(obj240663.vehicleUpdates[index240651].remainingAttackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj240663.vehicleUpdates[index240651].selected.unsafeAddr,
                            1)
        var length239652 = len(obj240663.vehicleUpdates[index240651].groups)
        thestream.writeData(length239652.unsafeAddr, 4)
        if len(obj240663.vehicleUpdates[index240651].groups) > 0:
          thestream.writeData(obj240663.vehicleUpdates[index240651].groups[0].unsafeAddr, len(
              obj240663.vehicleUpdates[index240651].groups) *
              4)
      else:
        discard
    var length240652 = len(obj240663.terrainByCellXY)
    thestream.writeData(length240652.unsafeAddr, 4)
    for index240655 in 0 ..<
        (len(obj240663.terrainByCellXY)):
      var length240653 = len(obj240663.terrainByCellXY[index240655])
      thestream.writeData(length240653.unsafeAddr, 4)
      for index240654 in 0 ..<
          (len(obj240663.terrainByCellXY[index240655])):
        thestream.writeData(obj240663.terrainByCellXY[index240655][index240654].unsafeAddr,
                            1)
    var length240656 = len(obj240663.weatherByCellXY)
    thestream.writeData(length240656.unsafeAddr, 4)
    for index240659 in 0 ..<
        (len(obj240663.weatherByCellXY)):
      var length240657 = len(obj240663.weatherByCellXY[index240659])
      thestream.writeData(length240657.unsafeAddr, 4)
      for index240658 in 0 ..<
          (len(obj240663.weatherByCellXY[index240659])):
        thestream.writeData(obj240663.weatherByCellXY[index240659][index240658].unsafeAddr,
                            1)
    var length240660 = len(obj240663.facilities)
    thestream.writeData(length240660.unsafeAddr, 4)
    for index240661 in 0 ..<
        (len(obj240663.facilities)):
      discard
      var tmp240243 = obj240663.facilities[index240661].flag
      thestream.writeData(tmp240243.unsafeAddr, 1)
      case obj240663.facilities[index240661].flag
      of FromId:
        discard
        thestream.writeData(obj240663.facilities[index240661].sourceId.unsafeAddr,
                            8)
      of Exists:
        discard
        thestream.writeData(obj240663.facilities[index240661].id.unsafeAddr, 8)
        thestream.writeData(obj240663.facilities[index240661].theType.unsafeAddr,
                            1)
        thestream.writeData(obj240663.facilities[index240661].ownerPlayerId.unsafeAddr,
                            8)
        thestream.writeData(obj240663.facilities[index240661].left.unsafeAddr, 8)
        thestream.writeData(obj240663.facilities[index240661].top.unsafeAddr, 8)
        thestream.writeData(obj240663.facilities[index240661].capturePoints.unsafeAddr,
                            8)
        thestream.writeData(obj240663.facilities[index240661].vehicleType.unsafeAddr,
                            1)
        thestream.writeData(obj240663.facilities[index240661].productionProgress.unsafeAddr,
                            4)
      else:
        discard
  else:
    discard

proc serialize(obj240667: World): string =
  let ss240669 = newStringStream()
  serialize(obj240667, ss240669)
  ss240669.data

proc deserialize(a240665: typedesc[World]; thestream: Stream): World =
  discard
  var tmp240645: type(result.exists)
  assert(1 ==
      thestream.readData(tmp240645.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp240645
  case result.exists
  of true:
    discard
    assert(4 ==
        thestream.readData(result.tickIndex.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tickCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.width.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.height.unsafeAddr, 8),
           "Stream was not provided enough data")
    var length240646: int32
    assert(4 ==
        thestream.readData(length240646.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.players = newSeq[Player](length240646)
    for index240647 in 0 ..<
        (len(result.players)):
      discard
      var tmp240432: type(result.players[index240647].flag)
      assert(1 ==
          thestream.readData(tmp240432.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp240432) ==
          $(ord(tmp240432)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp240432) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.players[index240647].flag = tmp240432
      case result.players[index240647].flag
      of Exists:
        discard
        assert(8 ==
            thestream.readData(result.players[index240647].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.players[index240647].me.unsafeAddr, 1),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.players[index240647].strategyCrashed.unsafeAddr,
                               1), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index240647].score.unsafeAddr, 4),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index240647].next_nuclear_strike_x.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index240647].next_nuclear_strike_y.unsafeAddr,
                               8), "Stream was not provided enough data")
      of FromId:
        discard
        assert(8 ==
            thestream.readData(result.players[index240647].sourceId.unsafeAddr, 8),
               "Stream was not provided enough data")
      else:
        discard
    var length240648: int32
    assert(4 ==
        thestream.readData(length240648.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.newVehicles = newSeq[Vehicle](length240648)
    for index240649 in 0 ..<
        (len(result.newVehicles)):
      discard
      var tmp239845: type(result.newVehicles[index240649].exists)
      assert(1 ==
          thestream.readData(tmp239845.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.newVehicles[index240649].exists = tmp239845
      case result.newVehicles[index240649].exists
      of true:
        discard
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].x.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].y.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].radius.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].player_id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].durability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].maxDurability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].maxSpeed.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].visionRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].groundAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].groundDamage.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].aerialDamage.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].groundDefence.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].aerialDefence.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.newVehicles[index240649].thetype.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.newVehicles[index240649].thetype) ==
            $(ord(result.newVehicles[index240649].thetype)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.newVehicles[index240649].thetype) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
        assert(1 ==
            thestream.readData(result.newVehicles[index240649].aerial.unsafeAddr,
                               1), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.newVehicles[index240649].selected.unsafeAddr,
                               1), "Stream was not provided enough data")
        var length239846: int32
        assert(4 ==
            thestream.readData(length239846.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.newVehicles[index240649].groups = newSeq[int32](length239846)
        if len(result.newVehicles[index240649].groups) > 0:
          assert(len(result.newVehicles[index240649].groups) *
              4 ==
              thestream.readData(result.newVehicles[index240649].groups[0].unsafeAddr, len(
              result.newVehicles[index240649].groups) * 4),
                 "Stream was not provided enough data")
      else:
        discard
    var length240650: int32
    assert(4 ==
        thestream.readData(length240650.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.vehicleUpdates = newSeq[VehicleUpdate](length240650)
    for index240651 in 0 ..<
        (len(result.vehicleUpdates)):
      discard
      var tmp239651: type(result.vehicleUpdates[index240651].exists)
      assert(1 ==
          thestream.readData(tmp239651.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.vehicleUpdates[index240651].exists = tmp239651
      case result.vehicleUpdates[index240651].exists
      of true:
        discard
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index240651].id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index240651].x.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index240651].y.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.vehicleUpdates[index240651].durability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.vehicleUpdates[index240651].remainingAttackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.vehicleUpdates[index240651].selected.unsafeAddr,
                               1), "Stream was not provided enough data")
        var length239652: int32
        assert(4 ==
            thestream.readData(length239652.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.vehicleUpdates[index240651].groups = newSeq[int32](length239652)
        if len(result.vehicleUpdates[index240651].groups) > 0:
          assert(len(result.vehicleUpdates[index240651].groups) *
              4 ==
              thestream.readData(result.vehicleUpdates[index240651].groups[0].unsafeAddr, len(
              result.vehicleUpdates[index240651].groups) * 4),
                 "Stream was not provided enough data")
      else:
        discard
    var length240652: int32
    assert(4 ==
        thestream.readData(length240652.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.terrainByCellXY = newSeq[seq[TerrainType]](length240652)
    for index240655 in 0 ..<
        (len(result.terrainByCellXY)):
      var length240653: int32
      assert(4 ==
          thestream.readData(length240653.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.terrainByCellXY[index240655] = newSeq[TerrainType](length240653)
      for index240654 in 0 ..<
          (len(result.terrainByCellXY[index240655])):
        assert(1 ==
            thestream.readData(result.terrainByCellXY[index240655][index240654].unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.terrainByCellXY[index240655][index240654]) ==
            $(ord(result.terrainByCellXY[index240655][index240654])) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.terrainByCellXY[index240655][index240654]) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
    var length240656: int32
    assert(4 ==
        thestream.readData(length240656.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.weatherByCellXY = newSeq[seq[WeatherType]](length240656)
    for index240659 in 0 ..<
        (len(result.weatherByCellXY)):
      var length240657: int32
      assert(4 ==
          thestream.readData(length240657.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.weatherByCellXY[index240659] = newSeq[WeatherType](length240657)
      for index240658 in 0 ..<
          (len(result.weatherByCellXY[index240659])):
        assert(1 ==
            thestream.readData(result.weatherByCellXY[index240659][index240658].unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.weatherByCellXY[index240659][index240658]) ==
            $(ord(result.weatherByCellXY[index240659][index240658])) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.weatherByCellXY[index240659][index240658]) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
    var length240660: int32
    assert(4 ==
        thestream.readData(length240660.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.facilities = newSeq[Facility](length240660)
    for index240661 in 0 ..<
        (len(result.facilities)):
      discard
      var tmp240243: type(result.facilities[index240661].flag)
      assert(1 ==
          thestream.readData(tmp240243.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp240243) ==
          $(ord(tmp240243)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp240243) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.facilities[index240661].flag = tmp240243
      case result.facilities[index240661].flag
      of FromId:
        discard
        assert(8 ==
            thestream.readData(result.facilities[index240661].sourceId.unsafeAddr,
                               8), "Stream was not provided enough data")
      of Exists:
        discard
        assert(8 ==
            thestream.readData(result.facilities[index240661].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.facilities[index240661].theType.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.facilities[index240661].theType) ==
            $(ord(result.facilities[index240661].theType)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.facilities[index240661].theType) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
        assert(8 ==
            thestream.readData(result.facilities[index240661].ownerPlayerId.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index240661].left.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index240661].top.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index240661].capturePoints.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.facilities[index240661].vehicleType.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.facilities[index240661].vehicleType) ==
            $(ord(result.facilities[index240661].vehicleType)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.facilities[index240661].vehicleType) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
        assert(4 ==
            thestream.readData(result.facilities[index240661].productionProgress.unsafeAddr,
                               4), "Stream was not provided enough data")
      else:
        discard
  else:
    discard
proc size(obj242279: PlayerContext): Natural =
  result += 1
  case obj242279.exists
  of true:
    result += 1
    case obj242279.player.flag
    of Exists:
      result += 8
      result += 1
      result += 1
      result += 4
      result += 4
      result += 4
      result += 8
      result += 4
      result += 8
      result += 8
      result += 0
    of FromId:
      result += 8
      result += 0
    else:
      result += 0
    result += 0
    result += 1
    case obj242279.world.exists
    of true:
      result += 4
      result += 4
      result += 8
      result += 8
      for index240647 in 0 ..<
          (len(obj242279.world.players)):
        result += 1
        case obj242279.world.players[index240647].flag
        of Exists:
          result += 8
          result += 1
          result += 1
          result += 4
          result += 4
          result += 4
          result += 8
          result += 4
          result += 8
          result += 8
          result += 0
        of FromId:
          result += 8
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      for index240649 in 0 ..<
          (len(obj242279.world.newVehicles)):
        result += 1
        case obj242279.world.newVehicles[index240649].exists
        of true:
          result += 8
          result += 8
          result += 8
          result += 8
          result += 8
          result += 4
          result += 4
          result += 8
          result += 8
          result += 8
          result += 8
          result += 8
          result += 8
          result += 8
          result += 4
          result += 4
          result += 4
          result += 4
          result += 4
          result += 4
          result += 1
          result += 1
          result += 1
          result +=
              4 +
              len(obj242279.world.newVehicles[index240649].groups) * 4
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      for index240651 in 0 ..<
          (len(obj242279.world.vehicleUpdates)):
        result += 1
        case obj242279.world.vehicleUpdates[index240651].exists
        of true:
          result += 8
          result += 8
          result += 8
          result += 4
          result += 4
          result += 1
          result +=
              4 +
              len(obj242279.world.vehicleUpdates[index240651].groups) * 4
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      for index240655 in 0 ..<
          (len(obj242279.world.terrainByCellXY)):
        result +=
            4 +
            len(obj242279.world.terrainByCellXY[index240655]) * 1
      result += 4
      for index240659 in 0 ..<
          (len(obj242279.world.weatherByCellXY)):
        result +=
            4 +
            len(obj242279.world.weatherByCellXY[index240659]) * 1
      result += 4
      for index240661 in 0 ..<
          (len(obj242279.world.facilities)):
        result += 1
        case obj242279.world.facilities[index240661].flag
        of FromId:
          result += 8
          result += 0
        of Exists:
          result += 8
          result += 1
          result += 8
          result += 8
          result += 8
          result += 8
          result += 1
          result += 4
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      result += 0
    else:
      result += 0
    result += 0
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj242280: PlayerContext; thestream: Stream) =
  discard
  var tmp242278 = obj242280.exists
  thestream.writeData(tmp242278.unsafeAddr, 1)
  case obj242280.exists
  of true:
    discard
    discard
    var tmp240432 = obj242280.player.flag
    thestream.writeData(tmp240432.unsafeAddr, 1)
    case obj242280.player.flag
    of Exists:
      discard
      thestream.writeData(obj242280.player.id.unsafeAddr, 8)
      thestream.writeData(obj242280.player.me.unsafeAddr, 1)
      thestream.writeData(obj242280.player.strategyCrashed.unsafeAddr, 1)
      thestream.writeData(obj242280.player.score.unsafeAddr, 4)
      thestream.writeData(obj242280.player.remainingActionCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj242280.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                          4)
      thestream.writeData(obj242280.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                          8)
      thestream.writeData(obj242280.player.next_nuclear_strike_tick_index.unsafeAddr,
                          4)
      thestream.writeData(obj242280.player.next_nuclear_strike_x.unsafeAddr, 8)
      thestream.writeData(obj242280.player.next_nuclear_strike_y.unsafeAddr, 8)
    of FromId:
      discard
      thestream.writeData(obj242280.player.sourceId.unsafeAddr, 8)
    else:
      discard
    discard
    var tmp240645 = obj242280.world.exists
    thestream.writeData(tmp240645.unsafeAddr, 1)
    case obj242280.world.exists
    of true:
      discard
      thestream.writeData(obj242280.world.tickIndex.unsafeAddr, 4)
      thestream.writeData(obj242280.world.tickCount.unsafeAddr, 4)
      thestream.writeData(obj242280.world.width.unsafeAddr, 8)
      thestream.writeData(obj242280.world.height.unsafeAddr, 8)
      var length240646 = len(obj242280.world.players)
      thestream.writeData(length240646.unsafeAddr, 4)
      for index240647 in 0 ..<
          (len(obj242280.world.players)):
        discard
        var tmp240432 = obj242280.world.players[index240647].flag
        thestream.writeData(tmp240432.unsafeAddr, 1)
        case obj242280.world.players[index240647].flag
        of Exists:
          discard
          thestream.writeData(obj242280.world.players[index240647].id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.players[index240647].me.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.players[index240647].strategyCrashed.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.players[index240647].score.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.players[index240647].next_nuclear_strike_x.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.players[index240647].next_nuclear_strike_y.unsafeAddr,
                              8)
        of FromId:
          discard
          thestream.writeData(obj242280.world.players[index240647].sourceId.unsafeAddr,
                              8)
        else:
          discard
      var length240648 = len(obj242280.world.newVehicles)
      thestream.writeData(length240648.unsafeAddr, 4)
      for index240649 in 0 ..<
          (len(obj242280.world.newVehicles)):
        discard
        var tmp239845 = obj242280.world.newVehicles[index240649].exists
        thestream.writeData(tmp239845.unsafeAddr, 1)
        case obj242280.world.newVehicles[index240649].exists
        of true:
          discard
          thestream.writeData(obj242280.world.newVehicles[index240649].id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].x.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].y.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].radius.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].player_id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].durability.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].maxDurability.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].maxSpeed.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].visionRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].groundAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.newVehicles[index240649].groundDamage.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].aerialDamage.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].groundDefence.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].aerialDefence.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.newVehicles[index240649].thetype.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.newVehicles[index240649].aerial.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.newVehicles[index240649].selected.unsafeAddr,
                              1)
          var length239846 = len(obj242280.world.newVehicles[index240649].groups)
          thestream.writeData(length239846.unsafeAddr, 4)
          if len(obj242280.world.newVehicles[index240649].groups) > 0:
            thestream.writeData(obj242280.world.newVehicles[index240649].groups[
                0].unsafeAddr, len(obj242280.world.newVehicles[index240649].groups) *
                4)
        else:
          discard
      var length240650 = len(obj242280.world.vehicleUpdates)
      thestream.writeData(length240650.unsafeAddr, 4)
      for index240651 in 0 ..<
          (len(obj242280.world.vehicleUpdates)):
        discard
        var tmp239651 = obj242280.world.vehicleUpdates[index240651].exists
        thestream.writeData(tmp239651.unsafeAddr, 1)
        case obj242280.world.vehicleUpdates[index240651].exists
        of true:
          discard
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].x.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].y.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].durability.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].remainingAttackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj242280.world.vehicleUpdates[index240651].selected.unsafeAddr,
                              1)
          var length239652 = len(obj242280.world.vehicleUpdates[index240651].groups)
          thestream.writeData(length239652.unsafeAddr, 4)
          if len(obj242280.world.vehicleUpdates[index240651].groups) > 0:
            thestream.writeData(obj242280.world.vehicleUpdates[index240651].groups[
                0].unsafeAddr, len(obj242280.world.vehicleUpdates[index240651].groups) *
                4)
        else:
          discard
      var length240652 = len(obj242280.world.terrainByCellXY)
      thestream.writeData(length240652.unsafeAddr, 4)
      for index240655 in 0 ..<
          (len(obj242280.world.terrainByCellXY)):
        var length240653 = len(obj242280.world.terrainByCellXY[index240655])
        thestream.writeData(length240653.unsafeAddr, 4)
        for index240654 in 0 ..<
            (len(obj242280.world.terrainByCellXY[index240655])):
          thestream.writeData(obj242280.world.terrainByCellXY[index240655][index240654].unsafeAddr,
                              1)
      var length240656 = len(obj242280.world.weatherByCellXY)
      thestream.writeData(length240656.unsafeAddr, 4)
      for index240659 in 0 ..<
          (len(obj242280.world.weatherByCellXY)):
        var length240657 = len(obj242280.world.weatherByCellXY[index240659])
        thestream.writeData(length240657.unsafeAddr, 4)
        for index240658 in 0 ..<
            (len(obj242280.world.weatherByCellXY[index240659])):
          thestream.writeData(obj242280.world.weatherByCellXY[index240659][index240658].unsafeAddr,
                              1)
      var length240660 = len(obj242280.world.facilities)
      thestream.writeData(length240660.unsafeAddr, 4)
      for index240661 in 0 ..<
          (len(obj242280.world.facilities)):
        discard
        var tmp240243 = obj242280.world.facilities[index240661].flag
        thestream.writeData(tmp240243.unsafeAddr, 1)
        case obj242280.world.facilities[index240661].flag
        of FromId:
          discard
          thestream.writeData(obj242280.world.facilities[index240661].sourceId.unsafeAddr,
                              8)
        of Exists:
          discard
          thestream.writeData(obj242280.world.facilities[index240661].id.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.facilities[index240661].theType.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.facilities[index240661].ownerPlayerId.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.facilities[index240661].left.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.facilities[index240661].top.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.facilities[index240661].capturePoints.unsafeAddr,
                              8)
          thestream.writeData(obj242280.world.facilities[index240661].vehicleType.unsafeAddr,
                              1)
          thestream.writeData(obj242280.world.facilities[index240661].productionProgress.unsafeAddr,
                              4)
        else:
          discard
    else:
      discard
  else:
    discard

proc serialize(obj242284: PlayerContext): string =
  let ss242286 = newStringStream()
  serialize(obj242284, ss242286)
  ss242286.data

proc deserialize(a242282: typedesc[PlayerContext]; thestream: Stream): PlayerContext =
  discard
  var tmp242278: type(result.exists)
  assert(1 ==
      thestream.readData(tmp242278.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp242278
  case result.exists
  of true:
    discard
    discard
    var tmp240432: type(result.player.flag)
    assert(1 ==
        thestream.readData(tmp240432.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(tmp240432) ==
        $(ord(tmp240432)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(tmp240432) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  None = 0, Exists = 1, FromId = 127")
    result.player.flag = tmp240432
    case result.player.flag
    of Exists:
      discard
      assert(8 ==
          thestream.readData(result.player.id.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.player.me.unsafeAddr, 1),
             "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.player.strategyCrashed.unsafeAddr, 1),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.player.score.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.player.remainingActionCooldownTicks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.player.next_nuclear_strike_tick_index.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.player.next_nuclear_strike_x.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.player.next_nuclear_strike_y.unsafeAddr, 8),
             "Stream was not provided enough data")
    of FromId:
      discard
      assert(8 ==
          thestream.readData(result.player.sourceId.unsafeAddr, 8),
             "Stream was not provided enough data")
    else:
      discard
    discard
    var tmp240645: type(result.world.exists)
    assert(1 ==
        thestream.readData(tmp240645.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.world.exists = tmp240645
    case result.world.exists
    of true:
      discard
      assert(4 ==
          thestream.readData(result.world.tickIndex.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.world.tickCount.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.world.width.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.world.height.unsafeAddr, 8),
             "Stream was not provided enough data")
      var length240646: int32
      assert(4 ==
          thestream.readData(length240646.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.players = newSeq[Player](length240646)
      for index240647 in 0 ..<
          (len(result.world.players)):
        discard
        var tmp240432: type(result.world.players[index240647].flag)
        assert(1 ==
            thestream.readData(tmp240432.unsafeAddr, 1),
               "Stream was not provided enough data")
        if $(tmp240432) ==
            $(ord(tmp240432)) & " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(tmp240432) & "\x0ACorrect values are:\x0A" &
              "enum\x0A  None = 0, Exists = 1, FromId = 127")
        result.world.players[index240647].flag = tmp240432
        case result.world.players[index240647].flag
        of Exists:
          discard
          assert(8 ==
              thestream.readData(result.world.players[index240647].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.players[index240647].me.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.players[index240647].strategyCrashed.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index240647].score.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index240647].next_nuclear_strike_x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index240647].next_nuclear_strike_y.unsafeAddr,
                                 8), "Stream was not provided enough data")
        of FromId:
          discard
          assert(8 ==
              thestream.readData(result.world.players[index240647].sourceId.unsafeAddr,
                                 8), "Stream was not provided enough data")
        else:
          discard
      var length240648: int32
      assert(4 ==
          thestream.readData(length240648.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.newVehicles = newSeq[Vehicle](length240648)
      for index240649 in 0 ..<
          (len(result.world.newVehicles)):
        discard
        var tmp239845: type(result.world.newVehicles[index240649].exists)
        assert(1 ==
            thestream.readData(tmp239845.unsafeAddr, 1),
               "Stream was not provided enough data")
        result.world.newVehicles[index240649].exists = tmp239845
        case result.world.newVehicles[index240649].exists
        of true:
          discard
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].y.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].radius.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].player_id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].durability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].maxDurability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].maxSpeed.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].visionRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].groundAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].groundDamage.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].aerialDamage.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].groundDefence.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].aerialDefence.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index240649].thetype.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.newVehicles[index240649].thetype) ==
              $(ord(result.world.newVehicles[index240649].thetype)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.newVehicles[index240649].thetype) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index240649].aerial.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index240649].selected.unsafeAddr,
                                 1), "Stream was not provided enough data")
          var length239846: int32
          assert(4 ==
              thestream.readData(length239846.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.world.newVehicles[index240649].groups = newSeq[int32](length239846)
          if len(result.world.newVehicles[index240649].groups) > 0:
            assert(len(result.world.newVehicles[index240649].groups) *
                4 ==
                thestream.readData(result.world.newVehicles[index240649].groups[
                0].unsafeAddr, len(result.world.newVehicles[index240649].groups) *
                4), "Stream was not provided enough data")
        else:
          discard
      var length240650: int32
      assert(4 ==
          thestream.readData(length240650.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.vehicleUpdates = newSeq[VehicleUpdate](length240650)
      for index240651 in 0 ..<
          (len(result.world.vehicleUpdates)):
        discard
        var tmp239651: type(result.world.vehicleUpdates[index240651].exists)
        assert(1 ==
            thestream.readData(tmp239651.unsafeAddr, 1),
               "Stream was not provided enough data")
        result.world.vehicleUpdates[index240651].exists = tmp239651
        case result.world.vehicleUpdates[index240651].exists
        of true:
          discard
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index240651].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index240651].x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index240651].y.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.vehicleUpdates[index240651].durability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.vehicleUpdates[index240651].remainingAttackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.vehicleUpdates[index240651].selected.unsafeAddr,
                                 1), "Stream was not provided enough data")
          var length239652: int32
          assert(4 ==
              thestream.readData(length239652.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.world.vehicleUpdates[index240651].groups = newSeq[int32](length239652)
          if len(result.world.vehicleUpdates[index240651].groups) > 0:
            assert(len(result.world.vehicleUpdates[index240651].groups) *
                4 ==
                thestream.readData(result.world.vehicleUpdates[index240651].groups[
                0].unsafeAddr, len(result.world.vehicleUpdates[index240651].groups) *
                4), "Stream was not provided enough data")
        else:
          discard
      var length240652: int32
      assert(4 ==
          thestream.readData(length240652.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.terrainByCellXY = newSeq[seq[TerrainType]](length240652)
      for index240655 in 0 ..<
          (len(result.world.terrainByCellXY)):
        var length240653: int32
        assert(4 ==
            thestream.readData(length240653.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.world.terrainByCellXY[index240655] = newSeq[TerrainType](length240653)
        for index240654 in 0 ..<
            (len(result.world.terrainByCellXY[index240655])):
          assert(1 ==
              thestream.readData(result.world.terrainByCellXY[index240655][index240654].unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.terrainByCellXY[index240655][index240654]) ==
              $(ord(result.world.terrainByCellXY[index240655][index240654])) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.terrainByCellXY[index240655][index240654]) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
      var length240656: int32
      assert(4 ==
          thestream.readData(length240656.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.weatherByCellXY = newSeq[seq[WeatherType]](length240656)
      for index240659 in 0 ..<
          (len(result.world.weatherByCellXY)):
        var length240657: int32
        assert(4 ==
            thestream.readData(length240657.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.world.weatherByCellXY[index240659] = newSeq[WeatherType](length240657)
        for index240658 in 0 ..<
            (len(result.world.weatherByCellXY[index240659])):
          assert(1 ==
              thestream.readData(result.world.weatherByCellXY[index240659][index240658].unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.weatherByCellXY[index240659][index240658]) ==
              $(ord(result.world.weatherByCellXY[index240659][index240658])) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.weatherByCellXY[index240659][index240658]) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
      var length240660: int32
      assert(4 ==
          thestream.readData(length240660.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.facilities = newSeq[Facility](length240660)
      for index240661 in 0 ..<
          (len(result.world.facilities)):
        discard
        var tmp240243: type(result.world.facilities[index240661].flag)
        assert(1 ==
            thestream.readData(tmp240243.unsafeAddr, 1),
               "Stream was not provided enough data")
        if $(tmp240243) ==
            $(ord(tmp240243)) & " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(tmp240243) & "\x0ACorrect values are:\x0A" &
              "enum\x0A  None = 0, Exists = 1, FromId = 127")
        result.world.facilities[index240661].flag = tmp240243
        case result.world.facilities[index240661].flag
        of FromId:
          discard
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].sourceId.unsafeAddr,
                                 8), "Stream was not provided enough data")
        of Exists:
          discard
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.facilities[index240661].theType.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.facilities[index240661].theType) ==
              $(ord(result.world.facilities[index240661].theType)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.facilities[index240661].theType) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].ownerPlayerId.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].left.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].top.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index240661].capturePoints.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.facilities[index240661].vehicleType.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.facilities[index240661].vehicleType) ==
              $(ord(result.world.facilities[index240661].vehicleType)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.facilities[index240661].vehicleType) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
          assert(4 ==
              thestream.readData(result.world.facilities[index240661].productionProgress.unsafeAddr,
                                 4), "Stream was not provided enough data")
        else:
          discard
    else:
      discard
  else:
    discard
proc size(obj244237: WorldHead): Natural =
  result += 1
  case obj244237.exists
  of true:
    result += 4
    result += 4
    result += 8
    result += 8
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj244238: WorldHead; thestream: Stream) =
  discard
  var tmp244236 = obj244238.exists
  thestream.writeData(tmp244236.unsafeAddr, 1)
  case obj244238.exists
  of true:
    discard
    thestream.writeData(obj244238.tickIndex.unsafeAddr, 4)
    thestream.writeData(obj244238.tickCount.unsafeAddr, 4)
    thestream.writeData(obj244238.width.unsafeAddr, 8)
    thestream.writeData(obj244238.height.unsafeAddr, 8)
  else:
    discard

proc serialize(obj244242: WorldHead): string =
  let ss244244 = newStringStream()
  serialize(obj244242, ss244244)
  ss244244.data

proc deserialize(a244240: typedesc[WorldHead]; thestream: Stream): WorldHead =
  discard
  var tmp244236: type(result.exists)
  assert(1 ==
      thestream.readData(tmp244236.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp244236
  case result.exists
  of true:
    discard
    assert(4 ==
        thestream.readData(result.tickIndex.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(4 ==
        thestream.readData(result.tickCount.unsafeAddr, 4),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.width.unsafeAddr, 8),
           "Stream was not provided enough data")
    assert(8 ==
        thestream.readData(result.height.unsafeAddr, 8),
           "Stream was not provided enough data")
  else:
    discard
proc size(obj244360: WorldTail): Natural =
  for index244357 in 0 ..<
      (len(obj244360.newVehicles)):
    result += 1
    case obj244360.newVehicles[index244357].exists
    of true:
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 1
      result += 1
      result += 1
      result +=
          4 +
          len(obj244360.newVehicles[index244357].groups) * 4
      result += 0
    else:
      result += 0
    result += 0
  result += 4
  for index244359 in 0 ..<
      (len(obj244360.vehicleUpdates)):
    result += 1
    case obj244360.vehicleUpdates[index244359].exists
    of true:
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 1
      result +=
          4 +
          len(obj244360.vehicleUpdates[index244359].groups) * 4
      result += 0
    else:
      result += 0
    result += 0
  result += 4
  result += 0

proc serialize(obj244361: WorldTail; thestream: Stream) =
  discard
  var length244356 = len(obj244361.newVehicles)
  thestream.writeData(length244356.unsafeAddr, 4)
  for index244357 in 0 ..<
      (len(obj244361.newVehicles)):
    discard
    var tmp239845 = obj244361.newVehicles[index244357].exists
    thestream.writeData(tmp239845.unsafeAddr, 1)
    case obj244361.newVehicles[index244357].exists
    of true:
      discard
      thestream.writeData(obj244361.newVehicles[index244357].id.unsafeAddr, 8)
      thestream.writeData(obj244361.newVehicles[index244357].x.unsafeAddr, 8)
      thestream.writeData(obj244361.newVehicles[index244357].y.unsafeAddr, 8)
      thestream.writeData(obj244361.newVehicles[index244357].radius.unsafeAddr, 8)
      thestream.writeData(obj244361.newVehicles[index244357].player_id.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].durability.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].maxDurability.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].maxSpeed.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].visionRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].squaredVisionRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].groundAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].squaredGroundAttachRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].aerialAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].squaredAerialAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj244361.newVehicles[index244357].groundDamage.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].aerialDamage.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].groundDefence.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].aerialDefence.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].attackCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].remainingAttackCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj244361.newVehicles[index244357].thetype.unsafeAddr,
                          1)
      thestream.writeData(obj244361.newVehicles[index244357].aerial.unsafeAddr, 1)
      thestream.writeData(obj244361.newVehicles[index244357].selected.unsafeAddr,
                          1)
      var length239846 = len(obj244361.newVehicles[index244357].groups)
      thestream.writeData(length239846.unsafeAddr, 4)
      if len(obj244361.newVehicles[index244357].groups) > 0:
        thestream.writeData(obj244361.newVehicles[index244357].groups[0].unsafeAddr, len(
            obj244361.newVehicles[index244357].groups) * 4)
    else:
      discard
  var length244358 = len(obj244361.vehicleUpdates)
  thestream.writeData(length244358.unsafeAddr, 4)
  for index244359 in 0 ..<
      (len(obj244361.vehicleUpdates)):
    discard
    var tmp239651 = obj244361.vehicleUpdates[index244359].exists
    thestream.writeData(tmp239651.unsafeAddr, 1)
    case obj244361.vehicleUpdates[index244359].exists
    of true:
      discard
      thestream.writeData(obj244361.vehicleUpdates[index244359].id.unsafeAddr, 8)
      thestream.writeData(obj244361.vehicleUpdates[index244359].x.unsafeAddr, 8)
      thestream.writeData(obj244361.vehicleUpdates[index244359].y.unsafeAddr, 8)
      thestream.writeData(obj244361.vehicleUpdates[index244359].durability.unsafeAddr,
                          4)
      thestream.writeData(obj244361.vehicleUpdates[index244359].remainingAttackCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj244361.vehicleUpdates[index244359].selected.unsafeAddr,
                          1)
      var length239652 = len(obj244361.vehicleUpdates[index244359].groups)
      thestream.writeData(length239652.unsafeAddr, 4)
      if len(obj244361.vehicleUpdates[index244359].groups) > 0:
        thestream.writeData(obj244361.vehicleUpdates[index244359].groups[0].unsafeAddr, len(
            obj244361.vehicleUpdates[index244359].groups) * 4)
    else:
      discard

proc serialize(obj244365: WorldTail): string =
  let ss244367 = newStringStream()
  serialize(obj244365, ss244367)
  ss244367.data

proc deserialize(a244363: typedesc[WorldTail]; thestream: Stream): WorldTail =
  discard
  var length244356: int32
  assert(4 ==
      thestream.readData(length244356.unsafeAddr, 4),
         "Stream was not provided enough data")
  result.newVehicles = newSeq[Vehicle](length244356)
  for index244357 in 0 ..<
      (len(result.newVehicles)):
    discard
    var tmp239845: type(result.newVehicles[index244357].exists)
    assert(1 ==
        thestream.readData(tmp239845.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.newVehicles[index244357].exists = tmp239845
    case result.newVehicles[index244357].exists
    of true:
      discard
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].id.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].x.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].y.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].radius.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].player_id.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].durability.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].maxDurability.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].maxSpeed.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].visionRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].squaredVisionRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].groundAttackRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].squaredGroundAttachRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].aerialAttackRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.newVehicles[index244357].squaredAerialAttackRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].groundDamage.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].aerialDamage.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].groundDefence.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].aerialDefence.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].attackCooldownTicks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.newVehicles[index244357].remainingAttackCooldownTicks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.newVehicles[index244357].thetype.unsafeAddr,
                             1), "Stream was not provided enough data")
      if $(result.newVehicles[index244357].thetype) ==
          $(ord(result.newVehicles[index244357].thetype)) &
          " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result.newVehicles[index244357].thetype) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
      assert(1 ==
          thestream.readData(result.newVehicles[index244357].aerial.unsafeAddr, 1),
             "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.newVehicles[index244357].selected.unsafeAddr,
                             1), "Stream was not provided enough data")
      var length239846: int32
      assert(4 ==
          thestream.readData(length239846.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.newVehicles[index244357].groups = newSeq[int32](length239846)
      if len(result.newVehicles[index244357].groups) > 0:
        assert(len(result.newVehicles[index244357].groups) * 4 ==
            thestream.readData(result.newVehicles[index244357].groups[0].unsafeAddr, len(
            result.newVehicles[index244357].groups) * 4),
               "Stream was not provided enough data")
    else:
      discard
  var length244358: int32
  assert(4 ==
      thestream.readData(length244358.unsafeAddr, 4),
         "Stream was not provided enough data")
  result.vehicleUpdates = newSeq[VehicleUpdate](length244358)
  for index244359 in 0 ..<
      (len(result.vehicleUpdates)):
    discard
    var tmp239651: type(result.vehicleUpdates[index244359].exists)
    assert(1 ==
        thestream.readData(tmp239651.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.vehicleUpdates[index244359].exists = tmp239651
    case result.vehicleUpdates[index244359].exists
    of true:
      discard
      assert(8 ==
          thestream.readData(result.vehicleUpdates[index244359].id.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.vehicleUpdates[index244359].x.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.vehicleUpdates[index244359].y.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.vehicleUpdates[index244359].durability.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.vehicleUpdates[index244359].remainingAttackCooldownTicks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.vehicleUpdates[index244359].selected.unsafeAddr,
                             1), "Stream was not provided enough data")
      var length239652: int32
      assert(4 ==
          thestream.readData(length239652.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.vehicleUpdates[index244359].groups = newSeq[int32](length239652)
      if len(result.vehicleUpdates[index244359].groups) > 0:
        assert(len(result.vehicleUpdates[index244359].groups) *
            4 ==
            thestream.readData(result.vehicleUpdates[index244359].groups[0].unsafeAddr, len(
            result.vehicleUpdates[index244359].groups) * 4),
               "Stream was not provided enough data")
    else:
      discard
proc size(obj245071: Terrains): Natural =
  for index245070 in 0 ..< (len(obj245071)):
    result +=
        4 +
        len(obj245071[index245070]) * 1
  result += 4

proc serialize(obj245072: Terrains; thestream: Stream) =
  var length245067 = len(obj245072)
  thestream.writeData(length245067.unsafeAddr, 4)
  for index245070 in 0 ..< (len(obj245072)):
    var length245068 = len(obj245072[index245070])
    thestream.writeData(length245068.unsafeAddr, 4)
    for index245069 in 0 ..<
        (len(obj245072[index245070])):
      thestream.writeData(obj245072[index245070][index245069].unsafeAddr, 1)

proc serialize(obj245076: Terrains): string =
  let ss245078 = newStringStream()
  serialize(obj245076, ss245078)
  ss245078.data

proc deserialize(a245074: typedesc[Terrains]; thestream: Stream): Terrains =
  var length245067: int32
  assert(4 ==
      thestream.readData(length245067.unsafeAddr, 4),
         "Stream was not provided enough data")
  result = newSeq[seq[TerrainType]](length245067)
  for index245070 in 0 ..< (len(result)):
    var length245068: int32
    assert(4 ==
        thestream.readData(length245068.unsafeAddr, 4),
           "Stream was not provided enough data")
    result[index245070] = newSeq[TerrainType](length245068)
    for index245069 in 0 ..<
        (len(result[index245070])):
      assert(1 ==
          thestream.readData(result[index245070][index245069].unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result[index245070][index245069]) ==
          $(ord(result[index245070][index245069])) &
          " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result[index245070][index245069]) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
proc size(obj245231: Weathers): Natural =
  for index245230 in 0 ..< (len(obj245231)):
    result +=
        4 +
        len(obj245231[index245230]) * 1
  result += 4

proc serialize(obj245232: Weathers; thestream: Stream) =
  var length245227 = len(obj245232)
  thestream.writeData(length245227.unsafeAddr, 4)
  for index245230 in 0 ..< (len(obj245232)):
    var length245228 = len(obj245232[index245230])
    thestream.writeData(length245228.unsafeAddr, 4)
    for index245229 in 0 ..<
        (len(obj245232[index245230])):
      thestream.writeData(obj245232[index245230][index245229].unsafeAddr, 1)

proc serialize(obj245236: Weathers): string =
  let ss245238 = newStringStream()
  serialize(obj245236, ss245238)
  ss245238.data

proc deserialize(a245234: typedesc[Weathers]; thestream: Stream): Weathers =
  var length245227: int32
  assert(4 ==
      thestream.readData(length245227.unsafeAddr, 4),
         "Stream was not provided enough data")
  result = newSeq[seq[WeatherType]](length245227)
  for index245230 in 0 ..< (len(result)):
    var length245228: int32
    assert(4 ==
        thestream.readData(length245228.unsafeAddr, 4),
           "Stream was not provided enough data")
    result[index245230] = newSeq[WeatherType](length245228)
    for index245229 in 0 ..<
        (len(result[index245230])):
      assert(1 ==
          thestream.readData(result[index245230][index245229].unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result[index245230][index245229]) ==
          $(ord(result[index245230][index245229])) &
          " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result[index245230][index245229]) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
proc size(obj245387: MessageType): Natural =
  1

proc serialize(obj245388: MessageType; thestream: Stream) =
  thestream.writeData(obj245388.unsafeAddr, 1)

proc serialize(obj245392: MessageType): string =
  let ss245394 = newStringStream()
  serialize(obj245392, ss245394)
  ss245394.data

proc deserialize(a245390: typedesc[MessageType]; thestream: Stream): MessageType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  UNKNOWN = 0, GAME_OVER = 1, AUTHENTICATION_TOKEN = 2, TEAM_SIZE = 3, PROTOCOL_VERSION = 4,\x0A  GAME_CONTEXT = 5, PLAYER_CONTEXT = 6, MOVE = 7")
proc size(obj245421: Message): Natural =
  result += 1
  case obj245421.kind
  of MessageType.AUTHENTICATION_TOKEN:
    result += 4 + len(obj245421.token) * 1
    result += 0
  of MessageType.PROTOCOL_VERSION:
    result += 4
    result += 0
  of MessageType.TEAM_SIZE:
    result += 4
    result += 0
  of MessageType.GAME_CONTEXT:
    result += 1
    case obj245421.game.exists
    of true:
      result += 8
      result += 4
      result += 8
      result += 8
      result += 1
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 4
      result += 4
      result += 8
      result += 8
      result += 4
      result += 0
    else:
      result += 0
    result += 0
    result += 0
  of MessageType.MOVE:
    result += 1
    case obj245421.move.exists
    of true:
      result += 1
      result += 4
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 8
      result += 1
      result += 8
      result += 8
      result += 0
    else:
      result += 0
    result += 0
    result += 0
  of MessageType.PLAYER_CONTEXT:
    result += 1
    case obj245421.playerContext.exists
    of true:
      result += 1
      case obj245421.playerContext.player.flag
      of Exists:
        result += 8
        result += 1
        result += 1
        result += 4
        result += 4
        result += 4
        result += 8
        result += 4
        result += 8
        result += 8
        result += 0
      of FromId:
        result += 8
        result += 0
      else:
        result += 0
      result += 0
      result += 1
      case obj245421.playerContext.world.exists
      of true:
        result += 4
        result += 4
        result += 8
        result += 8
        for index240647 in 0 ..<
            (len(obj245421.playerContext.world.players)):
          result += 1
          case obj245421.playerContext.world.players[index240647].flag
          of Exists:
            result += 8
            result += 1
            result += 1
            result += 4
            result += 4
            result += 4
            result += 8
            result += 4
            result += 8
            result += 8
            result += 0
          of FromId:
            result += 8
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        for index240649 in 0 ..<
            (len(obj245421.playerContext.world.newVehicles)):
          result += 1
          case obj245421.playerContext.world.newVehicles[index240649].exists
          of true:
            result += 8
            result += 8
            result += 8
            result += 8
            result += 8
            result += 4
            result += 4
            result += 8
            result += 8
            result += 8
            result += 8
            result += 8
            result += 8
            result += 8
            result += 4
            result += 4
            result += 4
            result += 4
            result += 4
            result += 4
            result += 1
            result += 1
            result += 1
            result +=
                4 +
                len(obj245421.playerContext.world.newVehicles[index240649].groups) *
                4
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        for index240651 in 0 ..<
            (len(obj245421.playerContext.world.vehicleUpdates)):
          result += 1
          case obj245421.playerContext.world.vehicleUpdates[index240651].exists
          of true:
            result += 8
            result += 8
            result += 8
            result += 4
            result += 4
            result += 1
            result +=
                4 +
                len(obj245421.playerContext.world.vehicleUpdates[index240651].groups) *
                4
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        for index240655 in 0 ..<
            (len(obj245421.playerContext.world.terrainByCellXY)):
          result +=
              4 +
              len(obj245421.playerContext.world.terrainByCellXY[index240655]) *
              1
        result += 4
        for index240659 in 0 ..<
            (len(obj245421.playerContext.world.weatherByCellXY)):
          result +=
              4 +
              len(obj245421.playerContext.world.weatherByCellXY[index240659]) *
              1
        result += 4
        for index240661 in 0 ..<
            (len(obj245421.playerContext.world.facilities)):
          result += 1
          case obj245421.playerContext.world.facilities[index240661].flag
          of FromId:
            result += 8
            result += 0
          of Exists:
            result += 8
            result += 1
            result += 8
            result += 8
            result += 8
            result += 8
            result += 1
            result += 4
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        result += 0
      else:
        result += 0
      result += 0
      result += 0
    else:
      result += 0
    result += 0
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj245422: Message; thestream: Stream) =
  discard
  var tmp245419 = obj245422.kind
  thestream.writeData(tmp245419.unsafeAddr, 1)
  case obj245422.kind
  of MessageType.AUTHENTICATION_TOKEN:
    discard
    var length245420 = len(obj245422.token)
    thestream.writeData(length245420.unsafeAddr, 4)
    if len(obj245422.token) > 0:
      thestream.writeData(obj245422.token[0].unsafeAddr, len(obj245422.token) *
          1)
  of MessageType.PROTOCOL_VERSION:
    discard
    thestream.writeData(obj245422.version.unsafeAddr, 4)
  of MessageType.TEAM_SIZE:
    discard
    thestream.writeData(obj245422.size.unsafeAddr, 4)
  of MessageType.GAME_CONTEXT:
    discard
    discard
    var tmp238199 = obj245422.game.exists
    thestream.writeData(tmp238199.unsafeAddr, 1)
    case obj245422.game.exists
    of true:
      discard
      thestream.writeData(obj245422.game.randomSeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tickCount.unsafeAddr, 4)
      thestream.writeData(obj245422.game.worldWidth.unsafeAddr, 8)
      thestream.writeData(obj245422.game.worldHeight.unsafeAddr, 8)
      thestream.writeData(obj245422.game.fogOfWarEnabled.unsafeAddr, 1)
      thestream.writeData(obj245422.game.victoryScore.unsafeAddr, 4)
      thestream.writeData(obj245422.game.facilityCaptureScore.unsafeAddr, 4)
      thestream.writeData(obj245422.game.vehicleEliminationScore.unsafeAddr, 4)
      thestream.writeData(obj245422.game.actionDetectionInterval.unsafeAddr, 4)
      thestream.writeData(obj245422.game.baseActionCount.unsafeAddr, 4)
      thestream.writeData(obj245422.game.additionalActionCountPerControlCenter.unsafeAddr,
                          4)
      thestream.writeData(obj245422.game.maxUnitGroup.unsafeAddr, 4)
      thestream.writeData(obj245422.game.terrainWeatherMapColumnCount.unsafeAddr,
                          4)
      thestream.writeData(obj245422.game.terrainWeatherMapRowCount.unsafeAddr, 4)
      thestream.writeData(obj245422.game.plainTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.plainTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.plainTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.swampTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.swampTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.swampTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.forestTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.forestTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.forestTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.clearWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.clearWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.clearWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.cloudWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.cloudWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.cloudWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.rainWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.rainWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.rainWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj245422.game.vehicleRadius.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tankDurability.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tankVisionRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tankGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tankAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.tankGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj245422.game.tankProductionCost.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvDurability.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.ifvVisionRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.ifvGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.ifvAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.ifvGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj245422.game.ifvProductionCost.unsafeAddr, 4)
      thestream.writeData(obj245422.game.arrvDurability.unsafeAddr, 4)
      thestream.writeData(obj245422.game.arrvSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.arrvVisionRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.arrvGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.arrvAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.arrvProductionCost.unsafeAddr, 4)
      thestream.writeData(obj245422.game.arrvRepairRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.arrvRepairSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.helicopterDurability.unsafeAddr, 4)
      thestream.writeData(obj245422.game.helicopterSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.helicopterVisionRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.helicopterGroundAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj245422.game.helicopterAerialAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj245422.game.helicopterGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.helicopterAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.helicopterGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.helicopterAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.helicopterAttackCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj245422.game.helicopterProductionCost.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterDurability.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.game.fighterVisionRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.fighterGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.fighterAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj245422.game.fighterGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj245422.game.fighterProductionCost.unsafeAddr, 4)
      thestream.writeData(obj245422.game.maxFacilityCapturePoint32s.unsafeAddr, 8)
      thestream.writeData(obj245422.game.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                          8)
      thestream.writeData(obj245422.game.facilityWidth.unsafeAddr, 8)
      thestream.writeData(obj245422.game.facilityHeight.unsafeAddr, 8)
      thestream.writeData(obj245422.game.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                          4)
      thestream.writeData(obj245422.game.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                          4)
      thestream.writeData(obj245422.game.max_tactical_nuclear_strike_damage.unsafeAddr,
                          8)
      thestream.writeData(obj245422.game.tactical_nuclear_strike_radius.unsafeAddr,
                          8)
      thestream.writeData(obj245422.game.tactical_nuclear_strike_delay.unsafeAddr,
                          4)
    else:
      discard
  of MessageType.MOVE:
    discard
    discard
    var tmp239399 = obj245422.move.exists
    thestream.writeData(tmp239399.unsafeAddr, 1)
    case obj245422.move.exists
    of true:
      discard
      thestream.writeData(obj245422.move.action.unsafeAddr, 1)
      thestream.writeData(obj245422.move.group.unsafeAddr, 4)
      thestream.writeData(obj245422.move.left.unsafeAddr, 8)
      thestream.writeData(obj245422.move.top.unsafeAddr, 8)
      thestream.writeData(obj245422.move.right.unsafeAddr, 8)
      thestream.writeData(obj245422.move.bottom.unsafeAddr, 8)
      thestream.writeData(obj245422.move.x.unsafeAddr, 8)
      thestream.writeData(obj245422.move.y.unsafeAddr, 8)
      thestream.writeData(obj245422.move.angle.unsafeAddr, 8)
      thestream.writeData(obj245422.move.factor.unsafeAddr, 8)
      thestream.writeData(obj245422.move.maxSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.move.maxAngularSpeed.unsafeAddr, 8)
      thestream.writeData(obj245422.move.vehicleType.unsafeAddr, 1)
      thestream.writeData(obj245422.move.facilityId.unsafeAddr, 8)
      thestream.writeData(obj245422.move.vehicleId.unsafeAddr, 8)
    else:
      discard
  of MessageType.PLAYER_CONTEXT:
    discard
    discard
    var tmp242278 = obj245422.playerContext.exists
    thestream.writeData(tmp242278.unsafeAddr, 1)
    case obj245422.playerContext.exists
    of true:
      discard
      discard
      var tmp240432 = obj245422.playerContext.player.flag
      thestream.writeData(tmp240432.unsafeAddr, 1)
      case obj245422.playerContext.player.flag
      of Exists:
        discard
        thestream.writeData(obj245422.playerContext.player.id.unsafeAddr, 8)
        thestream.writeData(obj245422.playerContext.player.me.unsafeAddr, 1)
        thestream.writeData(obj245422.playerContext.player.strategyCrashed.unsafeAddr,
                            1)
        thestream.writeData(obj245422.playerContext.player.score.unsafeAddr, 4)
        thestream.writeData(obj245422.playerContext.player.remainingActionCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj245422.playerContext.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                            4)
        thestream.writeData(obj245422.playerContext.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                            8)
        thestream.writeData(obj245422.playerContext.player.next_nuclear_strike_tick_index.unsafeAddr,
                            4)
        thestream.writeData(obj245422.playerContext.player.next_nuclear_strike_x.unsafeAddr,
                            8)
        thestream.writeData(obj245422.playerContext.player.next_nuclear_strike_y.unsafeAddr,
                            8)
      of FromId:
        discard
        thestream.writeData(obj245422.playerContext.player.sourceId.unsafeAddr, 8)
      else:
        discard
      discard
      var tmp240645 = obj245422.playerContext.world.exists
      thestream.writeData(tmp240645.unsafeAddr, 1)
      case obj245422.playerContext.world.exists
      of true:
        discard
        thestream.writeData(obj245422.playerContext.world.tickIndex.unsafeAddr, 4)
        thestream.writeData(obj245422.playerContext.world.tickCount.unsafeAddr, 4)
        thestream.writeData(obj245422.playerContext.world.width.unsafeAddr, 8)
        thestream.writeData(obj245422.playerContext.world.height.unsafeAddr, 8)
        var length240646 = len(obj245422.playerContext.world.players)
        thestream.writeData(length240646.unsafeAddr, 4)
        for index240647 in 0 ..<
            (len(obj245422.playerContext.world.players)):
          discard
          var tmp240432 = obj245422.playerContext.world.players[index240647].flag
          thestream.writeData(tmp240432.unsafeAddr, 1)
          case obj245422.playerContext.world.players[index240647].flag
          of Exists:
            discard
            thestream.writeData(obj245422.playerContext.world.players[index240647].id.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.players[index240647].me.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.players[index240647].strategyCrashed.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.players[index240647].score.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.players[index240647].next_nuclear_strike_x.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.players[index240647].next_nuclear_strike_y.unsafeAddr,
                                8)
          of FromId:
            discard
            thestream.writeData(obj245422.playerContext.world.players[index240647].sourceId.unsafeAddr,
                                8)
          else:
            discard
        var length240648 = len(obj245422.playerContext.world.newVehicles)
        thestream.writeData(length240648.unsafeAddr, 4)
        for index240649 in 0 ..<
            (len(obj245422.playerContext.world.newVehicles)):
          discard
          var tmp239845 = obj245422.playerContext.world.newVehicles[index240649].exists
          thestream.writeData(tmp239845.unsafeAddr, 1)
          case obj245422.playerContext.world.newVehicles[index240649].exists
          of true:
            discard
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].id.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].x.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].y.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].radius.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].player_id.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].durability.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].maxDurability.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].maxSpeed.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].visionRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].groundAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].groundDamage.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].aerialDamage.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].groundDefence.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].aerialDefence.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].thetype.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].aerial.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.newVehicles[index240649].selected.unsafeAddr,
                                1)
            var length239846 = len(obj245422.playerContext.world.newVehicles[index240649].groups)
            thestream.writeData(length239846.unsafeAddr, 4)
            if len(obj245422.playerContext.world.newVehicles[index240649].groups) >
                0:
              thestream.writeData(obj245422.playerContext.world.newVehicles[
                  index240649].groups[0].unsafeAddr, len(obj245422.playerContext.world.newVehicles[
                  index240649].groups) * 4)
          else:
            discard
        var length240650 = len(obj245422.playerContext.world.vehicleUpdates)
        thestream.writeData(length240650.unsafeAddr, 4)
        for index240651 in 0 ..<
            (len(obj245422.playerContext.world.vehicleUpdates)):
          discard
          var tmp239651 = obj245422.playerContext.world.vehicleUpdates[index240651].exists
          thestream.writeData(tmp239651.unsafeAddr, 1)
          case obj245422.playerContext.world.vehicleUpdates[index240651].exists
          of true:
            discard
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].id.unsafeAddr, 8)
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].x.unsafeAddr, 8)
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].y.unsafeAddr, 8)
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].durability.unsafeAddr, 4)
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].remainingAttackCooldownTicks.unsafeAddr, 4)
            thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                index240651].selected.unsafeAddr, 1)
            var length239652 = len(obj245422.playerContext.world.vehicleUpdates[
                index240651].groups)
            thestream.writeData(length239652.unsafeAddr, 4)
            if len(obj245422.playerContext.world.vehicleUpdates[index240651].groups) >
                0:
              thestream.writeData(obj245422.playerContext.world.vehicleUpdates[
                  index240651].groups[0].unsafeAddr, len(obj245422.playerContext.world.vehicleUpdates[
                  index240651].groups) * 4)
          else:
            discard
        var length240652 = len(obj245422.playerContext.world.terrainByCellXY)
        thestream.writeData(length240652.unsafeAddr, 4)
        for index240655 in 0 ..<
            (len(obj245422.playerContext.world.terrainByCellXY)):
          var length240653 = len(obj245422.playerContext.world.terrainByCellXY[
              index240655])
          thestream.writeData(length240653.unsafeAddr, 4)
          for index240654 in 0 ..<
              (len(obj245422.playerContext.world.terrainByCellXY[index240655])):
            thestream.writeData(obj245422.playerContext.world.terrainByCellXY[
                index240655][index240654].unsafeAddr, 1)
        var length240656 = len(obj245422.playerContext.world.weatherByCellXY)
        thestream.writeData(length240656.unsafeAddr, 4)
        for index240659 in 0 ..<
            (len(obj245422.playerContext.world.weatherByCellXY)):
          var length240657 = len(obj245422.playerContext.world.weatherByCellXY[
              index240659])
          thestream.writeData(length240657.unsafeAddr, 4)
          for index240658 in 0 ..<
              (len(obj245422.playerContext.world.weatherByCellXY[index240659])):
            thestream.writeData(obj245422.playerContext.world.weatherByCellXY[
                index240659][index240658].unsafeAddr, 1)
        var length240660 = len(obj245422.playerContext.world.facilities)
        thestream.writeData(length240660.unsafeAddr, 4)
        for index240661 in 0 ..<
            (len(obj245422.playerContext.world.facilities)):
          discard
          var tmp240243 = obj245422.playerContext.world.facilities[index240661].flag
          thestream.writeData(tmp240243.unsafeAddr, 1)
          case obj245422.playerContext.world.facilities[index240661].flag
          of FromId:
            discard
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].sourceId.unsafeAddr,
                                8)
          of Exists:
            discard
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].id.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].theType.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].ownerPlayerId.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].left.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].top.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].capturePoints.unsafeAddr,
                                8)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].vehicleType.unsafeAddr,
                                1)
            thestream.writeData(obj245422.playerContext.world.facilities[index240661].productionProgress.unsafeAddr,
                                4)
          else:
            discard
      else:
        discard
    else:
      discard
  else:
    discard

proc serialize(obj245426: Message): string =
  let ss245428 = newStringStream()
  serialize(obj245426, ss245428)
  ss245428.data

proc deserialize(a245424: typedesc[Message]; thestream: Stream): Message =
  discard
  var tmp245419: type(result.kind)
  assert(1 ==
      thestream.readData(tmp245419.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp245419) ==
      $(ord(tmp245419)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp245419) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  UNKNOWN = 0, GAME_OVER = 1, AUTHENTICATION_TOKEN = 2, TEAM_SIZE = 3, PROTOCOL_VERSION = 4,\x0A  GAME_CONTEXT = 5, PLAYER_CONTEXT = 6, MOVE = 7")
  result.kind = tmp245419
  case result.kind
  of MessageType.AUTHENTICATION_TOKEN:
    discard
    var length245420: int32
    assert(4 ==
        thestream.readData(length245420.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.token = newString(length245420)
    if len(result.token) > 0:
      assert(len(result.token) * 1 ==
          thestream.readData(result.token[0].unsafeAddr, len(result.token) *
          1), "Stream was not provided enough data")
  of MessageType.PROTOCOL_VERSION:
    discard
    assert(4 ==
        thestream.readData(result.version.unsafeAddr, 4),
           "Stream was not provided enough data")
  of MessageType.TEAM_SIZE:
    discard
    assert(4 ==
        thestream.readData(result.size.unsafeAddr, 4),
           "Stream was not provided enough data")
  of MessageType.GAME_CONTEXT:
    discard
    discard
    var tmp238199: type(result.game.exists)
    assert(1 ==
        thestream.readData(tmp238199.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.game.exists = tmp238199
    case result.game.exists
    of true:
      discard
      assert(8 ==
          thestream.readData(result.game.randomSeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tickCount.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.worldWidth.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.worldHeight.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.game.fogOfWarEnabled.unsafeAddr, 1),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.victoryScore.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.facilityCaptureScore.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.vehicleEliminationScore.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.actionDetectionInterval.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.baseActionCount.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.additionalActionCountPerControlCenter.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.maxUnitGroup.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.terrainWeatherMapColumnCount.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.terrainWeatherMapRowCount.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.plainTerrainVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.plainTerrainStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.plainTerrainSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.swampTerrainVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.swampTerrainStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.swampTerrainSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.forestTerrainVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.forestTerrainStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.forestTerrainSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.clearWeatherVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.clearWeatherStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.clearWeatherSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.cloudWeatherVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.cloudWeatherStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.cloudWeatherSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.rainWeatherVisionFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.rainWeatherStealthFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.rainWeatherSpeedFactor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.vehicleRadius.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankDurability.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.tankSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.tankVisionRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.tankGroundAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.tankAerialAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankGroundDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankAerialDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankGroundDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankAerialDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankAttackCooldownTicks.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tankProductionCost.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvDurability.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.ifvSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.ifvVisionRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.ifvGroundAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.ifvAerialAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvGroundDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvAerialDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvGroundDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvAerialDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvAttackCooldownTicks.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.ifvProductionCost.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.arrvDurability.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.arrvSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.arrvVisionRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.arrvGroundDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.arrvAerialDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.arrvProductionCost.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.arrvRepairRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.arrvRepairSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterDurability.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.helicopterSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.helicopterVisionRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.helicopterGroundAttackRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.helicopterAerialAttackRange.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterGroundDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterAerialDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterGroundDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterAerialDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterAttackCooldownTicks.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.helicopterProductionCost.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterDurability.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.fighterSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.fighterVisionRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.fighterGroundAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.fighterAerialAttackRange.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterGroundDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterAerialDamage.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterGroundDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterAerialDefence.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterAttackCooldownTicks.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.fighterProductionCost.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.maxFacilityCapturePoint32s.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.facilityWidth.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.facilityHeight.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                             4), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.max_tactical_nuclear_strike_damage.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.game.tactical_nuclear_strike_radius.unsafeAddr,
                             8), "Stream was not provided enough data")
      assert(4 ==
          thestream.readData(result.game.tactical_nuclear_strike_delay.unsafeAddr,
                             4), "Stream was not provided enough data")
    else:
      discard
  of MessageType.MOVE:
    discard
    discard
    var tmp239399: type(result.move.exists)
    assert(1 ==
        thestream.readData(tmp239399.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.move.exists = tmp239399
    case result.move.exists
    of true:
      discard
      assert(1 ==
          thestream.readData(result.move.action.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result.move.action) ==
          $(ord(result.move.action)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result.move.action) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  NONE = 0, CLEAR_AND_SELECT = 1, ADD_TO_SELECTION = 2, DESELECT = 3, ASSIGN = 4, DISMISS = 5,\x0A  DISBAND = 6, MOVE = 7, ROTATE = 8, SCALE = 9, SETUP_VEHICLE_PRODUCTION = 10,\x0A  TACTICAL_NUCLEAR_STRIKE = 11, UNKNOWN = 255")
      assert(4 ==
          thestream.readData(result.move.group.unsafeAddr, 4),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.left.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.top.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.right.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.bottom.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.x.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.y.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.angle.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.factor.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.maxSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.maxAngularSpeed.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(1 ==
          thestream.readData(result.move.vehicleType.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result.move.vehicleType) ==
          $(ord(result.move.vehicleType)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result.move.vehicleType) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
      assert(8 ==
          thestream.readData(result.move.facilityId.unsafeAddr, 8),
             "Stream was not provided enough data")
      assert(8 ==
          thestream.readData(result.move.vehicleId.unsafeAddr, 8),
             "Stream was not provided enough data")
    else:
      discard
  of MessageType.PLAYER_CONTEXT:
    discard
    discard
    var tmp242278: type(result.playerContext.exists)
    assert(1 ==
        thestream.readData(tmp242278.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.playerContext.exists = tmp242278
    case result.playerContext.exists
    of true:
      discard
      discard
      var tmp240432: type(result.playerContext.player.flag)
      assert(1 ==
          thestream.readData(tmp240432.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp240432) ==
          $(ord(tmp240432)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp240432) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.playerContext.player.flag = tmp240432
      case result.playerContext.player.flag
      of Exists:
        discard
        assert(8 ==
            thestream.readData(result.playerContext.player.id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.playerContext.player.me.unsafeAddr, 1),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.playerContext.player.strategyCrashed.unsafeAddr,
                               1), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.playerContext.player.score.unsafeAddr, 4),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.playerContext.player.remainingActionCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.playerContext.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.playerContext.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.playerContext.player.next_nuclear_strike_tick_index.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.playerContext.player.next_nuclear_strike_x.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.playerContext.player.next_nuclear_strike_y.unsafeAddr,
                               8), "Stream was not provided enough data")
      of FromId:
        discard
        assert(8 ==
            thestream.readData(result.playerContext.player.sourceId.unsafeAddr, 8),
               "Stream was not provided enough data")
      else:
        discard
      discard
      var tmp240645: type(result.playerContext.world.exists)
      assert(1 ==
          thestream.readData(tmp240645.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.playerContext.world.exists = tmp240645
      case result.playerContext.world.exists
      of true:
        discard
        assert(4 ==
            thestream.readData(result.playerContext.world.tickIndex.unsafeAddr, 4),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.playerContext.world.tickCount.unsafeAddr, 4),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.playerContext.world.width.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.playerContext.world.height.unsafeAddr, 8),
               "Stream was not provided enough data")
        var length240646: int32
        assert(4 ==
            thestream.readData(length240646.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.players = newSeq[Player](length240646)
        for index240647 in 0 ..<
            (len(result.playerContext.world.players)):
          discard
          var tmp240432: type(result.playerContext.world.players[index240647].flag)
          assert(1 ==
              thestream.readData(tmp240432.unsafeAddr, 1),
                 "Stream was not provided enough data")
          if $(tmp240432) ==
              $(ord(tmp240432)) & " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(tmp240432) & "\x0ACorrect values are:\x0A" &
                "enum\x0A  None = 0, Exists = 1, FromId = 127")
          result.playerContext.world.players[index240647].flag = tmp240432
          case result.playerContext.world.players[index240647].flag
          of Exists:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index240647].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.players[index240647].me.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.players[index240647].strategyCrashed.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index240647].score.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index240647].remainingActionCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index240647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index240647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index240647].next_nuclear_strike_tick_index.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index240647].next_nuclear_strike_x.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index240647].next_nuclear_strike_y.unsafeAddr,
                                   8), "Stream was not provided enough data")
          of FromId:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index240647].sourceId.unsafeAddr,
                                   8), "Stream was not provided enough data")
          else:
            discard
        var length240648: int32
        assert(4 ==
            thestream.readData(length240648.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.newVehicles = newSeq[Vehicle](length240648)
        for index240649 in 0 ..<
            (len(result.playerContext.world.newVehicles)):
          discard
          var tmp239845: type(result.playerContext.world.newVehicles[index240649].exists)
          assert(1 ==
              thestream.readData(tmp239845.unsafeAddr, 1),
                 "Stream was not provided enough data")
          result.playerContext.world.newVehicles[index240649].exists = tmp239845
          case result.playerContext.world.newVehicles[index240649].exists
          of true:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].x.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].y.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].radius.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].player_id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].durability.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].maxDurability.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].maxSpeed.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].visionRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].squaredVisionRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].groundAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].squaredGroundAttachRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].aerialAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].squaredAerialAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].groundDamage.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].aerialDamage.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].groundDefence.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].aerialDefence.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].attackCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].remainingAttackCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].thetype.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.newVehicles[index240649].thetype) ==
                $(ord(result.playerContext.world.newVehicles[index240649].thetype)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.newVehicles[index240649].thetype) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].aerial.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index240649].selected.unsafeAddr,
                                   1), "Stream was not provided enough data")
            var length239846: int32
            assert(4 ==
                thestream.readData(length239846.unsafeAddr, 4),
                   "Stream was not provided enough data")
            result.playerContext.world.newVehicles[index240649].groups = newSeq[
                int32](length239846)
            if len(result.playerContext.world.newVehicles[index240649].groups) >
                0:
              assert(len(result.playerContext.world.newVehicles[index240649].groups) *
                  4 ==
                  thestream.readData(result.playerContext.world.newVehicles[
                  index240649].groups[0].unsafeAddr, len(result.playerContext.world.newVehicles[
                  index240649].groups) * 4), "Stream was not provided enough data")
          else:
            discard
        var length240650: int32
        assert(4 ==
            thestream.readData(length240650.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.vehicleUpdates = newSeq[VehicleUpdate](length240650)
        for index240651 in 0 ..<
            (len(result.playerContext.world.vehicleUpdates)):
          discard
          var tmp239651: type(result.playerContext.world.vehicleUpdates[index240651].exists)
          assert(1 ==
              thestream.readData(tmp239651.unsafeAddr, 1),
                 "Stream was not provided enough data")
          result.playerContext.world.vehicleUpdates[index240651].exists = tmp239651
          case result.playerContext.world.vehicleUpdates[index240651].exists
          of true:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].id.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].x.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].y.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].durability.unsafeAddr, 4),
                   "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].remainingAttackCooldownTicks.unsafeAddr, 4),
                   "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index240651].selected.unsafeAddr, 1),
                   "Stream was not provided enough data")
            var length239652: int32
            assert(4 ==
                thestream.readData(length239652.unsafeAddr, 4),
                   "Stream was not provided enough data")
            result.playerContext.world.vehicleUpdates[index240651].groups = newSeq[
                int32](length239652)
            if len(result.playerContext.world.vehicleUpdates[index240651].groups) >
                0:
              assert(len(result.playerContext.world.vehicleUpdates[index240651].groups) *
                  4 ==
                  thestream.readData(result.playerContext.world.vehicleUpdates[
                  index240651].groups[0].unsafeAddr, len(result.playerContext.world.vehicleUpdates[
                  index240651].groups) * 4), "Stream was not provided enough data")
          else:
            discard
        var length240652: int32
        assert(4 ==
            thestream.readData(length240652.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.terrainByCellXY = newSeq[seq[TerrainType]](
            length240652)
        for index240655 in 0 ..<
            (len(result.playerContext.world.terrainByCellXY)):
          var length240653: int32
          assert(4 ==
              thestream.readData(length240653.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.playerContext.world.terrainByCellXY[index240655] = newSeq[
              TerrainType](length240653)
          for index240654 in 0 ..<
              (len(result.playerContext.world.terrainByCellXY[index240655])):
            assert(1 ==
                thestream.readData(result.playerContext.world.terrainByCellXY[
                index240655][index240654].unsafeAddr, 1),
                   "Stream was not provided enough data")
            if $(result.playerContext.world.terrainByCellXY[index240655][index240654]) ==
                $(ord(result.playerContext.world.terrainByCellXY[index240655][
                index240654])) & " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.terrainByCellXY[index240655][
                  index240654]) & "\x0ACorrect values are:\x0A" &
                  "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
        var length240656: int32
        assert(4 ==
            thestream.readData(length240656.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.weatherByCellXY = newSeq[seq[WeatherType]](
            length240656)
        for index240659 in 0 ..<
            (len(result.playerContext.world.weatherByCellXY)):
          var length240657: int32
          assert(4 ==
              thestream.readData(length240657.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.playerContext.world.weatherByCellXY[index240659] = newSeq[
              WeatherType](length240657)
          for index240658 in 0 ..<
              (len(result.playerContext.world.weatherByCellXY[index240659])):
            assert(1 ==
                thestream.readData(result.playerContext.world.weatherByCellXY[
                index240659][index240658].unsafeAddr, 1),
                   "Stream was not provided enough data")
            if $(result.playerContext.world.weatherByCellXY[index240659][index240658]) ==
                $(ord(result.playerContext.world.weatherByCellXY[index240659][
                index240658])) & " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.weatherByCellXY[index240659][
                  index240658]) & "\x0ACorrect values are:\x0A" &
                  "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
        var length240660: int32
        assert(4 ==
            thestream.readData(length240660.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.facilities = newSeq[Facility](length240660)
        for index240661 in 0 ..<
            (len(result.playerContext.world.facilities)):
          discard
          var tmp240243: type(result.playerContext.world.facilities[index240661].flag)
          assert(1 ==
              thestream.readData(tmp240243.unsafeAddr, 1),
                 "Stream was not provided enough data")
          if $(tmp240243) ==
              $(ord(tmp240243)) & " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(tmp240243) & "\x0ACorrect values are:\x0A" &
                "enum\x0A  None = 0, Exists = 1, FromId = 127")
          result.playerContext.world.facilities[index240661].flag = tmp240243
          case result.playerContext.world.facilities[index240661].flag
          of FromId:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].sourceId.unsafeAddr,
                                   8), "Stream was not provided enough data")
          of Exists:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.facilities[index240661].theType.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.facilities[index240661].theType) ==
                $(ord(result.playerContext.world.facilities[index240661].theType)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.facilities[index240661].theType) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].ownerPlayerId.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].left.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].top.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index240661].capturePoints.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.facilities[index240661].vehicleType.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.facilities[index240661].vehicleType) ==
                $(ord(result.playerContext.world.facilities[index240661].vehicleType)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.facilities[index240661].vehicleType) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
            assert(4 ==
                thestream.readData(result.playerContext.world.facilities[index240661].productionProgress.unsafeAddr,
                                   4), "Stream was not provided enough data")
          else:
            discard
      else:
        discard
    else:
      discard
  else:
    discard
proc size(obj249154: OptionalLen): Natural =
  4

proc serialize(obj249155: OptionalLen; thestream: Stream) =
  thestream.writeData(obj249155.unsafeAddr, 4)

proc serialize(obj249159: OptionalLen): string =
  let ss249161 = newStringStream()
  serialize(obj249159, ss249161)
  ss249161.data

proc deserialize(a249157: typedesc[OptionalLen]; thestream: Stream): OptionalLen =
  assert(4 ==
      thestream.readData(result.unsafeAddr, 4),
         "Stream was not provided enough data")
