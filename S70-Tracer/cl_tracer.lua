
-- ░██████╗███████╗░█████╗░  ░██████╗░█████╗░██████╗░██╗██████╗░░██████╗
-- ██╔════╝╚════██║██╔══██╗  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗██╔════╝
-- ╚█████╗░░░░░██╔╝██║░░██║  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝╚█████╗░
-- ░╚═══██╗░░░██╔╝░██║░░██║  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░╚═══██╗
-- ██████╔╝░░██╔╝░░╚█████╔╝  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░██████╔╝
-- ╚═════╝░░░╚═╝░░░░╚════╝░  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═════╝░

local tracerEffect = "core" -- Replace with the actual effect name from your .ypt file
local tracerDict = "core" -- Change if your YPT uses a different dictionary

function LoadParticleDict(dict)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do
        Wait(10)
    end
end

RegisterNetEvent("s70_tracer:showTracer")
AddEventHandler("s70_tracer:showTracer", function(source, startCoords, endCoords)
    LoadParticleDict(tracerDict)
    
    UseParticleFxAssetNextCall(tracerDict)
    local tracer = StartParticleFxNonLoopedAtCoord(tracerEffect, startCoords.x, startCoords.y, startCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false)
end)

CreateThread(function()
    while true do
        Wait(0)
        if IsPedShooting(PlayerPedId()) then
            local weapon = GetSelectedPedWeapon(PlayerPedId())
            local startCoords = GetEntityCoords(PlayerPedId())
            local endCoords = GetPedLastWeaponImpactCoord(PlayerPedId())

            if endCoords then
                TriggerServerEvent("s70_tracer:syncTracer", startCoords, endCoords)
            end
        end
    end
end)
