gameGlobals = {

	-- Since Dead Walkers loads all his
	-- addons automatically on each start,
	-- we can specify a prefix for our resources,
	-- identifying what resources are addons.
	["addon_prefix"] = "DWaddon_",

	-- Some serves wants to create bases
	-- and offer them as VIP features.
	-- So, base_prefix follows the same concept
	-- of addon_prefix: just a prefix for identify
	-- what resources are bases and what are not.
	["base_prefix"] = "DWbase_",

	-- You can specify the max ping allowed in
	-- your server before the player got kicked.
	["max_ping"] = 700,

	-- Specify how many health zombies can take
	-- from player when hurt them.
	["zombies_damage"] = math.round(400, 600),
	
}

﻿gameWeapons = {

	---------------------------------
	-- Melee Weapons
	---------------------------------
	["GolfClub"] = {
		["id"] 		= 1,
		["model"]	= 333,
		["name"] 	= "Pé-de-cabra",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 950,
	},
	["Knife"] = {
		["id"] 		= 2,
		["model"]	= 335,
		["name"] 	= "Faca",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 1200,
	},
	["BaseballBat"] = {
		["id"]		= 3,
		["model"]	= 336,
		["name"] 	= "Taco de Beisebol",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 950,
	},
	["Shovel"] = {
		["id"]		= 4,
		["model"]	= 337,
		["name"] 	= "Pá",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 950,
	},
	["Katana"] = {
		["id"]		= 5,
		["model"]	= 339,
		["name"] 	= "Machado",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 1400,
	},


	---------------------------------
	-- Handguns
	---------------------------------
	["Pistol"] = {
		["id"]		= 6,
		["model"]	= 346,
		["name"] 	= "Pistola",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 1000,
	},
	["Pistol_Ammo"] = {
		["id"] = 7,
		["model"]	= 3013,
		["name"] 	= "Munição de Pistola",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["SilencedPistol"] = {
		["id"]		= 8,
		["model"]	= 347,
		["name"] 	= "Pistola Silenciosa",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 950,
	},
	["SilencedPistol_Ammo"] = {
		["id"] = 9,
		["model"]	= 3013,
		["name"] 	= "Munição de P. Silenciosa",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["DesertEagle"] = {
		["id"]		= 10,
		["model"]	= 348,
		["name"] 	= "Desert Eagle",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3000,
	},
	["DesertEagle_Ammo"] = {
		["id"] = 11,
		["model"]	= 3013,
		["name"] 	= "Munição de Desert",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},


	---------------------------------
	-- Shotguns
	---------------------------------
	["Shotgun"] = {
		["id"]		= 12,
		["model"]	= 349,
		["name"] 	= "Escopeta",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3500,
	},
	["Shotgun_Ammo"] = {
		["id"] = 13,
		["model"]	= 2358,
		["name"] 	= "Munição de Escopeta",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["SawnOff"] = {
		["id"]		= 14,
		["model"]	= 350,
		["name"] 	= "Sawn-Off",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3500,
	},
	["SawnOff_Ammo"] = {
		["id"] = 15,
		["model"]	= 2358,
		["name"] 	= "Munição de Sawn-Off",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["SPAZ12"] = {
		["id"]	= 16,
		["model"]	= 351,
		["name"] 	= "SPAZ-12",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3500,
	},
	["SPAZ12_Ammo"] = {
		["id"]		= 17,
		["model"]	= 2358,
		["name"] 	= "Munição de SPAZ-12",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},


	---------------------------------
	-- Sub-machines
	---------------------------------
	["Uzi"] = {
		["id"]		= 18,
		["model"]	= 352,
		["name"] 	= "Uzi",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 1000,
	},
	["Uzi_Ammo"] = {
		["id"] = 19,
		["model"]	= 2041,
		["name"] 	= "Munição de Uzi",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["MP5"] = {
		["id"]		= 20,
		["model"]	= 353,
		["name"] 	= "MP5",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 1200,
	},
	["MP5_Ammo"] = {
		["id"] = 21,
		["model"]	= 2041,
		["name"] 	= "Munição de MP5",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},


	---------------------------------
	-- Assault Rifles
	---------------------------------
	["AK47"] = {
		["id"]		= 22,
		["model"]	= 355,
		["name"] 	= "AK-47",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3200,
	},
	["AK47_Ammo"] = {
		["id"]		= 23,
		["model"]	= 1271,
		["name"] 	= "Munição de AK-47",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["M4"] = {
		["id"]		= 24,
		["model"]	= 356,
		["name"] 	= "M16A2",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 3000,
	},
	["M4_Ammo"] = {
		["id"]		= 25,
		["model"]	= 1271,
		["name"] 	= "Munição de M16A2",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},


	---------------------------------
	-- Rifles
	---------------------------------
	["CountryRifle"] = {
		["id"]		= 26,
		["model"]	= 357,
		["name"] 	= "Espingarda",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 8000,
	},
	["CountryRifle_Ammo"] = {
		["id"]		= 27,
		["model"]	= 2358,
		["name"] 	= "Munição de Espingarda",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},
	["Sniper"] = {
		["id"]		= 28,
		["model"]	= 358,
		["name"] 	= "Sniper",
		["slots"]	= 3,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 12000,
	},
	["Sniper_Ammo"] = {
		["id"]		= 29,
		["model"]	= 2358,
		["name"] 	= "Munição de Sniper",
		["slots"]	= 0.5,
		["objScale"] = 2,
		["nothing"] = 0,
	},


	---------------------------------
	-- Projectiles
	---------------------------------
	["Grenade"] = {
		["id"]		= 30,
		["model"]	= 342,
		["name"] 	= "Granada",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 12000,
	},
	["TearGas"] = {
		["id"]		= 31,
		["model"]	= 343,
		["name"] 	= "Gás Lacrimogêneo",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 700,
	},


	---------------------------------
	-- Special
	---------------------------------
	["NightVision"] = {
		["id"]		= 32,
		["model"]	= 368,
		["name"] 	= "Visão Noturna",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 0,
	},
	["Infrared"] = {
		["id"]		= 33,
		["model"]	= 369,
		["name"] 	= "Visão de Calor",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["damage"]	= 0,
	},
	["Camera"] = {
		["id"]		= 34,
		["model"]	= 367,
		["name"] 	= "Binóculos",
		["slots"]	= 1,
		["objScale"] = 4,
		["nothing"] = 0,
		["damage"]	= 0,
	},
}



gameMedicItems = {

	["MedicKit"] = {
		["id"]		= 51,
		["model"]	= 2891,
		["name"] 	= "Kit Médico",
		["slots"]	= 2,
		["objScale"] = 2.2,
		["nothing"] = 0,
		["heal"]	= 12000,
	},
	["Bandage"] = {
		["id"]		= 52,
		["model"]	= 1578,
		["name"] 	= "Curativo",
		["slots"]	= 0.5,
		["objScale"] = 0.5,
		["nothing"] = 0,
		["heal"]	= 0,
	},
	["BloodBag"] = {
		["id"]		= 53,
		["model"]	= 1580,
		["name"] 	= "Bolsa de Sangue",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 10000,
	},
	["HeatPack"] = {
		["id"]		= 54,
		["model"]	= 1576,
		["name"] 	= "Bolsa Quente",
		["slots"]	= 1,
		["objScale"] = 5,
		["nothing"] = 0,
		["heal"]	= 0,
	},
	["Morphine"] = {
		["id"]		= 55,
		["model"]	= 1579,
		["name"] 	= "Morfina",
		["slots"]	= 0.5,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 0,
	},
	["Painkiller"] = {
		["id"]		= 56,
		["model"]	= 2709,
		["name"] 	= "Analgésico",
		["slots"]	= 0.5,
		["objScale"] = 3,
		["nothing"] = 0,
		["heal"]	= 0,
	},
}



gameFoodItems = {

	["Burger"] = {
		["id"]		= 71,
		["model"]	= 2768,
		["name"] 	= "Hambúrguer",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 1000,
		["food"]	= 100,
	},
	["Pizza"] = {
		["id"]		= 72,
		["model"]	= 1582,
		["name"] 	= "Pizza",
		["slots"]	= 2,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 1300,
		["food"]	= 100,
	},
	["RawMeat"] = {
		["id"]		= 73,
		["model"]	= 2804,
		["name"] 	= "Carne Crua",
		["slots"]	= 1,
		["objScale"] = 0.5,
		["nothing"] = 0,
		["heal"]	= 800,
		["food"]	= 100,
	},
	["CookedMeat"] = {
		["id"]		= 74,
		["model"]	= 2806,
		["name"] 	= "Carne Cozida",
		["slots"]	= 1,
		["objScale"] = 0.5,
		["nothing"] = 0,
		["heal"]	= 1500,
		["food"]	= 100,
	},
	["PastaCan"] = {
		["id"]		= 75,
		["model"]	= 2770,
		["name"] 	= "Macarrão",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 800,
		["food"]	= 100,
	},
	["BeansCan"] = {
		["id"]		= 76,
		["model"]	= 2601,
		["name"] 	= "Feijão",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 800,
		["food"]	= 100,
	},
	["Milk"] = {
		["id"]		= 77,
		["model"]	= 2856,
		["name"] 	= "Leite",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 800,
		["thirst"]	= 100,
	},
	["FullWaterBottle"] = {
		["id"]		= 78,
		["model"]	= 2683,
		["name"] 	= "Garrafa D'água",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 800,
		["thirst"]	= 100,
	},
	["EmptyWaterBottle"] = {
		["id"]		= 79,
		["model"]	= 2683,
		["name"] 	= "Garrafa D'água (vazia)",
		["slots"]	= 1,
		["objScale"] = 1,
		["nothing"] = 0,
		["heal"]	= 0,
		["thirst"]	= 0,
	},
	["FullSodaCan"] = {
		["id"]		= 80,
		["model"]	= 2673,
		["name"] 	= "Lata de Suco",
		["slots"]	= 1,
		["objScale"] = 0.5,
		["nothing"] = 0,
		["heal"]	= 800,
		["thirst"]	= 100,
	},
	["EmptySodaCan"] = {
		["id"]		= 81,
		["model"]	= 2673,
		["name"] 	= "Lata de Suco (vazia)",
		["slots"]	= 1,
		["objScale"] = 0.5,
		["nothing"] = 0,
		["heal"]	= 0,
		["thirst"]	= 0,
	},
}


gameClothingItems = {
	["Survivor"] = {
		["id"] = 100,
	},

	["Civilian"] = {
		["id"] = 101
	},

	["GhillieDesert"] = {
		["id"] = 102
	},

	["GhillieForest"] = {
		["id"] = 103
	},

	["Military"] = {
		["id"] = 104
	},
}

gameOtherItems = {
	["Roadflare"] = {
		["id"] = 121,
		["name"] = "Sinalizador"
	},

	["WoodPile"] = {
		["id"] = 122,
		["name"] = "Lenha"
	},

	["ScruffyBurger"] = {
		["id"] = 123,
		["name"] = "Comida Estragada"
	},

	["EmptyPatrol"] = {
		["id"] = 124,
		["name"] = "Gasolina [vazio]"
	},

	["FullPatrol"] = {
		["id"] = 125,
		["name"] = "Gasolina [cheio]"
	},

	["WireFence"] = {
		["id"] = 126,
		["name"] = "Cerca de Arame"
	},

	["Tent"] = {
		["id"] = 127,
		["name"] = "Tenda"
	},

	["Tire"] = {
		["id"] = 128,
		["name"] = "Pneu"
	},

	["Armor"] = {
		["id"] = 129,
		["name"] = "Colete"
	}
}

gameUtilItems = {
	["Watch"] = {
		["id"] = 141,
		["name"] = "Relógio"
	},

	["GPS"] = {
		["id"] = 142,
		["name"] = "GPS"
	},

	["Map"] = {
		["id"] = 143,
		["name"] = "Mapa"
	},

	["Toolbox"] = {
		["id"] = 144,
		["name"] = "Ferramentas"
	},

	["BoxOfMatches"] = {
		["id"] = 145,
		["name"] = "Caixa de Fósforo"
	},

	["Radio"] = {
		["id"] = 146,
		["name"] = "Rádio"
	},
}

	-- Database keys
	DB_TireInVehicle	= "Pneu_inVehicle" -- Must be the SAME, SAME value of "Item_Tire". SAME value
	DB_EngineInVehicle	= "Motor_inVehicle" -- Must be the SAME, SAME value of "Item_Engine". SAME value
		--[[ What does this do? Simple ... in some parts of the code, the code reuses the name of the item to reference the database.
		So the name of the item must be the name in the database. ]]


-- SCOREBOARD
shownText = {}

	shownText["name"] = "Name"
	shownText["murders"] = "Murders"
	shownText["zombieskilled"] = "Zombies killed:"
	shownText["alivetime"] = "Alivetime"
	shownText["headshots"] =  "Headshots"
	shownText["blood"] =  "Blood"
	shownText["temperature"] =  "Temperature"
	shownText["humanity"] =  "Humanity"
	shownText["banditskilled"] =  "Bandits killed:"
	shownText["players"] =  "Players:"


gameplayVariables = {}

-- PING CHECK
	gameplayVariables["ping"] = 700-- Checks if ping is over the set amount. DEFAULT: 600

-- ZOMBIE DAMAGE
	gameplayVariables["zombiedamage"] = math.random(400,600) -- Damage done by zombies - DEFAULT: math.random(400,900), for consistent damage, remove math.random(400,900) and insert value (EXAMPLE: 1000)
	gameplayVariables["enablenight"] = true -- Whether or not the night should be darker - DEFAULT: true - SET TO false to disable - remember you need to set it in editor_server.lua too.
