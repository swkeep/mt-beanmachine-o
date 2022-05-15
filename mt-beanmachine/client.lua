local QBCore = exports['qb-core']:GetCoreObject()

--- Cenas e coisas para o Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "bean" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    if PlayerData.job.name == 'bean' then
    	onDuty = duty
    end
end)

RegisterNetEvent("mt-beanmachine:client:Servico", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

----------------------------------------------
------------------ Menus ---------------------

RegisterNetEvent('mt-beanmachine:client:MenuBolos', function()
    exports['qb-menu']:openMenu({
        {
            header = "Cakes Bean Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥐​ Chocolate Croissant",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCroasantChocolate",
            }
        },
        {
            header = "🥐 Egg Croissant",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCroasantOvo",
            }
        },
        {
            header = "🧁​ Chocolate Muffin",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarMuffinChocolate",
            }
        },
        {
            header = "🧁​ Vanilla Cupcake",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCupcakeBaunilha",
            }
        },
        {
            header = "🧁​ Straberry Cupcake",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCupcakeMorango",
            }
        },
        {
            header = "🥞​ Nutela Pancake",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarNutelaPancake",
            }
        },
        {
            header = "🥞​ Honey Pancake",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarPanquecaMel",
            }
        },
    })
end)

RegisterNetEvent('mt-beanmachine:client:MenuCafes', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "​☕​ Coffee",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCafe",
            }
        },
        {
            header = "​☕​ Latte",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarLatte",
            }
        },
        {
            header = "​☕​ Cappuccino",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCappuccino",
            }
        },
        {
            header = "​☕​ Mocha",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarMocha",
            }
        },
        {
            header = "​🍵​​ Tea",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCha",
            }
        },
    })
end)

RegisterNetEvent('mt-beanmachine:client:MenuBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Coffee Machine",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "🥤 Coke",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarCola",
            }
        },
        {
            header = "🥛​ Water",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarAgua",
            }
        },
        {
            header = "🥤 Lemon Ice Tea",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarIceTeaLimao",
            }
        },
        {
            header = "🥤 Peach Ice Tea",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarIceTeaPessego",
            }
        },
        {
            header = "🥤 Sprunk",
            txt = "",
            params = {
                event = "mt-beanmachine:client:PegarSprunk",
            }
        },
    })
end)

------------- Pegar comidas/bebidas ----------

RegisterNetEvent('mt-beanmachine:client:PegarCroasantChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "croasant-chocolate", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCroasantOvo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CROISSANT...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "croasant-ovo", 1)
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarMuffinChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MUFFIN...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "muffin-chocolate", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cupcake-baunilha", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cupcake-morango", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "panqueca-nutela", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CUPCAKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "panqueca-mel", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A COFFEE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-cafe", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-latte", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-cappuccino", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-mocha", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-cha", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING COKE...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-cola", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING WATER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-agua", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ice-tea-limao", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarIceTeaPessego', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A ICE TEA...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ice-tea-pessego", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('mt-beanmachine:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING SPRUNK...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bean-sprunk", 1)
	TriggerServerEvent('mt-beanmachine:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Comer cenas e coisas -------------

RegisterNetEvent('mt-beanmachine:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'DRINKING COFFEE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-beanmachine:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-beanmachine:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('mt-beanmachine:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- Lavar Mãos -------------------------

RegisterNetEvent('mt-beanmachine:client:LavarMaos', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'WASHING HANDS...', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
------------ Blip no mapa ----------------------

Citizen.CreateThread(function()
    bean = Config.MapLoc
    SetBlipSprite (bean, 106)
    SetBlipDisplay(bean, 2)
    SetBlipScale  (bean, 0.9)
    SetBlipAsShortRange(bean, true)
    SetBlipColour(bean, 10)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Bean Machine")
    EndTextCommandSetBlipName(bean)
end) 

-----------------------------------------------
------------- Tabuleiros ----------------------

RegisterNetEvent('mt-beanmachine:client:Tabuleiro1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('mt-beanmachine:client:Tabuleiro2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "TabuleiroBean2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "TabuleiroBean2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

----------------------------------------------
-------- Passar Faturas ----------------------

RegisterNetEvent("mt-beanmachine:client:FaturarPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("mt-beanmachine:server:FaturarPlayer", dialog.id, dialog.amount)
    end
end)
