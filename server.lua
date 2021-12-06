ESX.RegisterUsableItem('raaputusarpa', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cash = math.random(150, 500)
    local chance = math.random(1,50)

    if chance == 2 then
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Voitit $' .. cash .. ' raaputusarvasta'})
        xPlayer.addMoney(cash)
        end
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Et voittanut mitään.'})
    end

    xPlayer.removeInventoryItem('raaputusarpa', 1)
end)
