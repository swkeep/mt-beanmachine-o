# mt-beanmachine
Bean Machine Job for gabz bean machine map for QBCore.

# Preview
https://www.youtube.com/watch?v=Nur_2EWdXXs

# Add to qb-core/shared/items.lua
```
	-- mt-beanmachine
	["bean-cafe"] = {["name"] = "bean-cafe", 	    ["label"] = "Coffee", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "cafe.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-latte"] = {["name"] = "bean-latte", 	    ["label"] = "Latte", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "latte.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-cappuccino"] = {["name"] = "bean-cappuccino", 	    ["label"] = "Cappuccino", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "latte.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-mocha"] = {["name"] = "bean-mocha", 	    ["label"] = "Mocha", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "cafe.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["croasant-chocolate"] = {["name"] = "croasant-chocolate", 	    ["label"] = "Cholate Croisant", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "croasant.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["croasant-ovo"] = {["name"] = "croasant-ovo", 	    ["label"] = "Egg Croisant", 	["weight"] = 1000, 		["type"] = "item", 			["image"] = "croasant.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["muffin-chocolate"]     = {["name"] = "muffin-chocolate", 				    ["label"] = "Chocolate Muffin", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "mufchocolate.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["cupcake-baunilha"]     = {["name"] = "cupcake-baunilha", 				    ["label"] = "Vanilla Cupcake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cuplimao.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["cupcake-morango"]     = {["name"] = "cupcake-morango", 				    ["label"] = "Straberry Cupcake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cupmorango.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["panqueca-nutela"]     = {["name"] = "panqueca-nutela", 				    ["label"] = "Nutela Pancake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "panutela.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["panqueca-mel"]     = {["name"] = "panqueca-mel", 				    ["label"] = "Honey Pancake", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "panutela.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-cha"]     = {["name"] = "bean-cha", 				    ["label"] = "Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "tea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-cola"]     = {["name"] = "bean-cola", 				    ["label"] = "Coke", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "cola.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-agua"]     = {["name"] = "bean-agua", 				    ["label"] = "Water", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "water_bottle.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["bean-sprunk"]     = {["name"] = "bean-sprunk", 				    ["label"] = "Sprunk", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "sprunk.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["ice-tea-limao"]     = {["name"] = "ice-tea-limao", 				    ["label"] = "Lemon Ice Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "icetea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["ice-tea-pessego"]     = {["name"] = "ice-tea-pessego", 				    ["label"] = "Peach Ice Tea", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "icetea.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

# Add to qb-core/shared/jobs.lua
```
    ['bean'] = {
		label = 'Bean Machine',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Novice',
                payment = 50
            },
			['1'] = {
                name = 'Employee',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Boss',
				isboss = true,
                payment = 150
            },
        },
	},
```

# Drag and drop images from mt-beanmachine/images to qb-inventory/html/images

# Dependicies
- qb-target - https://github.com/qbcore-framework/qb-target
- qb-menu - https://github.com/qbcore-framework/qb-menu
- qb-input - https://github.com/qbcore-framework/qb-input
- dpemotes - https://github.com/qbcore-framework/dpemotes
- qb-core - https://github.com/qbcore-framework/qb-core
- qb-inventory - https://github.com/qbcore-framework/qb-inventory

# Gabz bean machine map link
https://fivem.gabzv.com/package/4976870
