ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('valley:createweapon', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem('paczka_elementy').count >= 1 then 
        xPlayer.triggerEvent('valley:progbar')
        Wait(15000)
        xPlayer.addInventoryItem('WEAPON_COMBATPISTOL', '1')
        xPlayer.removeInventoryItem('paczka_elementy', '1')
        xPlayer.showNotification('Wytworzono broń palną')
    else
        xPlayer.showNotification('Nie posiadasz paczki z elementami')
    end
end)