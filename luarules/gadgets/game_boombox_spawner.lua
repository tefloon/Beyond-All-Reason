function gadget:GetInfo()
    return {
        name      = "Boombox Spawner",
        desc      = "Spawns Easter Egg Boomboxes on the map that play special music when captured",
        author    = "Damgam",
        date      = "2024",
        license   = "GNU GPL, v2 or later",
        layer     = 0,
        enabled   = true
    }
end

--if true then
--    return -- kill it for now
--end

if not gadgetHandler:IsSyncedCode() then
    return
end

local AliveBoomboxes = {}
local SelfDQueue = {}
local positionCheckLibrary = VFS.Include("luarules/utilities/damgam_lib/position_checks.lua")

function getNearestBlocker(x, z)
	local lowestDist = math.huge
	local metalSpots = GG["resource_spot_finder"] and GG["resource_spot_finder"].metalSpotsList or nil
	if metalSpots then
		for i = 1, #metalSpots do
			local spot = metalSpots[i]
            if spot then
			    local dx, dz = x - spot.x, z - spot.z
			    local dist = dx * dx + dz * dz
			    if dist < lowestDist then
			    	lowestDist = dist
			    end
            end
		end
    end
    local features = Spring.GetFeaturesInCylinder(x, z, 192)
    for index, featureID in pairs(features) do
        if FeatureDefs[Spring.GetFeatureDefID(featureID)].name == "geovent" or FeatureDefs[Spring.GetFeatureDefID(featureID)].geoThermal then
            lowestDist = 0
        end
    end
    local units = Spring.GetUnitsInCylinder(x, z, 192)
    if #Spring.GetUnitsInCylinder(x, z, 192) > 0 then
        lowestDist = 0
    end
    return math.sqrt(lowestDist)
end

function gadget:GameFrame(frame)
    if frame == 1 then
        for i = 1,10*#Spring.GetTeamList() do
            if math.random(1,10000) == 1 then 
                for j = 1,1000 do
                    local posx = math.random(math.floor(Game.mapSizeX*0.02), math.ceil(Game.mapSizeX*0.98))
                    local posz = math.random(math.floor(Game.mapSizeZ*0.02), math.ceil(Game.mapSizeZ*0.98))
                    local posy = Spring.GetGroundHeight(posx, posz)
                    local blockerDistance = getNearestBlocker(posx, posz)
                    if posy > 0 and positionCheckLibrary.FlatAreaCheck(posx, posy, posz, 64, 25, true) and blockerDistance > 196 then
                        local boomboxID = Spring.CreateUnit("boombox", posx, posy, posz, "west", Spring.GetGaiaTeamID())
                        if boomboxID then
                            AliveBoomboxes[boomboxID] = true
                            break
                        end
                    end
                end
            end
        end

        for unitID, _ in pairs(AliveBoomboxes) do
            Spring.SetUnitNeutral(unitID, true)
            Spring.SetUnitStealth(unitID, true)
            Spring.SetUnitNoMinimap(unitID, true)
            Spring.SetUnitMaxHealth(unitID, 10000)
            Spring.SetUnitHealth(unitID, 10000)
            Spring.SetUnitSensorRadius(unitID, 'los', 0)
            Spring.SetUnitSensorRadius(unitID, 'airLos', 0)
            Spring.SetUnitSensorRadius(unitID, 'radar', 0)
            Spring.SetUnitSensorRadius(unitID, 'sonar', 0)
            Spring.SetUnitAlwaysVisible(unitID, true)
        end
    end
    if frame%5 == 0 then
        for unitID, time in pairs(SelfDQueue) do
            if Spring.GetGameFrame() > time then
                Spring.DestroyUnit(unitID)
                SelfDQueue[unitID] = nil
                AliveBoomboxes[unitID] = nil
                break
            end
        end
    end
end

function gadget:UnitTaken(unitID, unitDefID, oldTeam, newTeam)
    if UnitDefs[unitDefID].name == "boombox" then
        SelfDQueue[unitID] = Spring.GetGameFrame()+90
    end
end

function gadget:AllowUnitTransfer(unitID, unitDefID, oldTeam, newTeam, capture)
    if UnitDefs[unitDefID].name == "boombox" and oldTeam ~= Spring.GetGaiaTeamID() then
        return false
    else
        return true
    end
end

function gadget:UnitDestroyed(unitID, unitDefID)
    SelfDQueue[unitID] = nil
    AliveBoomboxes[unitID] = nil
end

