
ESX = exports["es_extended"]:getSharedObject()


local on = false
function display(bool)
    on = bool
    SetNuiFocus(on, on)
    SendNUIMessage({
        status = on,
    })
end

RegisterNUICallback('exit', function(data)
    display(false)
end)

RegisterNUICallback('accept', function(data)
    TriggerServerEvent('valley:createweapon')
    display(false)
end)

Citizen.CreateThread(function()
    exports.qtarget:AddBoxZone("crafting", vector3(-2166.88, 5196.87, 17.03), 1, 1, {
        name="crafting",
        heading=0.0,
        debugPoly=false,
        minZ = 13.43,
        maxZ = 17.43
        }, {
            options = {
                {
                    event = "valley:opencrafting",
                    icon = "fas fa-gun",
                    label = "Otwórz stół",
                },
            },
            distance = 3.5
    })
end)

AddEventHandler('valley:opencrafting', function()
    display(true)
end)


Citizen.CreateThread(function()
    ESX.Game.SpawnObject('prop_tool_bench02', vector3(-2166.764, 5196.922, 16.87-0.95), function(object)
    end)
end)

RegisterNetEvent('valley:progbar', function()
    exports["esx_progressbar"]:Progressbar("Tworzenie broni", 15000,{
        FreezePlayer = true, 
        animation ={
            type = "anim",
            dict = "mini@repair", 
            lib ="fixing_a_ped"
        },
    })
end)