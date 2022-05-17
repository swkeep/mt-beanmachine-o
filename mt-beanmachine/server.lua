local QBCore = exports['qb-core']:GetCoreObject()

------------ Beber cenas e coisas -----------------

QBCore.Functions.CreateUseableItem("bean-cafe", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cafe', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-latte", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-latte', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cappuccino", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cappuccino', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-mocha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-mocha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberCafe', source)
        Player.Functions.RemoveItem('bean-cha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croasant-ovo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerBolo', source)
        Player.Functions.RemoveItem('croasant-ovo', 1)
    end
end)

QBCore.Functions.CreateUseableItem("muffin-chocolate", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerBolo', source)
        Player.Functions.RemoveItem('muffin-chocolate', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-morango", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-morango', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cupcake-baunilha", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerBolo', source)
        Player.Functions.RemoveItem('cupcake-baunilha', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-nutela", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-nutela', 1)
    end
end)

QBCore.Functions.CreateUseableItem("panqueca-mel", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:ComerPanquecas', source)
        Player.Functions.RemoveItem('panqueca-mel', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-cola", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-cola', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-agua", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-agua', 1)
    end
end)

QBCore.Functions.CreateUseableItem("bean-sprunk", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('bean-sprunk', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-pessego", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-pessego', 1)
    end
end)

QBCore.Functions.CreateUseableItem("ice-tea-limao", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('mt-beanmachine:client:BeberRefrigerantes', source)
        Player.Functions.RemoveItem('ice-tea-limao', 1)
    end
end)

----------------------------------
------- passar fatura ------------

RegisterServerEvent("mt-beanmachine:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'bean' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Tirar dinheiro -------------------

RegisterNetEvent('mt-beanmachine:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 10)
end)
