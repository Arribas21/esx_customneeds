ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('pastilla', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('pastilla', 1)

	TriggerClientEvent('esx_status:add', source, 'exp', 25000)
	TriggerClientEvent('esx_basicneeds:onExp', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pastilla'))

end)
