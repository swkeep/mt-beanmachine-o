Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("bean-vitrine-bolos", vector3(121.29, -1038.46, 29.28), 0.8, 2, {
        name = "bean-vitrine-bolos",
        heading = 70,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:MenuBolos",
            icon = "fas fa-birthday-cake",
            label = "Open showcase",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-maquina-cafe1", vector3(124.81, -1037.0, 29.28), 1, 1, {
        name = "bean-maquina-cafe1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-maquina-cafe2", vector3(123.05, -1041.73, 29.28), 1, 1, {
        name = "bean-maquina-cafe2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:MenuCafes",
            icon = "fas fa-coffee",
            label = "Use Coffe Machine",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-bebidas1", vector3(126.0, -1036.57, 29.28), 1, 1, {
        name = "bean-bebidas1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:MenuBebidas",
            icon = "fas fa-glass",
            label = "Use Drink Machine",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-bebidas2", vector3(123.75, -1042.8, 29.28), 1, 2, {
        name = "bean-bebidas2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:MenuBebidas",
            icon = "fas fa-glass-champagne",
            label = "Use Drink Machine",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-lavatorio", vector3(123.88, -1039.3, 29.28), 1, 1, {
        name = "bean-lavatorio",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:LavarMaos",
            icon = "fas fa-hand-holding",
            label = "Wash Hands",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro1", vector3(121.87, -1037.12, 29.28), 0.75, 0.5, {
        name = "bean-tabuleiro1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:Tabuleiro1",
            icon = "fas fa-clipboard",
            label = "Tray - 1",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-tabuleiro2", vector3(120.55, -1040.78, 29.28), 0.75, 0.5, {
        name = "bean-tabuleiro2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:Tabuleiro2",
            icon = "fas fa-clipboard",
            label = "Tray - 2",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-servico", vector3(123.38, -1045.05, 29.28), 0.5, 1, {
        name = "bean-servico",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:Servico",
            icon = "fas fa-clipboard",
            label = "Clock In/Out",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-registadora2", vector3(122.09, -1036.53, 29.28), 0.75, 0.75, {
        name = "bean-registadora2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:FaturarPlayer",
            icon = "fas fa-clipboard",
            label = "Bill Player",
            job = "bean",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bean-registadora1", vector3(120.81, -1040.12, 29.28), 0.75, 0.75, {
        name = "bean-registadora1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "mt-beanmachine:client:FaturarPlayer",
            icon = "fas fa-clipboard",
            label = "Bill Player",
            job = "bean",
            },
        },
        distance = 1.5
    })
end)