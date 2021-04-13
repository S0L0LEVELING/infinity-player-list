-- THIS SCRIPT WAS MADE BY ayznnnn#3964 for WaveShield AntiCheat community
-- You aren't allowed to rename the callback name
-- ONLY WORK WITH ESX, sorry others :(
-- WARNING : you can't just copy and paste this script, you need minimal knowledge

-- http://www.waveshield.xyz/
-- https://discord.com/invite/CXZwrZx

-- SERVER SIDE !

-- register the callback
ESX.RegisterServerCallback("WaveShield:GetInfinityPlayerList",function(source,cb)
    local playerlist = {}
    for _,v in pairs(GetPlayers()) do
        table.insert(playerlist, {
            name = GetPlayerName(v),
            id = v
        })
    end
    cb(playerlist or {})
end)




-- CLIENT SIDE !

local AllPlayers = {}

-- execute this callback to have the list of all the players on the client side
-- the list name will be "AllPlayers"
-- you will have to execute this every time you want to refresh the player list ( like when you open a menu )
ESX.TriggerServerCallback("WaveShield:GetInfinityPlayerList", function(cb) 
    AllPlayers = cb
end)


-- and if you want to perform any actions with the player list
for k,v in pairs(AllPlayers) do -- for each players do :
    print("---")
    print("Player ID : "..v.id) -- use v.id to get each player ID
    print("Player Name : "..v.name) -- use v.name to get each player names
end