GLOBAL.setmetatable(env, { __index = function(a, b) return GLOBAL.rawget(GLOBAL, b) end })

local function MakeItRain()
    -- Ensure we're in the master simulation
    if TheWorld.ismastersim then
        -- Check if it's not raining
        if not TheWorld.state.israining then
            -- Make it rain
            TheWorld:PushEvent("ms_forceprecipitation", true)
        end
    end
end

local timeinterval = GetModConfigData("amenosuki")

local function StartAlwaysRain()
    -- Run the MakeItRain function every 30 seconds
    TheWorld:DoPeriodicTask(timeinterval, MakeItRain)
end

-- Start the periodic task to always make it rain when the world initializes
AddPrefabPostInit("world", function(inst)
    inst:DoTaskInTime(0, StartAlwaysRain)
end)
local function RemoveSleeperComponent(inst)
    if inst.components.sleeper then
        inst:RemoveComponent("sleeper")
    end

end

AddPrefabPostInit("crow", RemoveSleeperComponent)
AddPrefabPostInit("robin", RemoveSleeperComponent)
AddPrefabPostInit("robin_winter", RemoveSleeperComponent)
AddPrefabPostInit("canary", RemoveSleeperComponent)