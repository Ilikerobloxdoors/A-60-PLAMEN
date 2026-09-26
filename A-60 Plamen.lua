local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "A-60",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/A-60-PLAMEN/main/A-60%20%28PLAMEN6789%29.rbxm",

    Speed = 700,
    DelayTime = 4,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.5,
    },

    Cycles = {
        Min = 10,
        Max = 20,
        WaitTime = 2.7,
    },

    CamShake = {
        true,
        {3.5, 20, 0.1, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11710144220",
            Image2 = "rbxassetid://11360386086",

            Shake = true,

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                true,
                Min = 2,
                Max = 6,
            },
        },
    },

    CustomDialog = {
        "You died to A-60..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("A-60 has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("A-60 has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("A-60 has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("A-60 has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("A-60 entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at A-60")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to A-60.")
end

------------------------

Creator.runEntity(entity)
