function gadget:GetInfo()
	return {
		name = 'Area Timed Damage Handler',
		desc = '',
		author = 'Damgam',
		version = '1.0',
		date = '2022',
		license = 'GNU GPL, v2 or later',
		layer = 0,
		enabled = true
	}
end

if not gadgetHandler:IsSyncedCode() then
    return
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ceg - ceg to spawn when explosion happens
-- damageCeg - ceg to spawn when damage is dealt
-- time - how long the effect should stay
-- damage - damage per second
-- range - from center to edge, in elmos
-- resistance - defines which units are resistant to this type of damage when it matches with 'areadamageresistance' customparameter in a unit.

local TimedDamageWeaponsNames = {
    ['raptor_land_assault_acid_t2_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_arty_acid_t2_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 200,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_arty_acid_t4_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 200,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_air_bomber_acid_t2_v1_acidbomb'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_land_swarmer_acids_t2_v1_acidspit'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_swarmer_acid_t2_v1_acidspit'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_assault_acid_t2_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_turret_acid_t2_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 200,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_turret_acid_t3_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 200,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_turret_acid_t4_v1_acidspit'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 200,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_matriarch_acid_acidgoo'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },
    ['raptor_matriarch_acid_spike_acid_blob'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },


	['leegmech_aimhull'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['legbart_clusternapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['legbar_clusternapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['leginc_heatraylarge'] = {
        ceg = "burnflamexm",
        damageCeg = "burnflamexl",
        time = 1,
        damage = 0,
        range = 37,
        resistance = "test",
    },
    ['legbastion_pineappleofdoom'] = {
        ceg = "fire-incinerator",
        damageCeg = "burnflamexl",
        time = 2,
        damage = 0,
        range = 50,
        resistance = "test",
    },
	['leginf_rapidnapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['legnap_napalmbombs'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 15,
        damage = 30,
        range = 150,
        resistance = "test",
    },
	['legcom_napalmmissile'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 75,
        range = 100,
        resistance = "test",
    },
	['legcomlvl2_napalmmissile'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 75,
        range = 100,
        resistance = "test",
    },
	['legcomlvl3_napalmmissile'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 150,
        range = 150,
        resistance = "test",
    },
	['legcomlvl4_napalmmissile'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 150,
        range = 150,
        resistance = "test",
    },
	['legbart_scav_clusternapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['legbar_scav_clusternapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
		damage = 30,
        range = 70,
        resistance = "test",
    },
	['leginc_scav_heatraylarge'] = {
        ceg = "fire-incinerator",
        damageCeg = "burnflame",
        time = 1,
        damage = 0,
        range = 37,
        resistance = "test",
    },
	['leginf_scav_rapidnapalm'] = {
        ceg = "fire-area-75",
        damageCeg = "burnflamexl",
        time = 10,
        damage = 30,
        range = 75,
        resistance = "test",
    },
	['legnap_scav_napalmbombs'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 15,
        damage = 30,
        range = 150,
        resistance = "test",
    },
	['legperdition_napalmmissile'] = {
        ceg = "fire-area-150",
        damageCeg = "burnflamexl",
        time = 15,
        damage = 175,
        range = 150,
        resistance = "test",
    },
}
-- convert weaponname -> weaponDefID
local TimedDamageWeapons = {}
for name, params in pairs(TimedDamageWeaponsNames) do
	if WeaponDefNames[name] then
		TimedDamageWeapons[WeaponDefNames[name].id] = params
	end
end
TimedDamageWeaponsNames = nil

local TimedDamageDyingUnitsNames = {
    ['raptor_land_assault_acid_t2_v1'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_arty_acid_t2_v1'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_arty_acid_t4_v1'] = {
        ceg = "acid-area-150",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 100,
        range = 150,
        resistance = "_RAPTORACID_",
    },
    ['raptor_land_swarmer_acids_t2_v1'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },
    ['raptor_allterrain_swarmer_acid_t2_v1'] = {
        ceg = "acid-area-75",
        damageCeg = "acid-damage-gen",
        time = 10,
        damage = 40,
        range = 75,
        resistance = "_RAPTORACID_",
    },
}
-- convert unitname -> unitDefID
local TimedDamageDyingUnits = {}
for name, params in pairs(TimedDamageDyingUnitsNames) do
	if UnitDefNames[name] then
		TimedDamageDyingUnits[UnitDefNames[name].id] = params
	end
end
TimedDamageDyingUnitsNames = nil

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- local aliveExplosions = {}

-- local function getRandomFreeExplosionID()
--     local attempts = 0
--     repeat
--         attempts = attempts + 1
--         local number = math.random(1,100000)
--         if not aliveExplosions[number] then
--             return number
--         end
--     until attempts >= 100000
--     return nil
-- end

local aliveExplosions = {}
local aliveExplosionsCounter = 1

function gadget:Initialize()
    for id, a in pairs(TimedDamageWeapons) do
        Script.SetWatchExplosion(id, true)
    end
end

function gadget:Explosion(weaponDefID, px, py, pz, AttackerID, ProjectileID)
    if TimedDamageWeapons[weaponDefID] then
        local currentTime = Spring.GetGameSeconds()
        if py <= math.max(Spring.GetGroundHeight(px, pz), 0) + TimedDamageWeapons[weaponDefID].range*0.5 then
            aliveExplosions[aliveExplosionsCounter] = {
                x = px,
                y = math.max(Spring.GetGroundHeight(px, pz), 0),
                z = pz,
                endTime = currentTime + TimedDamageWeapons[weaponDefID].time,
                damage = TimedDamageWeapons[weaponDefID].damage,
                range = TimedDamageWeapons[weaponDefID].range,
                ceg = TimedDamageWeapons[weaponDefID].ceg,
                cegSpawned = false,
                damageCeg = TimedDamageWeapons[weaponDefID].damageCeg,
                resistance = TimedDamageWeapons[weaponDefID].resistance,
            }
            aliveExplosionsCounter = aliveExplosionsCounter + 1
        end
    end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
    if TimedDamageDyingUnits[unitDefID] then
        local currentTime = Spring.GetGameSeconds()
        local px, py, pz = Spring.GetUnitPosition(unitID)
        if py <= math.max(Spring.GetGroundHeight(px, pz), 0) + TimedDamageDyingUnits[unitDefID].range*0.5 then
            aliveExplosions[aliveExplosionsCounter] = {
                x = px,
                y = math.max(Spring.GetGroundHeight(px, pz), 0),
                z = pz,
                endTime = currentTime + TimedDamageDyingUnits[unitDefID].time,
                damage = TimedDamageDyingUnits[unitDefID].damage,
                range = TimedDamageDyingUnits[unitDefID].range,
                ceg = TimedDamageDyingUnits[unitDefID].ceg,
                cegSpawned = false,
                damageCeg = TimedDamageDyingUnits[unitDefID].damageCeg,
                resistance = TimedDamageDyingUnits[unitDefID].resistance,
            }
            aliveExplosionsCounter = aliveExplosionsCounter + 1
        end
    end
end

function gadget:GameFrame(frame)
    if frame%22 == 10 then
        local currentTime = Spring.GetGameSeconds()
        for explosionID, explosionStats in pairs(aliveExplosions) do
        --for i = 1,#aliveExplosions do
            if explosionStats.endTime >= currentTime then
                local x = explosionStats.x
                local z = explosionStats.z
                local y = explosionStats.y or Spring.GetGroundHeight(x,z)
                if explosionStats.cegSpawned == false then
                    Spring.SpawnCEG(explosionStats.ceg, x, y + 8, z, 0, 0, 0)
                    explosionStats.cegSpawned = true
                end
                local damage = explosionStats.damage*0.733
                local range = explosionStats.range
                local resistance = explosionStats.resistance
                local unitsInRange = Spring.GetUnitsInSphere(x, y, z, range)
                for j = 1,#unitsInRange do
                    local unitID = unitsInRange[j]
                    local unitDefID = Spring.GetUnitDefID(unitID)
                    if (not UnitDefs[unitDefID].canFly) and (not (UnitDefs[unitDefID].customParams and UnitDefs[unitDefID].customParams.areadamageresistance and string.find(UnitDefs[unitDefID].customParams.areadamageresistance, resistance))) then
                        local health = Spring.GetUnitHealth(unitID)
                        if health > damage then
                            Spring.SetUnitHealth(unitID, health - damage)
                        else
                            Spring.DestroyUnit(unitID, false, false)
                        end
                        local ux, uy, uz = Spring.GetUnitPosition(unitID)
                        Spring.SpawnCEG(explosionStats.damageCeg, ux, uy + 8, uz, 0, 0, 0)
                    end
                end
                local featuresInRange = Spring.GetFeaturesInSphere(x, y, z, range)
                for j = 1,#featuresInRange do
                    local featureID = featuresInRange[j]
                    local health = Spring.GetFeatureHealth(featureID)
                    if health > damage then
                        Spring.SetFeatureHealth(featureID, health - damage)
                    else
                        Spring.DestroyFeature(featureID)
                    end
                    local ux, uy, uz = Spring.GetFeaturePosition(featureID)
                    Spring.SpawnCEG(explosionStats.damageCeg, ux, uy + 8, uz, 0, 0, 0)
                end
            else -- This explosion is outdated, we can remove it from the list
                aliveExplosions[explosionID] = nil
            end
        end
    end
end
