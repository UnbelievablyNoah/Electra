--[[
    Electra Client Loader

    "No, electricity will not make it load faster."
]]

local player = game:GetService('Players').LocalPlayer

local h = script:WaitForChild('#cake4president', 60)
if not h then player:Kick('Electra - Disconnected:\nClient took too long') end

local module = h:FindFirstChild('Client')
if not module then player:Kick('Electra - Disconnected:\nClient took too long') end

require(module)(script, tick())
