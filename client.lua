ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterCommand('seat', function(src, args, raw)
    if IsPedInAnyVehicle(PlayerPedId()) and IsVehicleSeatFree(vehicle) then
        SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), args[1])
        ESX.ShowNotification('~g~Zmieniono siedzenie')
    else
        ESX.ShowNotification('~r~Nie jesteś w pojeździe lub miejsce jest zajęte')
    end
end)
