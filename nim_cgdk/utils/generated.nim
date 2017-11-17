proc size(obj235006: ActionType): Natural =
  1

proc serialize(obj235007: ActionType; thestream: Stream) =
  thestream.writeData(obj235007.unsafeAddr, 1)

proc serialize(obj235011: ActionType): string =
  let ss235013 = newStringStream()
  serialize(obj235011, ss235013)
  ss235013.data

proc deserialize(a235009: typedesc[ActionType]; thestream: Stream): ActionType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  NONE = 0, CLEAR_AND_SELECT = 1, ADD_TO_SELECTION = 2, DESELECT = 3, ASSIGN = 4, DISMISS = 5,\x0A  DISBAND = 6, MOVE = 7, ROTATE = 8, SCALE = 9, SETUP_VEHICLE_PRODUCTION = 10,\x0A  TACTICAL_NUCLEAR_STRIKE = 11, UNKNOWN = 255")
proc size(obj235038: TerrainType): Natural =
  1

proc serialize(obj235039: TerrainType; thestream: Stream) =
  thestream.writeData(obj235039.unsafeAddr, 1)

proc serialize(obj235043: TerrainType): string =
  let ss235045 = newStringStream()
  serialize(obj235043, ss235045)
  ss235045.data

proc deserialize(a235041: typedesc[TerrainType]; thestream: Stream): TerrainType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
proc size(obj235070: WeatherType): Natural =
  1

proc serialize(obj235071: WeatherType; thestream: Stream) =
  thestream.writeData(obj235071.unsafeAddr, 1)

proc serialize(obj235075: WeatherType): string =
  let ss235077 = newStringStream()
  serialize(obj235075, ss235077)
  ss235077.data

proc deserialize(a235073: typedesc[WeatherType]; thestream: Stream): WeatherType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
proc size(obj235102: VehicleType): Natural =
  1

proc serialize(obj235103: VehicleType; thestream: Stream) =
  thestream.writeData(obj235103.unsafeAddr, 1)

proc serialize(obj235107: VehicleType): string =
  let ss235109 = newStringStream()
  serialize(obj235107, ss235109)
  ss235109.data

proc deserialize(a235105: typedesc[VehicleType]; thestream: Stream): VehicleType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
proc size(obj235134: CachedFlag): Natural =
  1

proc serialize(obj235135: CachedFlag; thestream: Stream) =
  thestream.writeData(obj235135.unsafeAddr, 1)

proc serialize(obj235139: CachedFlag): string =
  let ss235141 = newStringStream()
  serialize(obj235139, ss235141)
  ss235141.data

proc deserialize(a235137: typedesc[CachedFlag]; thestream: Stream): CachedFlag =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
proc size(obj235166: FacilityType): Natural =
  1

proc serialize(obj235167: FacilityType; thestream: Stream) =
  thestream.writeData(obj235167.unsafeAddr, 1)

proc serialize(obj235171: FacilityType): string =
  let ss235173 = newStringStream()
  serialize(obj235171, ss235173)
  ss235173.data

proc deserialize(a235169: typedesc[FacilityType]; thestream: Stream): FacilityType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
proc size(obj235200: Game): Natural =
  result += 1
  case obj235200.exists
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

proc serialize(obj235201: Game; thestream: Stream) =
  discard
  var tmp235199 = obj235201.exists
  thestream.writeData(tmp235199.unsafeAddr, 1)
  case obj235201.exists
  of true:
    discard
    thestream.writeData(obj235201.randomSeed.unsafeAddr, 8)
    thestream.writeData(obj235201.tickCount.unsafeAddr, 4)
    thestream.writeData(obj235201.worldWidth.unsafeAddr, 8)
    thestream.writeData(obj235201.worldHeight.unsafeAddr, 8)
    thestream.writeData(obj235201.fogOfWarEnabled.unsafeAddr, 1)
    thestream.writeData(obj235201.victoryScore.unsafeAddr, 4)
    thestream.writeData(obj235201.facilityCaptureScore.unsafeAddr, 4)
    thestream.writeData(obj235201.vehicleEliminationScore.unsafeAddr, 4)
    thestream.writeData(obj235201.actionDetectionInterval.unsafeAddr, 4)
    thestream.writeData(obj235201.baseActionCount.unsafeAddr, 4)
    thestream.writeData(obj235201.additionalActionCountPerControlCenter.unsafeAddr,
                        4)
    thestream.writeData(obj235201.maxUnitGroup.unsafeAddr, 4)
    thestream.writeData(obj235201.terrainWeatherMapColumnCount.unsafeAddr, 4)
    thestream.writeData(obj235201.terrainWeatherMapRowCount.unsafeAddr, 4)
    thestream.writeData(obj235201.plainTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.plainTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.plainTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.swampTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.swampTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.swampTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.forestTerrainVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.forestTerrainStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.forestTerrainSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.clearWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.clearWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.clearWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.cloudWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.cloudWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.cloudWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.rainWeatherVisionFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.rainWeatherStealthFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.rainWeatherSpeedFactor.unsafeAddr, 8)
    thestream.writeData(obj235201.vehicleRadius.unsafeAddr, 8)
    thestream.writeData(obj235201.tankDurability.unsafeAddr, 4)
    thestream.writeData(obj235201.tankSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.tankVisionRange.unsafeAddr, 8)
    thestream.writeData(obj235201.tankGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.tankAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.tankGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.tankAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.tankGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.tankAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.tankAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj235201.tankProductionCost.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvDurability.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.ifvVisionRange.unsafeAddr, 8)
    thestream.writeData(obj235201.ifvGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.ifvAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.ifvGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj235201.ifvProductionCost.unsafeAddr, 4)
    thestream.writeData(obj235201.arrvDurability.unsafeAddr, 4)
    thestream.writeData(obj235201.arrvSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.arrvVisionRange.unsafeAddr, 8)
    thestream.writeData(obj235201.arrvGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.arrvAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.arrvProductionCost.unsafeAddr, 4)
    thestream.writeData(obj235201.arrvRepairRange.unsafeAddr, 8)
    thestream.writeData(obj235201.arrvRepairSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.helicopterDurability.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.helicopterVisionRange.unsafeAddr, 8)
    thestream.writeData(obj235201.helicopterGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.helicopterAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.helicopterGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj235201.helicopterProductionCost.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterDurability.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterSpeed.unsafeAddr, 8)
    thestream.writeData(obj235201.fighterVisionRange.unsafeAddr, 8)
    thestream.writeData(obj235201.fighterGroundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.fighterAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj235201.fighterGroundDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterAerialDamage.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterGroundDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterAerialDefence.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj235201.fighterProductionCost.unsafeAddr, 4)
    thestream.writeData(obj235201.maxFacilityCapturePoint32s.unsafeAddr, 8)
    thestream.writeData(obj235201.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                        8)
    thestream.writeData(obj235201.facilityWidth.unsafeAddr, 8)
    thestream.writeData(obj235201.facilityHeight.unsafeAddr, 8)
    thestream.writeData(obj235201.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                        4)
    thestream.writeData(obj235201.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                        4)
    thestream.writeData(obj235201.max_tactical_nuclear_strike_damage.unsafeAddr,
                        8)
    thestream.writeData(obj235201.tactical_nuclear_strike_radius.unsafeAddr, 8)
    thestream.writeData(obj235201.tactical_nuclear_strike_delay.unsafeAddr, 4)
  else:
    discard

proc serialize(obj235205: Game): string =
  let ss235207 = newStringStream()
  serialize(obj235205, ss235207)
  ss235207.data

proc deserialize(a235203: typedesc[Game]; thestream: Stream): Game =
  discard
  var tmp235199: type(result.exists)
  assert(1 ==
      thestream.readData(tmp235199.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp235199
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
proc size(obj236400: Move): Natural =
  result += 1
  case obj236400.exists
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

proc serialize(obj236401: Move; thestream: Stream) =
  discard
  var tmp236399 = obj236401.exists
  thestream.writeData(tmp236399.unsafeAddr, 1)
  case obj236401.exists
  of true:
    discard
    thestream.writeData(obj236401.action.unsafeAddr, 1)
    thestream.writeData(obj236401.group.unsafeAddr, 4)
    thestream.writeData(obj236401.left.unsafeAddr, 8)
    thestream.writeData(obj236401.top.unsafeAddr, 8)
    thestream.writeData(obj236401.right.unsafeAddr, 8)
    thestream.writeData(obj236401.bottom.unsafeAddr, 8)
    thestream.writeData(obj236401.x.unsafeAddr, 8)
    thestream.writeData(obj236401.y.unsafeAddr, 8)
    thestream.writeData(obj236401.angle.unsafeAddr, 8)
    thestream.writeData(obj236401.factor.unsafeAddr, 8)
    thestream.writeData(obj236401.maxSpeed.unsafeAddr, 8)
    thestream.writeData(obj236401.maxAngularSpeed.unsafeAddr, 8)
    thestream.writeData(obj236401.vehicleType.unsafeAddr, 1)
    thestream.writeData(obj236401.facilityId.unsafeAddr, 8)
    thestream.writeData(obj236401.vehicleId.unsafeAddr, 8)
  else:
    discard

proc serialize(obj236405: Move): string =
  let ss236407 = newStringStream()
  serialize(obj236405, ss236407)
  ss236407.data

proc deserialize(a236403: typedesc[Move]; thestream: Stream): Move =
  discard
  var tmp236399: type(result.exists)
  assert(1 ==
      thestream.readData(tmp236399.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp236399
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
proc size(obj236653: VehicleUpdate): Natural =
  result += 1
  case obj236653.exists
  of true:
    result += 8
    result += 8
    result += 8
    result += 4
    result += 4
    result += 1
    result += 4 + len(obj236653.groups) * 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj236654: VehicleUpdate; thestream: Stream) =
  discard
  var tmp236651 = obj236654.exists
  thestream.writeData(tmp236651.unsafeAddr, 1)
  case obj236654.exists
  of true:
    discard
    thestream.writeData(obj236654.id.unsafeAddr, 8)
    thestream.writeData(obj236654.x.unsafeAddr, 8)
    thestream.writeData(obj236654.y.unsafeAddr, 8)
    thestream.writeData(obj236654.durability.unsafeAddr, 4)
    thestream.writeData(obj236654.remainingAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj236654.selected.unsafeAddr, 1)
    var length236652 = len(obj236654.groups)
    thestream.writeData(length236652.unsafeAddr, 4)
    if len(obj236654.groups) > 0:
      thestream.writeData(obj236654.groups[0].unsafeAddr, len(obj236654.groups) *
          4)
  else:
    discard

proc serialize(obj236658: VehicleUpdate): string =
  let ss236660 = newStringStream()
  serialize(obj236658, ss236660)
  ss236660.data

proc deserialize(a236656: typedesc[VehicleUpdate]; thestream: Stream): VehicleUpdate =
  discard
  var tmp236651: type(result.exists)
  assert(1 ==
      thestream.readData(tmp236651.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp236651
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
    var length236652: int32
    assert(4 ==
        thestream.readData(length236652.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.groups = newSeq[int32](length236652)
    if len(result.groups) > 0:
      assert(len(result.groups) * 4 ==
          thestream.readData(result.groups[0].unsafeAddr, len(result.groups) *
          4), "Stream was not provided enough data")
  else:
    discard
proc size(obj236847: Vehicle): Natural =
  result += 1
  case obj236847.exists
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
    result += 4 + len(obj236847.groups) * 4
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj236848: Vehicle; thestream: Stream) =
  discard
  var tmp236845 = obj236848.exists
  thestream.writeData(tmp236845.unsafeAddr, 1)
  case obj236848.exists
  of true:
    discard
    thestream.writeData(obj236848.id.unsafeAddr, 8)
    thestream.writeData(obj236848.x.unsafeAddr, 8)
    thestream.writeData(obj236848.y.unsafeAddr, 8)
    thestream.writeData(obj236848.radius.unsafeAddr, 8)
    thestream.writeData(obj236848.player_id.unsafeAddr, 8)
    thestream.writeData(obj236848.durability.unsafeAddr, 4)
    thestream.writeData(obj236848.maxDurability.unsafeAddr, 4)
    thestream.writeData(obj236848.maxSpeed.unsafeAddr, 8)
    thestream.writeData(obj236848.visionRange.unsafeAddr, 8)
    thestream.writeData(obj236848.squaredVisionRange.unsafeAddr, 8)
    thestream.writeData(obj236848.groundAttackRange.unsafeAddr, 8)
    thestream.writeData(obj236848.squaredGroundAttachRange.unsafeAddr, 8)
    thestream.writeData(obj236848.aerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj236848.squaredAerialAttackRange.unsafeAddr, 8)
    thestream.writeData(obj236848.groundDamage.unsafeAddr, 4)
    thestream.writeData(obj236848.aerialDamage.unsafeAddr, 4)
    thestream.writeData(obj236848.groundDefence.unsafeAddr, 4)
    thestream.writeData(obj236848.aerialDefence.unsafeAddr, 4)
    thestream.writeData(obj236848.attackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj236848.remainingAttackCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj236848.thetype.unsafeAddr, 1)
    thestream.writeData(obj236848.aerial.unsafeAddr, 1)
    thestream.writeData(obj236848.selected.unsafeAddr, 1)
    var length236846 = len(obj236848.groups)
    thestream.writeData(length236846.unsafeAddr, 4)
    if len(obj236848.groups) > 0:
      thestream.writeData(obj236848.groups[0].unsafeAddr, len(obj236848.groups) *
          4)
  else:
    discard

proc serialize(obj236852: Vehicle): string =
  let ss236854 = newStringStream()
  serialize(obj236852, ss236854)
  ss236854.data

proc deserialize(a236850: typedesc[Vehicle]; thestream: Stream): Vehicle =
  discard
  var tmp236845: type(result.exists)
  assert(1 ==
      thestream.readData(tmp236845.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp236845
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
    var length236846: int32
    assert(4 ==
        thestream.readData(length236846.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.groups = newSeq[int32](length236846)
    if len(result.groups) > 0:
      assert(len(result.groups) * 4 ==
          thestream.readData(result.groups[0].unsafeAddr, len(result.groups) *
          4), "Stream was not provided enough data")
  else:
    discard
proc size(obj237244: Facility): Natural =
  result += 1
  case obj237244.flag
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

proc serialize(obj237245: Facility; thestream: Stream) =
  discard
  var tmp237243 = obj237245.flag
  thestream.writeData(tmp237243.unsafeAddr, 1)
  case obj237245.flag
  of FromId:
    discard
    thestream.writeData(obj237245.sourceId.unsafeAddr, 8)
  of Exists:
    discard
    thestream.writeData(obj237245.id.unsafeAddr, 8)
    thestream.writeData(obj237245.theType.unsafeAddr, 1)
    thestream.writeData(obj237245.ownerPlayerId.unsafeAddr, 8)
    thestream.writeData(obj237245.left.unsafeAddr, 8)
    thestream.writeData(obj237245.top.unsafeAddr, 8)
    thestream.writeData(obj237245.capturePoints.unsafeAddr, 8)
    thestream.writeData(obj237245.vehicleType.unsafeAddr, 1)
    thestream.writeData(obj237245.productionProgress.unsafeAddr, 4)
  else:
    discard

proc serialize(obj237249: Facility): string =
  let ss237251 = newStringStream()
  serialize(obj237249, ss237251)
  ss237251.data

proc deserialize(a237247: typedesc[Facility]; thestream: Stream): Facility =
  discard
  var tmp237243: type(result.flag)
  assert(1 ==
      thestream.readData(tmp237243.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp237243) ==
      $(ord(tmp237243)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp237243) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
  result.flag = tmp237243
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
proc size(obj237433: Player): Natural =
  result += 1
  case obj237433.flag
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

proc serialize(obj237434: Player; thestream: Stream) =
  discard
  var tmp237432 = obj237434.flag
  thestream.writeData(tmp237432.unsafeAddr, 1)
  case obj237434.flag
  of Exists:
    discard
    thestream.writeData(obj237434.id.unsafeAddr, 8)
    thestream.writeData(obj237434.me.unsafeAddr, 1)
    thestream.writeData(obj237434.strategyCrashed.unsafeAddr, 1)
    thestream.writeData(obj237434.score.unsafeAddr, 4)
    thestream.writeData(obj237434.remainingActionCooldownTicks.unsafeAddr, 4)
    thestream.writeData(obj237434.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                        4)
    thestream.writeData(obj237434.next_nuclear_strike_vehicle_id.unsafeAddr, 8)
    thestream.writeData(obj237434.next_nuclear_strike_tick_index.unsafeAddr, 4)
    thestream.writeData(obj237434.next_nuclear_strike_x.unsafeAddr, 8)
    thestream.writeData(obj237434.next_nuclear_strike_y.unsafeAddr, 8)
  of FromId:
    discard
    thestream.writeData(obj237434.sourceId.unsafeAddr, 8)
  else:
    discard

proc serialize(obj237438: Player): string =
  let ss237440 = newStringStream()
  serialize(obj237438, ss237440)
  ss237440.data

proc deserialize(a237436: typedesc[Player]; thestream: Stream): Player =
  discard
  var tmp237432: type(result.flag)
  assert(1 ==
      thestream.readData(tmp237432.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp237432) ==
      $(ord(tmp237432)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp237432) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  None = 0, Exists = 1, FromId = 127")
  result.flag = tmp237432
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
proc size(obj237662: World): Natural =
  result += 1
  case obj237662.exists
  of true:
    result += 4
    result += 4
    result += 8
    result += 8
    for index237647 in 0 ..<
        (len(obj237662.players)):
      result += 1
      case obj237662.players[index237647].flag
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
    for index237649 in 0 ..<
        (len(obj237662.newVehicles)):
      result += 1
      case obj237662.newVehicles[index237649].exists
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
            len(obj237662.newVehicles[index237649].groups) * 4
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    for index237651 in 0 ..<
        (len(obj237662.vehicleUpdates)):
      result += 1
      case obj237662.vehicleUpdates[index237651].exists
      of true:
        result += 8
        result += 8
        result += 8
        result += 4
        result += 4
        result += 1
        result +=
            4 +
            len(obj237662.vehicleUpdates[index237651].groups) * 4
        result += 0
      else:
        result += 0
      result += 0
    result += 4
    for index237655 in 0 ..<
        (len(obj237662.terrainByCellXY)):
      result +=
          4 +
          len(obj237662.terrainByCellXY[index237655]) * 1
    result += 4
    for index237659 in 0 ..<
        (len(obj237662.weatherByCellXY)):
      result +=
          4 +
          len(obj237662.weatherByCellXY[index237659]) * 1
    result += 4
    for index237661 in 0 ..<
        (len(obj237662.facilities)):
      result += 1
      case obj237662.facilities[index237661].flag
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

proc serialize(obj237663: World; thestream: Stream) =
  discard
  var tmp237645 = obj237663.exists
  thestream.writeData(tmp237645.unsafeAddr, 1)
  case obj237663.exists
  of true:
    discard
    thestream.writeData(obj237663.tickIndex.unsafeAddr, 4)
    thestream.writeData(obj237663.tickCount.unsafeAddr, 4)
    thestream.writeData(obj237663.width.unsafeAddr, 8)
    thestream.writeData(obj237663.height.unsafeAddr, 8)
    var length237646 = len(obj237663.players)
    thestream.writeData(length237646.unsafeAddr, 4)
    for index237647 in 0 ..<
        (len(obj237663.players)):
      discard
      var tmp237432 = obj237663.players[index237647].flag
      thestream.writeData(tmp237432.unsafeAddr, 1)
      case obj237663.players[index237647].flag
      of Exists:
        discard
        thestream.writeData(obj237663.players[index237647].id.unsafeAddr, 8)
        thestream.writeData(obj237663.players[index237647].me.unsafeAddr, 1)
        thestream.writeData(obj237663.players[index237647].strategyCrashed.unsafeAddr,
                            1)
        thestream.writeData(obj237663.players[index237647].score.unsafeAddr, 4)
        thestream.writeData(obj237663.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj237663.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                            4)
        thestream.writeData(obj237663.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                            8)
        thestream.writeData(obj237663.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                            4)
        thestream.writeData(obj237663.players[index237647].next_nuclear_strike_x.unsafeAddr,
                            8)
        thestream.writeData(obj237663.players[index237647].next_nuclear_strike_y.unsafeAddr,
                            8)
      of FromId:
        discard
        thestream.writeData(obj237663.players[index237647].sourceId.unsafeAddr, 8)
      else:
        discard
    var length237648 = len(obj237663.newVehicles)
    thestream.writeData(length237648.unsafeAddr, 4)
    for index237649 in 0 ..<
        (len(obj237663.newVehicles)):
      discard
      var tmp236845 = obj237663.newVehicles[index237649].exists
      thestream.writeData(tmp236845.unsafeAddr, 1)
      case obj237663.newVehicles[index237649].exists
      of true:
        discard
        thestream.writeData(obj237663.newVehicles[index237649].id.unsafeAddr, 8)
        thestream.writeData(obj237663.newVehicles[index237649].x.unsafeAddr, 8)
        thestream.writeData(obj237663.newVehicles[index237649].y.unsafeAddr, 8)
        thestream.writeData(obj237663.newVehicles[index237649].radius.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].player_id.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].durability.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].maxDurability.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].maxSpeed.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].visionRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].groundAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                            8)
        thestream.writeData(obj237663.newVehicles[index237649].groundDamage.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].aerialDamage.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].groundDefence.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].aerialDefence.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj237663.newVehicles[index237649].thetype.unsafeAddr,
                            1)
        thestream.writeData(obj237663.newVehicles[index237649].aerial.unsafeAddr,
                            1)
        thestream.writeData(obj237663.newVehicles[index237649].selected.unsafeAddr,
                            1)
        var length236846 = len(obj237663.newVehicles[index237649].groups)
        thestream.writeData(length236846.unsafeAddr, 4)
        if len(obj237663.newVehicles[index237649].groups) > 0:
          thestream.writeData(obj237663.newVehicles[index237649].groups[0].unsafeAddr, len(
              obj237663.newVehicles[index237649].groups) * 4)
      else:
        discard
    var length237650 = len(obj237663.vehicleUpdates)
    thestream.writeData(length237650.unsafeAddr, 4)
    for index237651 in 0 ..<
        (len(obj237663.vehicleUpdates)):
      discard
      var tmp236651 = obj237663.vehicleUpdates[index237651].exists
      thestream.writeData(tmp236651.unsafeAddr, 1)
      case obj237663.vehicleUpdates[index237651].exists
      of true:
        discard
        thestream.writeData(obj237663.vehicleUpdates[index237651].id.unsafeAddr,
                            8)
        thestream.writeData(obj237663.vehicleUpdates[index237651].x.unsafeAddr, 8)
        thestream.writeData(obj237663.vehicleUpdates[index237651].y.unsafeAddr, 8)
        thestream.writeData(obj237663.vehicleUpdates[index237651].durability.unsafeAddr,
                            4)
        thestream.writeData(obj237663.vehicleUpdates[index237651].remainingAttackCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj237663.vehicleUpdates[index237651].selected.unsafeAddr,
                            1)
        var length236652 = len(obj237663.vehicleUpdates[index237651].groups)
        thestream.writeData(length236652.unsafeAddr, 4)
        if len(obj237663.vehicleUpdates[index237651].groups) > 0:
          thestream.writeData(obj237663.vehicleUpdates[index237651].groups[0].unsafeAddr, len(
              obj237663.vehicleUpdates[index237651].groups) *
              4)
      else:
        discard
    var length237652 = len(obj237663.terrainByCellXY)
    thestream.writeData(length237652.unsafeAddr, 4)
    for index237655 in 0 ..<
        (len(obj237663.terrainByCellXY)):
      var length237653 = len(obj237663.terrainByCellXY[index237655])
      thestream.writeData(length237653.unsafeAddr, 4)
      for index237654 in 0 ..<
          (len(obj237663.terrainByCellXY[index237655])):
        thestream.writeData(obj237663.terrainByCellXY[index237655][index237654].unsafeAddr,
                            1)
    var length237656 = len(obj237663.weatherByCellXY)
    thestream.writeData(length237656.unsafeAddr, 4)
    for index237659 in 0 ..<
        (len(obj237663.weatherByCellXY)):
      var length237657 = len(obj237663.weatherByCellXY[index237659])
      thestream.writeData(length237657.unsafeAddr, 4)
      for index237658 in 0 ..<
          (len(obj237663.weatherByCellXY[index237659])):
        thestream.writeData(obj237663.weatherByCellXY[index237659][index237658].unsafeAddr,
                            1)
    var length237660 = len(obj237663.facilities)
    thestream.writeData(length237660.unsafeAddr, 4)
    for index237661 in 0 ..<
        (len(obj237663.facilities)):
      discard
      var tmp237243 = obj237663.facilities[index237661].flag
      thestream.writeData(tmp237243.unsafeAddr, 1)
      case obj237663.facilities[index237661].flag
      of FromId:
        discard
        thestream.writeData(obj237663.facilities[index237661].sourceId.unsafeAddr,
                            8)
      of Exists:
        discard
        thestream.writeData(obj237663.facilities[index237661].id.unsafeAddr, 8)
        thestream.writeData(obj237663.facilities[index237661].theType.unsafeAddr,
                            1)
        thestream.writeData(obj237663.facilities[index237661].ownerPlayerId.unsafeAddr,
                            8)
        thestream.writeData(obj237663.facilities[index237661].left.unsafeAddr, 8)
        thestream.writeData(obj237663.facilities[index237661].top.unsafeAddr, 8)
        thestream.writeData(obj237663.facilities[index237661].capturePoints.unsafeAddr,
                            8)
        thestream.writeData(obj237663.facilities[index237661].vehicleType.unsafeAddr,
                            1)
        thestream.writeData(obj237663.facilities[index237661].productionProgress.unsafeAddr,
                            4)
      else:
        discard
  else:
    discard

proc serialize(obj237667: World): string =
  let ss237669 = newStringStream()
  serialize(obj237667, ss237669)
  ss237669.data

proc deserialize(a237665: typedesc[World]; thestream: Stream): World =
  discard
  var tmp237645: type(result.exists)
  assert(1 ==
      thestream.readData(tmp237645.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp237645
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
    var length237646: int32
    assert(4 ==
        thestream.readData(length237646.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.players = newSeq[Player](length237646)
    for index237647 in 0 ..<
        (len(result.players)):
      discard
      var tmp237432: type(result.players[index237647].flag)
      assert(1 ==
          thestream.readData(tmp237432.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp237432) ==
          $(ord(tmp237432)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp237432) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.players[index237647].flag = tmp237432
      case result.players[index237647].flag
      of Exists:
        discard
        assert(8 ==
            thestream.readData(result.players[index237647].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.players[index237647].me.unsafeAddr, 1),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.players[index237647].strategyCrashed.unsafeAddr,
                               1), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index237647].score.unsafeAddr, 4),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index237647].next_nuclear_strike_x.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.players[index237647].next_nuclear_strike_y.unsafeAddr,
                               8), "Stream was not provided enough data")
      of FromId:
        discard
        assert(8 ==
            thestream.readData(result.players[index237647].sourceId.unsafeAddr, 8),
               "Stream was not provided enough data")
      else:
        discard
    var length237648: int32
    assert(4 ==
        thestream.readData(length237648.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.newVehicles = newSeq[Vehicle](length237648)
    for index237649 in 0 ..<
        (len(result.newVehicles)):
      discard
      var tmp236845: type(result.newVehicles[index237649].exists)
      assert(1 ==
          thestream.readData(tmp236845.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.newVehicles[index237649].exists = tmp236845
      case result.newVehicles[index237649].exists
      of true:
        discard
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].x.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].y.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].radius.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].player_id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].durability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].maxDurability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].maxSpeed.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].visionRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].groundAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].groundDamage.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].aerialDamage.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].groundDefence.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].aerialDefence.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.newVehicles[index237649].thetype.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.newVehicles[index237649].thetype) ==
            $(ord(result.newVehicles[index237649].thetype)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.newVehicles[index237649].thetype) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
        assert(1 ==
            thestream.readData(result.newVehicles[index237649].aerial.unsafeAddr,
                               1), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.newVehicles[index237649].selected.unsafeAddr,
                               1), "Stream was not provided enough data")
        var length236846: int32
        assert(4 ==
            thestream.readData(length236846.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.newVehicles[index237649].groups = newSeq[int32](length236846)
        if len(result.newVehicles[index237649].groups) > 0:
          assert(len(result.newVehicles[index237649].groups) *
              4 ==
              thestream.readData(result.newVehicles[index237649].groups[0].unsafeAddr, len(
              result.newVehicles[index237649].groups) * 4),
                 "Stream was not provided enough data")
      else:
        discard
    var length237650: int32
    assert(4 ==
        thestream.readData(length237650.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.vehicleUpdates = newSeq[VehicleUpdate](length237650)
    for index237651 in 0 ..<
        (len(result.vehicleUpdates)):
      discard
      var tmp236651: type(result.vehicleUpdates[index237651].exists)
      assert(1 ==
          thestream.readData(tmp236651.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.vehicleUpdates[index237651].exists = tmp236651
      case result.vehicleUpdates[index237651].exists
      of true:
        discard
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index237651].id.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index237651].x.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.vehicleUpdates[index237651].y.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.vehicleUpdates[index237651].durability.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(4 ==
            thestream.readData(result.vehicleUpdates[index237651].remainingAttackCooldownTicks.unsafeAddr,
                               4), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.vehicleUpdates[index237651].selected.unsafeAddr,
                               1), "Stream was not provided enough data")
        var length236652: int32
        assert(4 ==
            thestream.readData(length236652.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.vehicleUpdates[index237651].groups = newSeq[int32](length236652)
        if len(result.vehicleUpdates[index237651].groups) > 0:
          assert(len(result.vehicleUpdates[index237651].groups) *
              4 ==
              thestream.readData(result.vehicleUpdates[index237651].groups[0].unsafeAddr, len(
              result.vehicleUpdates[index237651].groups) * 4),
                 "Stream was not provided enough data")
      else:
        discard
    var length237652: int32
    assert(4 ==
        thestream.readData(length237652.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.terrainByCellXY = newSeq[seq[TerrainType]](length237652)
    for index237655 in 0 ..<
        (len(result.terrainByCellXY)):
      var length237653: int32
      assert(4 ==
          thestream.readData(length237653.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.terrainByCellXY[index237655] = newSeq[TerrainType](length237653)
      for index237654 in 0 ..<
          (len(result.terrainByCellXY[index237655])):
        assert(1 ==
            thestream.readData(result.terrainByCellXY[index237655][index237654].unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.terrainByCellXY[index237655][index237654]) ==
            $(ord(result.terrainByCellXY[index237655][index237654])) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.terrainByCellXY[index237655][index237654]) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
    var length237656: int32
    assert(4 ==
        thestream.readData(length237656.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.weatherByCellXY = newSeq[seq[WeatherType]](length237656)
    for index237659 in 0 ..<
        (len(result.weatherByCellXY)):
      var length237657: int32
      assert(4 ==
          thestream.readData(length237657.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.weatherByCellXY[index237659] = newSeq[WeatherType](length237657)
      for index237658 in 0 ..<
          (len(result.weatherByCellXY[index237659])):
        assert(1 ==
            thestream.readData(result.weatherByCellXY[index237659][index237658].unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.weatherByCellXY[index237659][index237658]) ==
            $(ord(result.weatherByCellXY[index237659][index237658])) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.weatherByCellXY[index237659][index237658]) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
    var length237660: int32
    assert(4 ==
        thestream.readData(length237660.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.facilities = newSeq[Facility](length237660)
    for index237661 in 0 ..<
        (len(result.facilities)):
      discard
      var tmp237243: type(result.facilities[index237661].flag)
      assert(1 ==
          thestream.readData(tmp237243.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp237243) ==
          $(ord(tmp237243)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp237243) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.facilities[index237661].flag = tmp237243
      case result.facilities[index237661].flag
      of FromId:
        discard
        assert(8 ==
            thestream.readData(result.facilities[index237661].sourceId.unsafeAddr,
                               8), "Stream was not provided enough data")
      of Exists:
        discard
        assert(8 ==
            thestream.readData(result.facilities[index237661].id.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.facilities[index237661].theType.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.facilities[index237661].theType) ==
            $(ord(result.facilities[index237661].theType)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.facilities[index237661].theType) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
        assert(8 ==
            thestream.readData(result.facilities[index237661].ownerPlayerId.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index237661].left.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index237661].top.unsafeAddr, 8),
               "Stream was not provided enough data")
        assert(8 ==
            thestream.readData(result.facilities[index237661].capturePoints.unsafeAddr,
                               8), "Stream was not provided enough data")
        assert(1 ==
            thestream.readData(result.facilities[index237661].vehicleType.unsafeAddr,
                               1), "Stream was not provided enough data")
        if $(result.facilities[index237661].vehicleType) ==
            $(ord(result.facilities[index237661].vehicleType)) &
            " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(result.facilities[index237661].vehicleType) &
              "\x0ACorrect values are:\x0A" &
              "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
        assert(4 ==
            thestream.readData(result.facilities[index237661].productionProgress.unsafeAddr,
                               4), "Stream was not provided enough data")
      else:
        discard
  else:
    discard
proc size(obj239279: PlayerContext): Natural =
  result += 1
  case obj239279.exists
  of true:
    result += 1
    case obj239279.player.flag
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
    case obj239279.world.exists
    of true:
      result += 4
      result += 4
      result += 8
      result += 8
      for index237647 in 0 ..<
          (len(obj239279.world.players)):
        result += 1
        case obj239279.world.players[index237647].flag
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
      for index237649 in 0 ..<
          (len(obj239279.world.newVehicles)):
        result += 1
        case obj239279.world.newVehicles[index237649].exists
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
              len(obj239279.world.newVehicles[index237649].groups) * 4
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      for index237651 in 0 ..<
          (len(obj239279.world.vehicleUpdates)):
        result += 1
        case obj239279.world.vehicleUpdates[index237651].exists
        of true:
          result += 8
          result += 8
          result += 8
          result += 4
          result += 4
          result += 1
          result +=
              4 +
              len(obj239279.world.vehicleUpdates[index237651].groups) * 4
          result += 0
        else:
          result += 0
        result += 0
      result += 4
      for index237655 in 0 ..<
          (len(obj239279.world.terrainByCellXY)):
        result +=
            4 +
            len(obj239279.world.terrainByCellXY[index237655]) * 1
      result += 4
      for index237659 in 0 ..<
          (len(obj239279.world.weatherByCellXY)):
        result +=
            4 +
            len(obj239279.world.weatherByCellXY[index237659]) * 1
      result += 4
      for index237661 in 0 ..<
          (len(obj239279.world.facilities)):
        result += 1
        case obj239279.world.facilities[index237661].flag
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

proc serialize(obj239280: PlayerContext; thestream: Stream) =
  discard
  var tmp239278 = obj239280.exists
  thestream.writeData(tmp239278.unsafeAddr, 1)
  case obj239280.exists
  of true:
    discard
    discard
    var tmp237432 = obj239280.player.flag
    thestream.writeData(tmp237432.unsafeAddr, 1)
    case obj239280.player.flag
    of Exists:
      discard
      thestream.writeData(obj239280.player.id.unsafeAddr, 8)
      thestream.writeData(obj239280.player.me.unsafeAddr, 1)
      thestream.writeData(obj239280.player.strategyCrashed.unsafeAddr, 1)
      thestream.writeData(obj239280.player.score.unsafeAddr, 4)
      thestream.writeData(obj239280.player.remainingActionCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj239280.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                          4)
      thestream.writeData(obj239280.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                          8)
      thestream.writeData(obj239280.player.next_nuclear_strike_tick_index.unsafeAddr,
                          4)
      thestream.writeData(obj239280.player.next_nuclear_strike_x.unsafeAddr, 8)
      thestream.writeData(obj239280.player.next_nuclear_strike_y.unsafeAddr, 8)
    of FromId:
      discard
      thestream.writeData(obj239280.player.sourceId.unsafeAddr, 8)
    else:
      discard
    discard
    var tmp237645 = obj239280.world.exists
    thestream.writeData(tmp237645.unsafeAddr, 1)
    case obj239280.world.exists
    of true:
      discard
      thestream.writeData(obj239280.world.tickIndex.unsafeAddr, 4)
      thestream.writeData(obj239280.world.tickCount.unsafeAddr, 4)
      thestream.writeData(obj239280.world.width.unsafeAddr, 8)
      thestream.writeData(obj239280.world.height.unsafeAddr, 8)
      var length237646 = len(obj239280.world.players)
      thestream.writeData(length237646.unsafeAddr, 4)
      for index237647 in 0 ..<
          (len(obj239280.world.players)):
        discard
        var tmp237432 = obj239280.world.players[index237647].flag
        thestream.writeData(tmp237432.unsafeAddr, 1)
        case obj239280.world.players[index237647].flag
        of Exists:
          discard
          thestream.writeData(obj239280.world.players[index237647].id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.players[index237647].me.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.players[index237647].strategyCrashed.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.players[index237647].score.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.players[index237647].next_nuclear_strike_x.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.players[index237647].next_nuclear_strike_y.unsafeAddr,
                              8)
        of FromId:
          discard
          thestream.writeData(obj239280.world.players[index237647].sourceId.unsafeAddr,
                              8)
        else:
          discard
      var length237648 = len(obj239280.world.newVehicles)
      thestream.writeData(length237648.unsafeAddr, 4)
      for index237649 in 0 ..<
          (len(obj239280.world.newVehicles)):
        discard
        var tmp236845 = obj239280.world.newVehicles[index237649].exists
        thestream.writeData(tmp236845.unsafeAddr, 1)
        case obj239280.world.newVehicles[index237649].exists
        of true:
          discard
          thestream.writeData(obj239280.world.newVehicles[index237649].id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].x.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].y.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].radius.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].player_id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].durability.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].maxDurability.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].maxSpeed.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].visionRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].groundAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.newVehicles[index237649].groundDamage.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].aerialDamage.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].groundDefence.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].aerialDefence.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.newVehicles[index237649].thetype.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.newVehicles[index237649].aerial.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.newVehicles[index237649].selected.unsafeAddr,
                              1)
          var length236846 = len(obj239280.world.newVehicles[index237649].groups)
          thestream.writeData(length236846.unsafeAddr, 4)
          if len(obj239280.world.newVehicles[index237649].groups) > 0:
            thestream.writeData(obj239280.world.newVehicles[index237649].groups[
                0].unsafeAddr, len(obj239280.world.newVehicles[index237649].groups) *
                4)
        else:
          discard
      var length237650 = len(obj239280.world.vehicleUpdates)
      thestream.writeData(length237650.unsafeAddr, 4)
      for index237651 in 0 ..<
          (len(obj239280.world.vehicleUpdates)):
        discard
        var tmp236651 = obj239280.world.vehicleUpdates[index237651].exists
        thestream.writeData(tmp236651.unsafeAddr, 1)
        case obj239280.world.vehicleUpdates[index237651].exists
        of true:
          discard
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].x.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].y.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].durability.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].remainingAttackCooldownTicks.unsafeAddr,
                              4)
          thestream.writeData(obj239280.world.vehicleUpdates[index237651].selected.unsafeAddr,
                              1)
          var length236652 = len(obj239280.world.vehicleUpdates[index237651].groups)
          thestream.writeData(length236652.unsafeAddr, 4)
          if len(obj239280.world.vehicleUpdates[index237651].groups) > 0:
            thestream.writeData(obj239280.world.vehicleUpdates[index237651].groups[
                0].unsafeAddr, len(obj239280.world.vehicleUpdates[index237651].groups) *
                4)
        else:
          discard
      var length237652 = len(obj239280.world.terrainByCellXY)
      thestream.writeData(length237652.unsafeAddr, 4)
      for index237655 in 0 ..<
          (len(obj239280.world.terrainByCellXY)):
        var length237653 = len(obj239280.world.terrainByCellXY[index237655])
        thestream.writeData(length237653.unsafeAddr, 4)
        for index237654 in 0 ..<
            (len(obj239280.world.terrainByCellXY[index237655])):
          thestream.writeData(obj239280.world.terrainByCellXY[index237655][index237654].unsafeAddr,
                              1)
      var length237656 = len(obj239280.world.weatherByCellXY)
      thestream.writeData(length237656.unsafeAddr, 4)
      for index237659 in 0 ..<
          (len(obj239280.world.weatherByCellXY)):
        var length237657 = len(obj239280.world.weatherByCellXY[index237659])
        thestream.writeData(length237657.unsafeAddr, 4)
        for index237658 in 0 ..<
            (len(obj239280.world.weatherByCellXY[index237659])):
          thestream.writeData(obj239280.world.weatherByCellXY[index237659][index237658].unsafeAddr,
                              1)
      var length237660 = len(obj239280.world.facilities)
      thestream.writeData(length237660.unsafeAddr, 4)
      for index237661 in 0 ..<
          (len(obj239280.world.facilities)):
        discard
        var tmp237243 = obj239280.world.facilities[index237661].flag
        thestream.writeData(tmp237243.unsafeAddr, 1)
        case obj239280.world.facilities[index237661].flag
        of FromId:
          discard
          thestream.writeData(obj239280.world.facilities[index237661].sourceId.unsafeAddr,
                              8)
        of Exists:
          discard
          thestream.writeData(obj239280.world.facilities[index237661].id.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.facilities[index237661].theType.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.facilities[index237661].ownerPlayerId.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.facilities[index237661].left.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.facilities[index237661].top.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.facilities[index237661].capturePoints.unsafeAddr,
                              8)
          thestream.writeData(obj239280.world.facilities[index237661].vehicleType.unsafeAddr,
                              1)
          thestream.writeData(obj239280.world.facilities[index237661].productionProgress.unsafeAddr,
                              4)
        else:
          discard
    else:
      discard
  else:
    discard

proc serialize(obj239284: PlayerContext): string =
  let ss239286 = newStringStream()
  serialize(obj239284, ss239286)
  ss239286.data

proc deserialize(a239282: typedesc[PlayerContext]; thestream: Stream): PlayerContext =
  discard
  var tmp239278: type(result.exists)
  assert(1 ==
      thestream.readData(tmp239278.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp239278
  case result.exists
  of true:
    discard
    discard
    var tmp237432: type(result.player.flag)
    assert(1 ==
        thestream.readData(tmp237432.unsafeAddr, 1),
           "Stream was not provided enough data")
    if $(tmp237432) ==
        $(ord(tmp237432)) & " (invalid data!)":
      raise newException(ValueError, "Enum value is out of range: " &
          $(tmp237432) & "\x0ACorrect values are:\x0A" &
          "enum\x0A  None = 0, Exists = 1, FromId = 127")
    result.player.flag = tmp237432
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
    var tmp237645: type(result.world.exists)
    assert(1 ==
        thestream.readData(tmp237645.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.world.exists = tmp237645
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
      var length237646: int32
      assert(4 ==
          thestream.readData(length237646.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.players = newSeq[Player](length237646)
      for index237647 in 0 ..<
          (len(result.world.players)):
        discard
        var tmp237432: type(result.world.players[index237647].flag)
        assert(1 ==
            thestream.readData(tmp237432.unsafeAddr, 1),
               "Stream was not provided enough data")
        if $(tmp237432) ==
            $(ord(tmp237432)) & " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(tmp237432) & "\x0ACorrect values are:\x0A" &
              "enum\x0A  None = 0, Exists = 1, FromId = 127")
        result.world.players[index237647].flag = tmp237432
        case result.world.players[index237647].flag
        of Exists:
          discard
          assert(8 ==
              thestream.readData(result.world.players[index237647].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.players[index237647].me.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.players[index237647].strategyCrashed.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index237647].score.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index237647].next_nuclear_strike_x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.players[index237647].next_nuclear_strike_y.unsafeAddr,
                                 8), "Stream was not provided enough data")
        of FromId:
          discard
          assert(8 ==
              thestream.readData(result.world.players[index237647].sourceId.unsafeAddr,
                                 8), "Stream was not provided enough data")
        else:
          discard
      var length237648: int32
      assert(4 ==
          thestream.readData(length237648.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.newVehicles = newSeq[Vehicle](length237648)
      for index237649 in 0 ..<
          (len(result.world.newVehicles)):
        discard
        var tmp236845: type(result.world.newVehicles[index237649].exists)
        assert(1 ==
            thestream.readData(tmp236845.unsafeAddr, 1),
               "Stream was not provided enough data")
        result.world.newVehicles[index237649].exists = tmp236845
        case result.world.newVehicles[index237649].exists
        of true:
          discard
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].y.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].radius.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].player_id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].durability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].maxDurability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].maxSpeed.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].visionRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].groundAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].groundDamage.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].aerialDamage.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].groundDefence.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].aerialDefence.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index237649].thetype.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.newVehicles[index237649].thetype) ==
              $(ord(result.world.newVehicles[index237649].thetype)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.newVehicles[index237649].thetype) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index237649].aerial.unsafeAddr,
                                 1), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.newVehicles[index237649].selected.unsafeAddr,
                                 1), "Stream was not provided enough data")
          var length236846: int32
          assert(4 ==
              thestream.readData(length236846.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.world.newVehicles[index237649].groups = newSeq[int32](length236846)
          if len(result.world.newVehicles[index237649].groups) > 0:
            assert(len(result.world.newVehicles[index237649].groups) *
                4 ==
                thestream.readData(result.world.newVehicles[index237649].groups[
                0].unsafeAddr, len(result.world.newVehicles[index237649].groups) *
                4), "Stream was not provided enough data")
        else:
          discard
      var length237650: int32
      assert(4 ==
          thestream.readData(length237650.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.vehicleUpdates = newSeq[VehicleUpdate](length237650)
      for index237651 in 0 ..<
          (len(result.world.vehicleUpdates)):
        discard
        var tmp236651: type(result.world.vehicleUpdates[index237651].exists)
        assert(1 ==
            thestream.readData(tmp236651.unsafeAddr, 1),
               "Stream was not provided enough data")
        result.world.vehicleUpdates[index237651].exists = tmp236651
        case result.world.vehicleUpdates[index237651].exists
        of true:
          discard
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index237651].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index237651].x.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.vehicleUpdates[index237651].y.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.vehicleUpdates[index237651].durability.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(4 ==
              thestream.readData(result.world.vehicleUpdates[index237651].remainingAttackCooldownTicks.unsafeAddr,
                                 4), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.vehicleUpdates[index237651].selected.unsafeAddr,
                                 1), "Stream was not provided enough data")
          var length236652: int32
          assert(4 ==
              thestream.readData(length236652.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.world.vehicleUpdates[index237651].groups = newSeq[int32](length236652)
          if len(result.world.vehicleUpdates[index237651].groups) > 0:
            assert(len(result.world.vehicleUpdates[index237651].groups) *
                4 ==
                thestream.readData(result.world.vehicleUpdates[index237651].groups[
                0].unsafeAddr, len(result.world.vehicleUpdates[index237651].groups) *
                4), "Stream was not provided enough data")
        else:
          discard
      var length237652: int32
      assert(4 ==
          thestream.readData(length237652.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.terrainByCellXY = newSeq[seq[TerrainType]](length237652)
      for index237655 in 0 ..<
          (len(result.world.terrainByCellXY)):
        var length237653: int32
        assert(4 ==
            thestream.readData(length237653.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.world.terrainByCellXY[index237655] = newSeq[TerrainType](length237653)
        for index237654 in 0 ..<
            (len(result.world.terrainByCellXY[index237655])):
          assert(1 ==
              thestream.readData(result.world.terrainByCellXY[index237655][index237654].unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.terrainByCellXY[index237655][index237654]) ==
              $(ord(result.world.terrainByCellXY[index237655][index237654])) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.terrainByCellXY[index237655][index237654]) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
      var length237656: int32
      assert(4 ==
          thestream.readData(length237656.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.weatherByCellXY = newSeq[seq[WeatherType]](length237656)
      for index237659 in 0 ..<
          (len(result.world.weatherByCellXY)):
        var length237657: int32
        assert(4 ==
            thestream.readData(length237657.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.world.weatherByCellXY[index237659] = newSeq[WeatherType](length237657)
        for index237658 in 0 ..<
            (len(result.world.weatherByCellXY[index237659])):
          assert(1 ==
              thestream.readData(result.world.weatherByCellXY[index237659][index237658].unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.weatherByCellXY[index237659][index237658]) ==
              $(ord(result.world.weatherByCellXY[index237659][index237658])) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.weatherByCellXY[index237659][index237658]) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
      var length237660: int32
      assert(4 ==
          thestream.readData(length237660.unsafeAddr, 4),
             "Stream was not provided enough data")
      result.world.facilities = newSeq[Facility](length237660)
      for index237661 in 0 ..<
          (len(result.world.facilities)):
        discard
        var tmp237243: type(result.world.facilities[index237661].flag)
        assert(1 ==
            thestream.readData(tmp237243.unsafeAddr, 1),
               "Stream was not provided enough data")
        if $(tmp237243) ==
            $(ord(tmp237243)) & " (invalid data!)":
          raise newException(ValueError, "Enum value is out of range: " &
              $(tmp237243) & "\x0ACorrect values are:\x0A" &
              "enum\x0A  None = 0, Exists = 1, FromId = 127")
        result.world.facilities[index237661].flag = tmp237243
        case result.world.facilities[index237661].flag
        of FromId:
          discard
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].sourceId.unsafeAddr,
                                 8), "Stream was not provided enough data")
        of Exists:
          discard
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].id.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.facilities[index237661].theType.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.facilities[index237661].theType) ==
              $(ord(result.world.facilities[index237661].theType)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.facilities[index237661].theType) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].ownerPlayerId.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].left.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].top.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(8 ==
              thestream.readData(result.world.facilities[index237661].capturePoints.unsafeAddr,
                                 8), "Stream was not provided enough data")
          assert(1 ==
              thestream.readData(result.world.facilities[index237661].vehicleType.unsafeAddr,
                                 1), "Stream was not provided enough data")
          if $(result.world.facilities[index237661].vehicleType) ==
              $(ord(result.world.facilities[index237661].vehicleType)) &
              " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(result.world.facilities[index237661].vehicleType) &
                "\x0ACorrect values are:\x0A" &
                "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
          assert(4 ==
              thestream.readData(result.world.facilities[index237661].productionProgress.unsafeAddr,
                                 4), "Stream was not provided enough data")
        else:
          discard
    else:
      discard
  else:
    discard
proc size(obj241237: WorldHead): Natural =
  result += 1
  case obj241237.exists
  of true:
    result += 4
    result += 4
    result += 8
    result += 8
    result += 0
  else:
    result += 0
  result += 0

proc serialize(obj241238: WorldHead; thestream: Stream) =
  discard
  var tmp241236 = obj241238.exists
  thestream.writeData(tmp241236.unsafeAddr, 1)
  case obj241238.exists
  of true:
    discard
    thestream.writeData(obj241238.tickIndex.unsafeAddr, 4)
    thestream.writeData(obj241238.tickCount.unsafeAddr, 4)
    thestream.writeData(obj241238.width.unsafeAddr, 8)
    thestream.writeData(obj241238.height.unsafeAddr, 8)
  else:
    discard

proc serialize(obj241242: WorldHead): string =
  let ss241244 = newStringStream()
  serialize(obj241242, ss241244)
  ss241244.data

proc deserialize(a241240: typedesc[WorldHead]; thestream: Stream): WorldHead =
  discard
  var tmp241236: type(result.exists)
  assert(1 ==
      thestream.readData(tmp241236.unsafeAddr, 1),
         "Stream was not provided enough data")
  result.exists = tmp241236
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
proc size(obj241360: Terrains): Natural =
  for index241359 in 0 ..< (len(obj241360)):
    result +=
        4 +
        len(obj241360[index241359]) * 1
  result += 4

proc serialize(obj241361: Terrains; thestream: Stream) =
  var length241356 = len(obj241361)
  thestream.writeData(length241356.unsafeAddr, 4)
  for index241359 in 0 ..< (len(obj241361)):
    var length241357 = len(obj241361[index241359])
    thestream.writeData(length241357.unsafeAddr, 4)
    for index241358 in 0 ..<
        (len(obj241361[index241359])):
      thestream.writeData(obj241361[index241359][index241358].unsafeAddr, 1)

proc serialize(obj241365: Terrains): string =
  let ss241367 = newStringStream()
  serialize(obj241365, ss241367)
  ss241367.data

proc deserialize(a241363: typedesc[Terrains]; thestream: Stream): Terrains =
  var length241356: int32
  assert(4 ==
      thestream.readData(length241356.unsafeAddr, 4),
         "Stream was not provided enough data")
  result = newSeq[seq[TerrainType]](length241356)
  for index241359 in 0 ..< (len(result)):
    var length241357: int32
    assert(4 ==
        thestream.readData(length241357.unsafeAddr, 4),
           "Stream was not provided enough data")
    result[index241359] = newSeq[TerrainType](length241357)
    for index241358 in 0 ..<
        (len(result[index241359])):
      assert(1 ==
          thestream.readData(result[index241359][index241358].unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result[index241359][index241358]) ==
          $(ord(result[index241359][index241358])) &
          " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result[index241359][index241358]) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
proc size(obj241520: Weathers): Natural =
  for index241519 in 0 ..< (len(obj241520)):
    result +=
        4 +
        len(obj241520[index241519]) * 1
  result += 4

proc serialize(obj241521: Weathers; thestream: Stream) =
  var length241516 = len(obj241521)
  thestream.writeData(length241516.unsafeAddr, 4)
  for index241519 in 0 ..< (len(obj241521)):
    var length241517 = len(obj241521[index241519])
    thestream.writeData(length241517.unsafeAddr, 4)
    for index241518 in 0 ..<
        (len(obj241521[index241519])):
      thestream.writeData(obj241521[index241519][index241518].unsafeAddr, 1)

proc serialize(obj241525: Weathers): string =
  let ss241527 = newStringStream()
  serialize(obj241525, ss241527)
  ss241527.data

proc deserialize(a241523: typedesc[Weathers]; thestream: Stream): Weathers =
  var length241516: int32
  assert(4 ==
      thestream.readData(length241516.unsafeAddr, 4),
         "Stream was not provided enough data")
  result = newSeq[seq[WeatherType]](length241516)
  for index241519 in 0 ..< (len(result)):
    var length241517: int32
    assert(4 ==
        thestream.readData(length241517.unsafeAddr, 4),
           "Stream was not provided enough data")
    result[index241519] = newSeq[WeatherType](length241517)
    for index241518 in 0 ..<
        (len(result[index241519])):
      assert(1 ==
          thestream.readData(result[index241519][index241518].unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(result[index241519][index241518]) ==
          $(ord(result[index241519][index241518])) &
          " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(result[index241519][index241518]) &
            "\x0ACorrect values are:\x0A" &
            "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
proc size(obj241676: MessageType): Natural =
  1

proc serialize(obj241677: MessageType; thestream: Stream) =
  thestream.writeData(obj241677.unsafeAddr, 1)

proc serialize(obj241681: MessageType): string =
  let ss241683 = newStringStream()
  serialize(obj241681, ss241683)
  ss241683.data

proc deserialize(a241679: typedesc[MessageType]; thestream: Stream): MessageType =
  assert(1 ==
      thestream.readData(result.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(result) ==
      $(ord(result)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(result) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  UNKNOWN = 0, GAME_OVER = 1, AUTHENTICATION_TOKEN = 2, TEAM_SIZE = 3, PROTOCOL_VERSION = 4,\x0A  GAME_CONTEXT = 5, PLAYER_CONTEXT = 6, MOVE = 7")
proc size(obj241710: Message): Natural =
  result += 1
  case obj241710.kind
  of MessageType.AUTHENTICATION_TOKEN:
    result += 4 + len(obj241710.token) * 1
    result += 0
  of MessageType.PROTOCOL_VERSION:
    result += 4
    result += 0
  of MessageType.TEAM_SIZE:
    result += 4
    result += 0
  of MessageType.GAME_CONTEXT:
    result += 1
    case obj241710.game.exists
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
    case obj241710.move.exists
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
    case obj241710.playerContext.exists
    of true:
      result += 1
      case obj241710.playerContext.player.flag
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
      case obj241710.playerContext.world.exists
      of true:
        result += 4
        result += 4
        result += 8
        result += 8
        for index237647 in 0 ..<
            (len(obj241710.playerContext.world.players)):
          result += 1
          case obj241710.playerContext.world.players[index237647].flag
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
        for index237649 in 0 ..<
            (len(obj241710.playerContext.world.newVehicles)):
          result += 1
          case obj241710.playerContext.world.newVehicles[index237649].exists
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
                len(obj241710.playerContext.world.newVehicles[index237649].groups) *
                4
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        for index237651 in 0 ..<
            (len(obj241710.playerContext.world.vehicleUpdates)):
          result += 1
          case obj241710.playerContext.world.vehicleUpdates[index237651].exists
          of true:
            result += 8
            result += 8
            result += 8
            result += 4
            result += 4
            result += 1
            result +=
                4 +
                len(obj241710.playerContext.world.vehicleUpdates[index237651].groups) *
                4
            result += 0
          else:
            result += 0
          result += 0
        result += 4
        for index237655 in 0 ..<
            (len(obj241710.playerContext.world.terrainByCellXY)):
          result +=
              4 +
              len(obj241710.playerContext.world.terrainByCellXY[index237655]) *
              1
        result += 4
        for index237659 in 0 ..<
            (len(obj241710.playerContext.world.weatherByCellXY)):
          result +=
              4 +
              len(obj241710.playerContext.world.weatherByCellXY[index237659]) *
              1
        result += 4
        for index237661 in 0 ..<
            (len(obj241710.playerContext.world.facilities)):
          result += 1
          case obj241710.playerContext.world.facilities[index237661].flag
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

proc serialize(obj241711: Message; thestream: Stream) =
  discard
  var tmp241708 = obj241711.kind
  thestream.writeData(tmp241708.unsafeAddr, 1)
  case obj241711.kind
  of MessageType.AUTHENTICATION_TOKEN:
    discard
    var length241709 = len(obj241711.token)
    thestream.writeData(length241709.unsafeAddr, 4)
    if len(obj241711.token) > 0:
      thestream.writeData(obj241711.token[0].unsafeAddr, len(obj241711.token) *
          1)
  of MessageType.PROTOCOL_VERSION:
    discard
    thestream.writeData(obj241711.version.unsafeAddr, 4)
  of MessageType.TEAM_SIZE:
    discard
    thestream.writeData(obj241711.size.unsafeAddr, 4)
  of MessageType.GAME_CONTEXT:
    discard
    discard
    var tmp235199 = obj241711.game.exists
    thestream.writeData(tmp235199.unsafeAddr, 1)
    case obj241711.game.exists
    of true:
      discard
      thestream.writeData(obj241711.game.randomSeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tickCount.unsafeAddr, 4)
      thestream.writeData(obj241711.game.worldWidth.unsafeAddr, 8)
      thestream.writeData(obj241711.game.worldHeight.unsafeAddr, 8)
      thestream.writeData(obj241711.game.fogOfWarEnabled.unsafeAddr, 1)
      thestream.writeData(obj241711.game.victoryScore.unsafeAddr, 4)
      thestream.writeData(obj241711.game.facilityCaptureScore.unsafeAddr, 4)
      thestream.writeData(obj241711.game.vehicleEliminationScore.unsafeAddr, 4)
      thestream.writeData(obj241711.game.actionDetectionInterval.unsafeAddr, 4)
      thestream.writeData(obj241711.game.baseActionCount.unsafeAddr, 4)
      thestream.writeData(obj241711.game.additionalActionCountPerControlCenter.unsafeAddr,
                          4)
      thestream.writeData(obj241711.game.maxUnitGroup.unsafeAddr, 4)
      thestream.writeData(obj241711.game.terrainWeatherMapColumnCount.unsafeAddr,
                          4)
      thestream.writeData(obj241711.game.terrainWeatherMapRowCount.unsafeAddr, 4)
      thestream.writeData(obj241711.game.plainTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.plainTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.plainTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.swampTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.swampTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.swampTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.forestTerrainVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.forestTerrainStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.forestTerrainSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.clearWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.clearWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.clearWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.cloudWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.cloudWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.cloudWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.rainWeatherVisionFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.rainWeatherStealthFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.rainWeatherSpeedFactor.unsafeAddr, 8)
      thestream.writeData(obj241711.game.vehicleRadius.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tankDurability.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tankVisionRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tankGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tankAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.tankGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj241711.game.tankProductionCost.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvDurability.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.ifvVisionRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.ifvGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.ifvAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.ifvGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj241711.game.ifvProductionCost.unsafeAddr, 4)
      thestream.writeData(obj241711.game.arrvDurability.unsafeAddr, 4)
      thestream.writeData(obj241711.game.arrvSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.arrvVisionRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.arrvGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.arrvAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.arrvProductionCost.unsafeAddr, 4)
      thestream.writeData(obj241711.game.arrvRepairRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.arrvRepairSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.helicopterDurability.unsafeAddr, 4)
      thestream.writeData(obj241711.game.helicopterSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.helicopterVisionRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.helicopterGroundAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj241711.game.helicopterAerialAttackRange.unsafeAddr,
                          8)
      thestream.writeData(obj241711.game.helicopterGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.helicopterAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.helicopterGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.helicopterAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.helicopterAttackCooldownTicks.unsafeAddr,
                          4)
      thestream.writeData(obj241711.game.helicopterProductionCost.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterDurability.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.game.fighterVisionRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.fighterGroundAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.fighterAerialAttackRange.unsafeAddr, 8)
      thestream.writeData(obj241711.game.fighterGroundDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterAerialDamage.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterGroundDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterAerialDefence.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterAttackCooldownTicks.unsafeAddr, 4)
      thestream.writeData(obj241711.game.fighterProductionCost.unsafeAddr, 4)
      thestream.writeData(obj241711.game.maxFacilityCapturePoint32s.unsafeAddr, 8)
      thestream.writeData(obj241711.game.facilityCapturePoint32sPerVehiclePerTick.unsafeAddr,
                          8)
      thestream.writeData(obj241711.game.facilityWidth.unsafeAddr, 8)
      thestream.writeData(obj241711.game.facilityHeight.unsafeAddr, 8)
      thestream.writeData(obj241711.game.base_tactical_nuclear_strike_cooldown.unsafeAddr,
                          4)
      thestream.writeData(obj241711.game.tactical_nuclear_strike_cooldown_decrease_per_control_center.unsafeAddr,
                          4)
      thestream.writeData(obj241711.game.max_tactical_nuclear_strike_damage.unsafeAddr,
                          8)
      thestream.writeData(obj241711.game.tactical_nuclear_strike_radius.unsafeAddr,
                          8)
      thestream.writeData(obj241711.game.tactical_nuclear_strike_delay.unsafeAddr,
                          4)
    else:
      discard
  of MessageType.MOVE:
    discard
    discard
    var tmp236399 = obj241711.move.exists
    thestream.writeData(tmp236399.unsafeAddr, 1)
    case obj241711.move.exists
    of true:
      discard
      thestream.writeData(obj241711.move.action.unsafeAddr, 1)
      thestream.writeData(obj241711.move.group.unsafeAddr, 4)
      thestream.writeData(obj241711.move.left.unsafeAddr, 8)
      thestream.writeData(obj241711.move.top.unsafeAddr, 8)
      thestream.writeData(obj241711.move.right.unsafeAddr, 8)
      thestream.writeData(obj241711.move.bottom.unsafeAddr, 8)
      thestream.writeData(obj241711.move.x.unsafeAddr, 8)
      thestream.writeData(obj241711.move.y.unsafeAddr, 8)
      thestream.writeData(obj241711.move.angle.unsafeAddr, 8)
      thestream.writeData(obj241711.move.factor.unsafeAddr, 8)
      thestream.writeData(obj241711.move.maxSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.move.maxAngularSpeed.unsafeAddr, 8)
      thestream.writeData(obj241711.move.vehicleType.unsafeAddr, 1)
      thestream.writeData(obj241711.move.facilityId.unsafeAddr, 8)
      thestream.writeData(obj241711.move.vehicleId.unsafeAddr, 8)
    else:
      discard
  of MessageType.PLAYER_CONTEXT:
    discard
    discard
    var tmp239278 = obj241711.playerContext.exists
    thestream.writeData(tmp239278.unsafeAddr, 1)
    case obj241711.playerContext.exists
    of true:
      discard
      discard
      var tmp237432 = obj241711.playerContext.player.flag
      thestream.writeData(tmp237432.unsafeAddr, 1)
      case obj241711.playerContext.player.flag
      of Exists:
        discard
        thestream.writeData(obj241711.playerContext.player.id.unsafeAddr, 8)
        thestream.writeData(obj241711.playerContext.player.me.unsafeAddr, 1)
        thestream.writeData(obj241711.playerContext.player.strategyCrashed.unsafeAddr,
                            1)
        thestream.writeData(obj241711.playerContext.player.score.unsafeAddr, 4)
        thestream.writeData(obj241711.playerContext.player.remainingActionCooldownTicks.unsafeAddr,
                            4)
        thestream.writeData(obj241711.playerContext.player.remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                            4)
        thestream.writeData(obj241711.playerContext.player.next_nuclear_strike_vehicle_id.unsafeAddr,
                            8)
        thestream.writeData(obj241711.playerContext.player.next_nuclear_strike_tick_index.unsafeAddr,
                            4)
        thestream.writeData(obj241711.playerContext.player.next_nuclear_strike_x.unsafeAddr,
                            8)
        thestream.writeData(obj241711.playerContext.player.next_nuclear_strike_y.unsafeAddr,
                            8)
      of FromId:
        discard
        thestream.writeData(obj241711.playerContext.player.sourceId.unsafeAddr, 8)
      else:
        discard
      discard
      var tmp237645 = obj241711.playerContext.world.exists
      thestream.writeData(tmp237645.unsafeAddr, 1)
      case obj241711.playerContext.world.exists
      of true:
        discard
        thestream.writeData(obj241711.playerContext.world.tickIndex.unsafeAddr, 4)
        thestream.writeData(obj241711.playerContext.world.tickCount.unsafeAddr, 4)
        thestream.writeData(obj241711.playerContext.world.width.unsafeAddr, 8)
        thestream.writeData(obj241711.playerContext.world.height.unsafeAddr, 8)
        var length237646 = len(obj241711.playerContext.world.players)
        thestream.writeData(length237646.unsafeAddr, 4)
        for index237647 in 0 ..<
            (len(obj241711.playerContext.world.players)):
          discard
          var tmp237432 = obj241711.playerContext.world.players[index237647].flag
          thestream.writeData(tmp237432.unsafeAddr, 1)
          case obj241711.playerContext.world.players[index237647].flag
          of Exists:
            discard
            thestream.writeData(obj241711.playerContext.world.players[index237647].id.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.players[index237647].me.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.players[index237647].strategyCrashed.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.players[index237647].score.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.players[index237647].next_nuclear_strike_x.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.players[index237647].next_nuclear_strike_y.unsafeAddr,
                                8)
          of FromId:
            discard
            thestream.writeData(obj241711.playerContext.world.players[index237647].sourceId.unsafeAddr,
                                8)
          else:
            discard
        var length237648 = len(obj241711.playerContext.world.newVehicles)
        thestream.writeData(length237648.unsafeAddr, 4)
        for index237649 in 0 ..<
            (len(obj241711.playerContext.world.newVehicles)):
          discard
          var tmp236845 = obj241711.playerContext.world.newVehicles[index237649].exists
          thestream.writeData(tmp236845.unsafeAddr, 1)
          case obj241711.playerContext.world.newVehicles[index237649].exists
          of true:
            discard
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].id.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].x.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].y.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].radius.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].player_id.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].durability.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].maxDurability.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].maxSpeed.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].visionRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].groundAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].groundDamage.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].aerialDamage.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].groundDefence.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].aerialDefence.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                                4)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].thetype.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].aerial.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.newVehicles[index237649].selected.unsafeAddr,
                                1)
            var length236846 = len(obj241711.playerContext.world.newVehicles[index237649].groups)
            thestream.writeData(length236846.unsafeAddr, 4)
            if len(obj241711.playerContext.world.newVehicles[index237649].groups) >
                0:
              thestream.writeData(obj241711.playerContext.world.newVehicles[
                  index237649].groups[0].unsafeAddr, len(obj241711.playerContext.world.newVehicles[
                  index237649].groups) * 4)
          else:
            discard
        var length237650 = len(obj241711.playerContext.world.vehicleUpdates)
        thestream.writeData(length237650.unsafeAddr, 4)
        for index237651 in 0 ..<
            (len(obj241711.playerContext.world.vehicleUpdates)):
          discard
          var tmp236651 = obj241711.playerContext.world.vehicleUpdates[index237651].exists
          thestream.writeData(tmp236651.unsafeAddr, 1)
          case obj241711.playerContext.world.vehicleUpdates[index237651].exists
          of true:
            discard
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].id.unsafeAddr, 8)
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].x.unsafeAddr, 8)
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].y.unsafeAddr, 8)
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].durability.unsafeAddr, 4)
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].remainingAttackCooldownTicks.unsafeAddr, 4)
            thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                index237651].selected.unsafeAddr, 1)
            var length236652 = len(obj241711.playerContext.world.vehicleUpdates[
                index237651].groups)
            thestream.writeData(length236652.unsafeAddr, 4)
            if len(obj241711.playerContext.world.vehicleUpdates[index237651].groups) >
                0:
              thestream.writeData(obj241711.playerContext.world.vehicleUpdates[
                  index237651].groups[0].unsafeAddr, len(obj241711.playerContext.world.vehicleUpdates[
                  index237651].groups) * 4)
          else:
            discard
        var length237652 = len(obj241711.playerContext.world.terrainByCellXY)
        thestream.writeData(length237652.unsafeAddr, 4)
        for index237655 in 0 ..<
            (len(obj241711.playerContext.world.terrainByCellXY)):
          var length237653 = len(obj241711.playerContext.world.terrainByCellXY[
              index237655])
          thestream.writeData(length237653.unsafeAddr, 4)
          for index237654 in 0 ..<
              (len(obj241711.playerContext.world.terrainByCellXY[index237655])):
            thestream.writeData(obj241711.playerContext.world.terrainByCellXY[
                index237655][index237654].unsafeAddr, 1)
        var length237656 = len(obj241711.playerContext.world.weatherByCellXY)
        thestream.writeData(length237656.unsafeAddr, 4)
        for index237659 in 0 ..<
            (len(obj241711.playerContext.world.weatherByCellXY)):
          var length237657 = len(obj241711.playerContext.world.weatherByCellXY[
              index237659])
          thestream.writeData(length237657.unsafeAddr, 4)
          for index237658 in 0 ..<
              (len(obj241711.playerContext.world.weatherByCellXY[index237659])):
            thestream.writeData(obj241711.playerContext.world.weatherByCellXY[
                index237659][index237658].unsafeAddr, 1)
        var length237660 = len(obj241711.playerContext.world.facilities)
        thestream.writeData(length237660.unsafeAddr, 4)
        for index237661 in 0 ..<
            (len(obj241711.playerContext.world.facilities)):
          discard
          var tmp237243 = obj241711.playerContext.world.facilities[index237661].flag
          thestream.writeData(tmp237243.unsafeAddr, 1)
          case obj241711.playerContext.world.facilities[index237661].flag
          of FromId:
            discard
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].sourceId.unsafeAddr,
                                8)
          of Exists:
            discard
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].id.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].theType.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].ownerPlayerId.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].left.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].top.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].capturePoints.unsafeAddr,
                                8)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].vehicleType.unsafeAddr,
                                1)
            thestream.writeData(obj241711.playerContext.world.facilities[index237661].productionProgress.unsafeAddr,
                                4)
          else:
            discard
      else:
        discard
    else:
      discard
  else:
    discard

proc serialize(obj241715: Message): string =
  let ss241717 = newStringStream()
  serialize(obj241715, ss241717)
  ss241717.data

proc deserialize(a241713: typedesc[Message]; thestream: Stream): Message =
  discard
  var tmp241708: type(result.kind)
  assert(1 ==
      thestream.readData(tmp241708.unsafeAddr, 1),
         "Stream was not provided enough data")
  if $(tmp241708) ==
      $(ord(tmp241708)) & " (invalid data!)":
    raise newException(ValueError, "Enum value is out of range: " &
        $(tmp241708) & "\x0ACorrect values are:\x0A" &
        "enum\x0A  UNKNOWN = 0, GAME_OVER = 1, AUTHENTICATION_TOKEN = 2, TEAM_SIZE = 3, PROTOCOL_VERSION = 4,\x0A  GAME_CONTEXT = 5, PLAYER_CONTEXT = 6, MOVE = 7")
  result.kind = tmp241708
  case result.kind
  of MessageType.AUTHENTICATION_TOKEN:
    discard
    var length241709: int32
    assert(4 ==
        thestream.readData(length241709.unsafeAddr, 4),
           "Stream was not provided enough data")
    result.token = newString(length241709)
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
    var tmp235199: type(result.game.exists)
    assert(1 ==
        thestream.readData(tmp235199.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.game.exists = tmp235199
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
    var tmp236399: type(result.move.exists)
    assert(1 ==
        thestream.readData(tmp236399.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.move.exists = tmp236399
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
    var tmp239278: type(result.playerContext.exists)
    assert(1 ==
        thestream.readData(tmp239278.unsafeAddr, 1),
           "Stream was not provided enough data")
    result.playerContext.exists = tmp239278
    case result.playerContext.exists
    of true:
      discard
      discard
      var tmp237432: type(result.playerContext.player.flag)
      assert(1 ==
          thestream.readData(tmp237432.unsafeAddr, 1),
             "Stream was not provided enough data")
      if $(tmp237432) ==
          $(ord(tmp237432)) & " (invalid data!)":
        raise newException(ValueError, "Enum value is out of range: " &
            $(tmp237432) & "\x0ACorrect values are:\x0A" &
            "enum\x0A  None = 0, Exists = 1, FromId = 127")
      result.playerContext.player.flag = tmp237432
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
      var tmp237645: type(result.playerContext.world.exists)
      assert(1 ==
          thestream.readData(tmp237645.unsafeAddr, 1),
             "Stream was not provided enough data")
      result.playerContext.world.exists = tmp237645
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
        var length237646: int32
        assert(4 ==
            thestream.readData(length237646.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.players = newSeq[Player](length237646)
        for index237647 in 0 ..<
            (len(result.playerContext.world.players)):
          discard
          var tmp237432: type(result.playerContext.world.players[index237647].flag)
          assert(1 ==
              thestream.readData(tmp237432.unsafeAddr, 1),
                 "Stream was not provided enough data")
          if $(tmp237432) ==
              $(ord(tmp237432)) & " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(tmp237432) & "\x0ACorrect values are:\x0A" &
                "enum\x0A  None = 0, Exists = 1, FromId = 127")
          result.playerContext.world.players[index237647].flag = tmp237432
          case result.playerContext.world.players[index237647].flag
          of Exists:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index237647].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.players[index237647].me.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.players[index237647].strategyCrashed.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index237647].score.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index237647].remainingActionCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index237647].remaining_nuclear_strike_cooldown_ticks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index237647].next_nuclear_strike_vehicle_id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.players[index237647].next_nuclear_strike_tick_index.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index237647].next_nuclear_strike_x.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index237647].next_nuclear_strike_y.unsafeAddr,
                                   8), "Stream was not provided enough data")
          of FromId:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.players[index237647].sourceId.unsafeAddr,
                                   8), "Stream was not provided enough data")
          else:
            discard
        var length237648: int32
        assert(4 ==
            thestream.readData(length237648.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.newVehicles = newSeq[Vehicle](length237648)
        for index237649 in 0 ..<
            (len(result.playerContext.world.newVehicles)):
          discard
          var tmp236845: type(result.playerContext.world.newVehicles[index237649].exists)
          assert(1 ==
              thestream.readData(tmp236845.unsafeAddr, 1),
                 "Stream was not provided enough data")
          result.playerContext.world.newVehicles[index237649].exists = tmp236845
          case result.playerContext.world.newVehicles[index237649].exists
          of true:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].x.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].y.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].radius.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].player_id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].durability.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].maxDurability.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].maxSpeed.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].visionRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].squaredVisionRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].groundAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].squaredGroundAttachRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].aerialAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].squaredAerialAttackRange.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].groundDamage.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].aerialDamage.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].groundDefence.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].aerialDefence.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].attackCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].remainingAttackCooldownTicks.unsafeAddr,
                                   4), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].thetype.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.newVehicles[index237649].thetype) ==
                $(ord(result.playerContext.world.newVehicles[index237649].thetype)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.newVehicles[index237649].thetype) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].aerial.unsafeAddr,
                                   1), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.newVehicles[index237649].selected.unsafeAddr,
                                   1), "Stream was not provided enough data")
            var length236846: int32
            assert(4 ==
                thestream.readData(length236846.unsafeAddr, 4),
                   "Stream was not provided enough data")
            result.playerContext.world.newVehicles[index237649].groups = newSeq[
                int32](length236846)
            if len(result.playerContext.world.newVehicles[index237649].groups) >
                0:
              assert(len(result.playerContext.world.newVehicles[index237649].groups) *
                  4 ==
                  thestream.readData(result.playerContext.world.newVehicles[
                  index237649].groups[0].unsafeAddr, len(result.playerContext.world.newVehicles[
                  index237649].groups) * 4), "Stream was not provided enough data")
          else:
            discard
        var length237650: int32
        assert(4 ==
            thestream.readData(length237650.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.vehicleUpdates = newSeq[VehicleUpdate](length237650)
        for index237651 in 0 ..<
            (len(result.playerContext.world.vehicleUpdates)):
          discard
          var tmp236651: type(result.playerContext.world.vehicleUpdates[index237651].exists)
          assert(1 ==
              thestream.readData(tmp236651.unsafeAddr, 1),
                 "Stream was not provided enough data")
          result.playerContext.world.vehicleUpdates[index237651].exists = tmp236651
          case result.playerContext.world.vehicleUpdates[index237651].exists
          of true:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].id.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].x.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].y.unsafeAddr, 8),
                   "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].durability.unsafeAddr, 4),
                   "Stream was not provided enough data")
            assert(4 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].remainingAttackCooldownTicks.unsafeAddr, 4),
                   "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.vehicleUpdates[
                index237651].selected.unsafeAddr, 1),
                   "Stream was not provided enough data")
            var length236652: int32
            assert(4 ==
                thestream.readData(length236652.unsafeAddr, 4),
                   "Stream was not provided enough data")
            result.playerContext.world.vehicleUpdates[index237651].groups = newSeq[
                int32](length236652)
            if len(result.playerContext.world.vehicleUpdates[index237651].groups) >
                0:
              assert(len(result.playerContext.world.vehicleUpdates[index237651].groups) *
                  4 ==
                  thestream.readData(result.playerContext.world.vehicleUpdates[
                  index237651].groups[0].unsafeAddr, len(result.playerContext.world.vehicleUpdates[
                  index237651].groups) * 4), "Stream was not provided enough data")
          else:
            discard
        var length237652: int32
        assert(4 ==
            thestream.readData(length237652.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.terrainByCellXY = newSeq[seq[TerrainType]](
            length237652)
        for index237655 in 0 ..<
            (len(result.playerContext.world.terrainByCellXY)):
          var length237653: int32
          assert(4 ==
              thestream.readData(length237653.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.playerContext.world.terrainByCellXY[index237655] = newSeq[
              TerrainType](length237653)
          for index237654 in 0 ..<
              (len(result.playerContext.world.terrainByCellXY[index237655])):
            assert(1 ==
                thestream.readData(result.playerContext.world.terrainByCellXY[
                index237655][index237654].unsafeAddr, 1),
                   "Stream was not provided enough data")
            if $(result.playerContext.world.terrainByCellXY[index237655][index237654]) ==
                $(ord(result.playerContext.world.terrainByCellXY[index237655][
                index237654])) & " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.terrainByCellXY[index237655][
                  index237654]) & "\x0ACorrect values are:\x0A" &
                  "enum\x0A  PLAIN = 0, SWAMP = 1, FOREST = 2, UNKNOWN = 255")
        var length237656: int32
        assert(4 ==
            thestream.readData(length237656.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.weatherByCellXY = newSeq[seq[WeatherType]](
            length237656)
        for index237659 in 0 ..<
            (len(result.playerContext.world.weatherByCellXY)):
          var length237657: int32
          assert(4 ==
              thestream.readData(length237657.unsafeAddr, 4),
                 "Stream was not provided enough data")
          result.playerContext.world.weatherByCellXY[index237659] = newSeq[
              WeatherType](length237657)
          for index237658 in 0 ..<
              (len(result.playerContext.world.weatherByCellXY[index237659])):
            assert(1 ==
                thestream.readData(result.playerContext.world.weatherByCellXY[
                index237659][index237658].unsafeAddr, 1),
                   "Stream was not provided enough data")
            if $(result.playerContext.world.weatherByCellXY[index237659][index237658]) ==
                $(ord(result.playerContext.world.weatherByCellXY[index237659][
                index237658])) & " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.weatherByCellXY[index237659][
                  index237658]) & "\x0ACorrect values are:\x0A" &
                  "enum\x0A  CLEAR = 0, CLOUD = 1, RAIN = 2, UNKNOWN = 255")
        var length237660: int32
        assert(4 ==
            thestream.readData(length237660.unsafeAddr, 4),
               "Stream was not provided enough data")
        result.playerContext.world.facilities = newSeq[Facility](length237660)
        for index237661 in 0 ..<
            (len(result.playerContext.world.facilities)):
          discard
          var tmp237243: type(result.playerContext.world.facilities[index237661].flag)
          assert(1 ==
              thestream.readData(tmp237243.unsafeAddr, 1),
                 "Stream was not provided enough data")
          if $(tmp237243) ==
              $(ord(tmp237243)) & " (invalid data!)":
            raise newException(ValueError, "Enum value is out of range: " &
                $(tmp237243) & "\x0ACorrect values are:\x0A" &
                "enum\x0A  None = 0, Exists = 1, FromId = 127")
          result.playerContext.world.facilities[index237661].flag = tmp237243
          case result.playerContext.world.facilities[index237661].flag
          of FromId:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].sourceId.unsafeAddr,
                                   8), "Stream was not provided enough data")
          of Exists:
            discard
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].id.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.facilities[index237661].theType.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.facilities[index237661].theType) ==
                $(ord(result.playerContext.world.facilities[index237661].theType)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.facilities[index237661].theType) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  CONTROL_CENTER = 0, VEHICLE_FACTORY = 1, UNKNOWN = 255")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].ownerPlayerId.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].left.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].top.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(8 ==
                thestream.readData(result.playerContext.world.facilities[index237661].capturePoints.unsafeAddr,
                                   8), "Stream was not provided enough data")
            assert(1 ==
                thestream.readData(result.playerContext.world.facilities[index237661].vehicleType.unsafeAddr,
                                   1), "Stream was not provided enough data")
            if $(result.playerContext.world.facilities[index237661].vehicleType) ==
                $(ord(result.playerContext.world.facilities[index237661].vehicleType)) &
                " (invalid data!)":
              raise newException(ValueError, "Enum value is out of range: " &
                  $(result.playerContext.world.facilities[index237661].vehicleType) &
                  "\x0ACorrect values are:\x0A" &
                  "enum\x0A  ARRV = 0, FIGHTER = 1, HELICOPTER = 2, IFV = 3, TANK = 4, UNKNOWN = 255")
            assert(4 ==
                thestream.readData(result.playerContext.world.facilities[index237661].productionProgress.unsafeAddr,
                                   4), "Stream was not provided enough data")
          else:
            discard
      else:
        discard
    else:
      discard
  else:
    discard
proc size(obj245443: OptionalLen): Natural =
  4

proc serialize(obj245444: OptionalLen; thestream: Stream) =
  thestream.writeData(obj245444.unsafeAddr, 4)

proc serialize(obj245448: OptionalLen): string =
  let ss245450 = newStringStream()
  serialize(obj245448, ss245450)
  ss245450.data

proc deserialize(a245446: typedesc[OptionalLen]; thestream: Stream): OptionalLen =
  assert(4 ==
      thestream.readData(result.unsafeAddr, 4),
         "Stream was not provided enough data")
