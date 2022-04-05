ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

RegisterServerEvent("jav_dispatch:sendAlert")
AddEventHandler("jav_dispatch:sendAlert", function(text, coords, id)
    TriggerClientEvent("jav_dispatch:alertToClient", -1, text, coords, id)
end)

RegisterServerEvent("jav_dispatch:sendAmbuAlert")
AddEventHandler("jav_dispatch:sendAmbuAlert", function(text, coords, id)
    TriggerClientEvent("jav_dispatch:auxToClient", -1, text, coords, id)
end)

RegisterServerEvent("jav_dispatch:sendMecaAlert")
AddEventHandler("jav_dispatch:sendMecaAlert", function(text, coords, id)
    TriggerClientEvent("jav_dispatch:mecaToClient", -1, text, coords, id)
end)

RegisterServerEvent("jav_dispatch:sendVehRob")
AddEventHandler("jav_dispatch:sendVehRob", function(coords, model, color, id)
    TriggerClientEvent("jav_dispatch:vehToClient", -1, coords, model, color, id)
end)

RegisterServerEvent("jav_dispatch:sendTaxiaAlert")
AddEventHandler("jav_dispatch:sendTaxiaAlert", function(text, coords, id)
    TriggerClientEvent("jav_dispatch:taxiToClient", -1, text, coords, id)
end)

RegisterServerEvent("jav_dispatch:sendRobaAlert")
AddEventHandler("jav_dispatch:sendRobaAlert", function(type, coords, id)
    TriggerClientEvent("jav_dispatch:robberyToClient", -1, type, coords, id)
end)
