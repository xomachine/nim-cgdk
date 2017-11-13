from nesm import serializable

serializable:
  type
    CachedFlag* = enum
      None = 0,
      Exists = 1,
      FromId = 127
    Game* = object
      case exists*: bool
      of true:
        randomSeed*: int64
        tickCount*: int32
        worldWidth*: float64
        worldHeight*: float64
        fogOfWarEnabled*: bool
        victoryScore*: int32
        facilityCaptureScore*: int32
        vehicleEliminationScore*: int32
        actionDetectionInterval*: int32
        baseActionCount*: int32
        additionalActionCountPerControlCenter*: int32
        maxUnitGroup*: int32
        terrainWeatherMapColumnCount*: int32
        terrainWeatherMapRowCount*: int32
        plainTerrainVisionFactor*: float64
        plainTerrainStealthFactor*: float64
        plainTerrainSpeedFactor*: float64
        swampTerrainVisionFactor*: float64
        swampTerrainStealthFactor*: float64
        swampTerrainSpeedFactor*: float64
        forestTerrainVisionFactor*: float64
        forestTerrainStealthFactor*: float64
        forestTerrainSpeedFactor*: float64
        clearWeatherVisionFactor*: float64
        clearWeatherStealthFactor*: float64
        clearWeatherSpeedFactor*: float64
        cloudWeatherVisionFactor*: float64
        cloudWeatherStealthFactor*: float64
        cloudWeatherSpeedFactor*: float64
        rainWeatherVisionFactor*: float64
        rainWeatherStealthFactor*: float64
        rainWeatherSpeedFactor*: float64
        vehicleRadius*: float64
        tankDurability*: int32
        tankSpeed*: float64
        tankVisionRange*: float64
        tankGroundAttackRange*: float64
        tankAerialAttackRange*: float64
        tankGroundDamage*: int32
        tankAerialDamage*: int32
        tankGroundDefence*: int32
        tankAerialDefence*: int32
        tankAttackCooldownTicks*: int32
        tankProductionCost*: int32
        ifvDurability*: int32
        ifvSpeed*: float64
        ifvVisionRange*: float64
        ifvGroundAttackRange*: float64
        ifvAerialAttackRange*: float64
        ifvGroundDamage*: int32
        ifvAerialDamage*: int32
        ifvGroundDefence*: int32
        ifvAerialDefence*: int32
        ifvAttackCooldownTicks*: int32
        ifvProductionCost*: int32
        arrvDurability*: int32
        arrvSpeed*: float64
        arrvVisionRange*: float64
        arrvGroundDefence*: int32
        arrvAerialDefence*: int32
        arrvProductionCost*: int32
        arrvRepairRange*: float64
        arrvRepairSpeed*: float64
        helicopterDurability*: int32
        helicopterSpeed*: float64
        helicopterVisionRange*: float64
        helicopterGroundAttackRange*: float64
        helicopterAerialAttackRange*: float64
        helicopterGroundDamage*: int32
        helicopterAerialDamage*: int32
        helicopterGroundDefence*: int32
        helicopterAerialDefence*: int32
        helicopterAttackCooldownTicks*: int32
        helicopterProductionCost*: int32
        fighterDurability*: int32
        fighterSpeed*: float64
        fighterVisionRange*: float64
        fighterGroundAttackRange*: float64
        fighterAerialAttackRange*: float64
        fighterGroundDamage*: int32
        fighterAerialDamage*: int32
        fighterGroundDefence*: int32
        fighterAerialDefence*: int32
        fighterAttackCooldownTicks*: int32
        fighterProductionCost*: int32
        maxFacilityCapturePoint32s*: float64
        facilityCapturePoint32sPerVehiclePerTick*: float64
        facilityWidth*: float64
        facilityHeight*: float64
        base_tactical_nuclear_strike_cooldown*: int32
        tactical_nuclear_strike_cooldown_decrease_per_control_center*: int32
        max_tactical_nuclear_strike_damage*: float64
        tactical_nuclear_strike_radius*: float64
        tactical_nuclear_strike_delay*: int32
      else: discard
