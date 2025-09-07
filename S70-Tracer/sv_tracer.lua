RegisterNetEvent("s70_tracer:syncTracer")
AddEventHandler("s70_tracer:syncTracer", function(startCoords, endCoords)
    TriggerClientEvent("s70_tracer:showTracer", -1, source, startCoords, endCoords)
end)
