--[[**********************************
*
*	Multi Theft Auto - Admin Panel
*
*	gui\admin_main.lua
*
*	Original File by lil_Toady
*
**************************************]]

aAdminForm = nil
aLastCheck = 0
aCurrentVehicle = 429
aCurrentWeapon = 30
aCurrentAmmo = 90
aCurrentSlap = 20
aPlayers = {}
aBans = {}
aLastSync = 0
aResources = {}
isDevTeam = false


-- @added by Sathler
spawnPositions = {
  {
    -278.6669921875,
    -2882.1572265625,
    32.104232788086,
	"#1   - Flint County (Leste)"
  },
  {
    -958.5595703125,
    -2887.9912109375,
    64.82421875,
	"#2   - Flint County (Oeste)"
  },
  {
    -1816.9375,
    -2748.18359375,
    1.7327127456665,
	"#3   - Whetstone"
  },
  {
    -2816.166015625,
    -2439.0546875,
    2.4004096984863,
	"#4   - Whetstone (Angel Pine)"
  },
  {
    -2941.5673828125,
    -1206.2373046875,
    2.7848854064941,
	"#5   - Mount Chilliad"
  },
  {
    -2911.51171875,
    -895.22265625,
    2.4013109207153,
	"#6   - San Fierro"
  },
  {
    -2185.6669921875,
    2957.380859375,
    11.474840164185,
	"#7   - Tierra R. (Bayside)"
  },
  {
    272.2265625,
    2928.505859375,
    1.3713493347168,
	"#8   - Bone County"
  },
  {
    2803.943359375,
    595.9365234375,
    7.7612648010254,
	"#9   - Red County (LV)"
  },
  {
    2883.7509765625,
    -178.4658203125,
    3.2714653015137,
	"#10 - Red County (LS)"
  },
  {
    -233.46484375,
    -1735.8173828125,
    1.5520644187927,
	"#11 - Los Santos Inlet"
  },
  {
    -1056.8720703125,
    2939.068359375,
    42.311294555664,
	"#12 - Tierra Robada"
  }
}




-- @added by Sathler
	-- Primary Weapons
	Weapon_Shotgun 		= "Escopeta"
	Weapon_ShotgunAmmo 	= "Munição p/ Escopeta"
	Weapon_SawnOff 		= "Sawn-Off"
	Weapon_SawnOffAmmo 	= "Munição p/ Sawn-Off"
	Weapon_Spas			= "SPAS-12"
	Weapon_SpasAmmo 	= "Munição p/ SPAS-12"
	
	Weapon_M4 		= "M16A2"
	Weapon_M4Ammo	= "Munição p/ M16A2"
	Weapon_AK 		= "AK-47"
	Weapon_AKAmmo	= "Munição p/ AK-47"
	
	Weapon_Sniper 		= "Sniper"
	Weapon_SniperAmmo 	= "Munição p/ Sniper"
	Weapon_Country 		= "Country Rifle"
	Weapon_CountryAmmo 	= "Munição p/ Country"
	
	-- Secondary Weapons
	Weapon_Pistol		= "Pistola"
	Weapon_PistolAmmo 	= "Munição p/ Pistola"
	Weapon_Silenced 	= "Pistola Silenciosa"
	Weapon_SilencedAmmo = "Munição p/ P. Silenciosa"
	Weapon_Desert		= "Desert Eagle"
	Weapon_DesertAmmo 	= "Munição p/ Desert"
	
	Weapon_Uzi		= "Micro-Uzi"
	Weapon_UziAmmo	= "Munição p/ Micro-Uzi"
	Weapon_MP5		= "MP5"
	Weapon_MP5Ammo	= "Munição p/ MP5"
	
	Weapon_Knife	= "Faca"
	Weapon_Katana	= "Machado"
	Weapon_Baseball = "Taco de Beisebol"
	Weapon_Crowbar	= "Pé-de-Cabra"
	Weapon_Shovel	= "Pá"
	
	-- Special Weapons
	Weapon_Binoculars 	= "Binóculos"
	Weapon_Grenade		= "Granada"
	Weapon_TearGas		= "Gás Lacrimogêneo"
	Weapon_Parachute	= "Paraquedas"
	
	-- Food
	Item_Burger 	= "Hambúrguer"
	Item_Pizza		= "Pizza"
	Item_RawMeat	= "Carne Crua"
	Item_CookedMeat = "Carne Cozida"
	Item_PastaCan	= "Comida Enlatada"
	Item_BeansCan	= "Feijão Enlatado"
	
	Item_FullWaterBottle 	= "Garrafa D'água"
	Item_EmptyWaterBottle 	= "Garrafa D'água [vazia]"
	Item_SodaBottle 		= "Lata de Suco"
	Item_EmptySodaCan		= "Lata de Suco [vazia]"
	Item_Milk				= "Leite"
	
	-- Medics
	Item_MedicKit	= "Kit Médico"
	Item_Bandage	= "Curativo"
	Item_BloodBag	= "Bolsa de Sangue"
	Item_HeatPack	= "Bolsa c/ Água Quente"
	Item_Morphine	= "Morfina"
	Item_Painkiller = "Analgésico"
	
	-- Skins
	Skin_Survivor	= "Roupa de Sobrevivente"
	Skin_Civilian	= "Roupa de Civil"
	Skin_GhillieDesert	= "Ghillie Suit (Deserto)"
	Skin_GhillieForest	= "Ghillie Suit (Floresta)"
	Skin_Military	= "Roupa Militar"
	
	-- Items
	Item_RoadFlare		= "Road Flare"
	Item_WoodPile		= "Lenha"
	Item_ScruffyBurger 	= "Comida Estragada"
	Item_EmptyPatrol 	= "Gasolina [vazio]"
	Item_FullPatrol		= "Gasolina [cheio]"
	Item_WireFence		= "Cerca de Arame"
	Item_Tent			= "Tenda"
	Item_Tire			= "Pneu"
	Item_Armor			= "Colete"
	Item_CDKRose		= "CD: K-Rose"
	
	-- Utils
	Item_Watch		= "Relógio"
	Item_GPS		= "GPS"
	Item_Map		= "Mapa"
	Item_Toolbox	= "Ferramentas"
	Item_BoxOfMatches	= "Caixa de Fósforo"
	Item_Radio		= "Rádio"
	Item_NightVision	= "Visão Noturna"
	Item_InfraredVision = "Visão de Calor"
	
	-- Database keys
	DB_TireInVehicle	= "Pneu_inVehicle" -- Must be the SAME, SAME value of "Item_Tire". SAME value
	DB_EngineInVehicle	= "Motor_inVehicle" -- Must be the SAME, SAME value of "Item_Engine". SAME value
		--[[ What does this do? Simple ... in some parts of the code, the code reuses the name of the item to reference the database. 
		So the name of the item must be the name in the database. ]]
		
		
local playerDataTable = {
  {"alivetime"},
  {"skin"},
  {"MAX_Slots"},
  {"bandit"},
  {"blood"},
  {"food"},
  {"thirst"},
  {"temperature"},
  {"currentweapon_1"},
  {"currentweapon_2"},
  {"currentweapon_3"},
  {"bleeding"},
  {"brokenbone"},
  {"pain"},
  {"cold"},
  {"infection"},
  {"humanity"},
  {"zombieskilled"},
  {"headshots"},
  {"murders"},
  {"banditskilled"},
  {Item_WoodPile},
  {Item_Bandage},
  {Item_FullWaterBottle},
  {Item_PastaCan},
  {Item_BeansCan},
  {Item_Burger},
  {Item_BoxOfMatches},
  {Weapon_PistolAmmo},
  {Weapon_SilencedAmmo},
  {Weapon_DesertAmmo},
  {Weapon_Pistol},
  {Weapon_Silenced},
  {Weapon_Shotgun},
  {Weapon_Uzi},
  {Weapon_Knife},
  {Weapon_Katana},
  {Item_Pizza},
  {Item_Morphine},
  {Item_SodaBottle},
  {Item_EmptyPatrol},
  {Item_FullPatrol},
  {Item_RoadFlare},
  {Item_Milk},
  {Weapon_UziAmmo},
  {Weapon_MP5Ammo},
  {Weapon_AKAmmo},
  {Weapon_M4Ammo},
  {Weapon_TearGas},
  {Weapon_Grenade},
  {Weapon_Desert},
  {Weapon_SawnOff},
  {Weapon_Spas},
  {Weapon_MP5},
  {Item_Watch},
  {Item_MedicKit},
  {Item_HeatPack},
  {Weapon_Country},
  {Weapon_Uzi},
  {Weapon_AK},
  {Item_BloodBag},
  {Item_GPS},
  {Item_Map},
  {Item_Toolbox},
  {Item_WireFence},
  {Item_Tire},
  {"Motor"},
  {"Tank Parts"},
  {Weapon_SniperAmmo},
  {Weapon_CountryAmmo},
  {Weapon_M4},
  {Weapon_Sniper},
  {Item_InfraredVision},
  {Item_NightVision},
  {Item_Tent},
  {Item_RawMeat},
  {Item_CookedMeat},
  {Skin_Military},
  {Skin_GhillieDesert},
  {Skin_GhillieForest},
  {Skin_Civilian},
  {Skin_Survivor},
  {Item_Painkiller},
  {Item_EmptyWaterBottle},
  {Item_EmptySodaCan},
  {Item_ScruffyBurger},
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {Weapon_SpasAmmo},
  {Item_Radio},
  {Weapon_Binoculars},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar},
  {Weapon_Parachute}  
}  
  
  



function aAdminMenu ()
	if ( aAdminForm == nil ) then
		local x, y = guiGetScreenSize()
		aAdminForm		= guiCreateWindow ( x / 2 - 310, y / 2 - 260, 620, 520, "", false )
						  guiWindowSetSizable ( aAdminForm, false )
						  guiSetText ( aAdminForm, "Painel Administrativo   -   v1.0.2" )
						  --guiSetText ( aAdminForm, "Painel Administrativo   -   v".._version )
						  guiCreateLabel ( 0.75, 0.05, 0.45, 0.04, "Autor: Stanley Sathler", true, aAdminForm )
		aTabPanel		= guiCreateTabPanel ( 0.01, 0.05, 0.98, 0.95, true, aAdminForm )
		aTab1 = {}	
		aTab1.Tab			= guiCreateTab ( "Jogadores", aTabPanel, "players" )
		aTab1.Messages		= guiCreateButton ( 0.75, 0.02, 0.23, 0.04, "0/0 não lidas", true, aTab1.Tab )
		aTab1.PlayerListSearch 	= guiCreateEdit ( 0.03, 0.05, 0.16, 0.04, "", true, aTab1.Tab )
						  guiCreateStaticImage ( 0.19, 0.05, 0.035, 0.04, "client\\images\\search.png", true, aTab1.Tab )
		aTab1.HideColorCodes= guiCreateCheckBox ( 0.037, 0.94, 0.30, 0.04, "Esconder hexadecimais", true, true, aTab1.Tab )
		aTab1.PlayerList		= guiCreateGridList ( 0.03, 0.10, 0.20, 0.83, true, aTab1.Tab )
						  guiGridListAddColumn( aTab1.PlayerList, "Jogadores", 0.85 )
						  for id, player in ipairs ( getElementsByType ( "player" ) ) do guiGridListSetItemPlayerName ( aTab1.PlayerList, guiGridListAddRow ( aTab1.PlayerList ), 1, getPlayerName ( player ), false, false ) end
		aTab1.Kick			= guiCreateButton ( 0.71, 0.125, 0.13, 0.04, "Kickar", true, aTab1.Tab, "kick" )
		aTab1.Ban			= guiCreateButton ( 0.85, 0.125, 0.13, 0.04, "Banir", true, aTab1.Tab, "ban" )
		aTab1.Mute			= guiCreateButton ( 0.71, 0.170, 0.13, 0.04, "Mudo", true, aTab1.Tab, "mute" )
		aTab1.Freeze		= guiCreateButton ( 0.85, 0.170, 0.13, 0.04, "Congelar", true, aTab1.Tab, "freeze" )
		aTab1.Spectate		= guiCreateButton ( 0.71, 0.215, 0.13, 0.04, "Visualizar", true, aTab1.Tab, "spectate" )
		aTab1.Slap			= guiCreateButton ( 0.85, 0.215, 0.13, 0.04, "Tapa "..aCurrentSlap.." _", true, aTab1.Tab, "slap" )
							  guiSetEnabled(aTab1.Slap,false)
		--aTab1.SlapDropDown	= guiCreateStaticImage ( 0.95, 0.215, 0.03, 0.04, "client\\images\\dropdown.png", true, aTab1.Tab )
		aTab1.SlapOptions		= guiCreateGridList ( 0.85, 0.215, 0.13, 0.40, true, aTab1.Tab )
						  guiGridListSetSortingEnabled ( aTab1.SlapOptions, false )
						  guiGridListAddColumn( aTab1.SlapOptions, "", 0.85 )
						  guiSetVisible ( aTab1.SlapOptions, false )
						  for i = 0, 10 do guiGridListSetItemText ( aTab1.SlapOptions, guiGridListAddRow ( aTab1.SlapOptions ), 1, tostring ( i * 10 ), false, false ) end
		aTab1.Nick			= guiCreateButton ( 0.71, 0.260, 0.13, 0.04, "Nick", true, aTab1.Tab )
							  guiSetEnabled(aTab1.Nick,false)
		aTab1.Shout			= guiCreateButton ( 0.85, 0.260, 0.13, 0.04, "Shout!", true, aTab1.Tab, "shout" )
							  guiSetEnabled(aTab1.Shout,false)
		aTab1.Admin			= guiCreateButton ( 0.71, 0.305, 0.27, 0.04, "Dar admin", true, aTab1.Tab, "setgroup" )
							  guiSetEnabled(aTab1.Admin,false)
	
						  guiCreateHeader ( 0.25, 0.08, 0.20, 0.04, "JOGADOR:", true, aTab1.Tab )
		aTab1.Name			= guiCreateLabel ( 0.26, 0.125, 0.30, 0.035, "Nome: N/A", true, aTab1.Tab )
		aTab1.IP			= guiCreateLabel ( 0.26, 0.170, 0.30, 0.035, "IP: N/A", true, aTab1.Tab )
		aTab1.Serial		= guiCreateLabel ( 0.26, 0.215, 0.435, 0.035, "Serial: N/A", true, aTab1.Tab )
		--aTab1.Username		= guiCreateLabel ( 0.26, 0.245, 0.435, 0.035, "Username: N/A", true, aTab1.Tab )
		aTab1.Version		= guiCreateLabel ( 0.26, 0.245, 0.435, 0.035, "Versão: N/A", true, aTab1.Tab )
		aTab1.Accountname	= guiCreateLabel ( 0.26, 0.275, 0.435, 0.035, "Conta: N/A", true, aTab1.Tab )
		--aTab1.Groups		= guiCreateLabel ( 0.26, 0.305, 0.435, 0.035, "Grupos: N/A", true, aTab1.Tab )
		aTab1.Line1			= guiCreateLabel ( 0.26, 0.305, 0.435, 0.035, "--------------------------------------------------------------", true, aTab1.Tab)
							  --guiSetFont(aTab.Line1, "default-bold-small")
		aTab1.Flag			= guiCreateStaticImage ( 0.40, 0.170, 0.025806, 0.021154, "client\\images\\empty.png", true, aTab1.Tab )
		aTab1.CountryCode	= guiCreateLabel ( 0.45, 0.170, 0.04, 0.035, "", true, aTab1.Tab )
							  guiCreateHeader ( 0.25, 0.350, 0.20, 0.04, "JOGO:", true, aTab1.Tab )
		aTab1.Health		= guiCreateLabel ( 0.26, 0.395, 0.25, 0.04, "Sangue: 0%", true, aTab1.Tab )
		--aTab1.Armour		= guiCreateLabel ( 0.45, 0.395, 0.20, 0.04, "Colete: 0%", true, aTab1.Tab )
		aTab1.Skin			= guiCreateLabel ( 0.26, 0.440, 0.20, 0.04, "Assassinatos: N/A", true, aTab1.Tab )
		--aTab1.Team			= guiCreateLabel ( 0.45, 0.440, 0.20, 0.04, "Time: None", true, aTab1.Tab )
		aTab1.Weapon		= guiCreateLabel ( 0.26, 0.485, 0.35, 0.04, "Humanidade: N/A", true, aTab1.Tab )
		aTab1.Ping			= guiCreateLabel ( 0.26, 0.530, 0.35, 0.04, "Mochila: N/A", true, aTab1.Tab )
		--aTab1.Money			= guiCreateLabel ( 0.45, 0.530, 0.20, 0.04, "Dinheiro: 0", true, aTab1.Tab )
		aTab1.Area			= guiCreateLabel ( 0.26, 0.575, 0.44, 0.04, "Local: Unknown", true, aTab1.Tab )
		aTab1.PositionX		= guiCreateLabel ( 0.26, 0.620, 0.30, 0.04, "Arma #1: N/A", true, aTab1.Tab )
		aTab1.PositionY		= guiCreateLabel ( 0.26, 0.665, 0.30, 0.04, "Arma #2: N/A", true, aTab1.Tab )
		aTab1.PositionZ		= guiCreateLabel ( 0.26, 0.710, 0.30, 0.04, "Arma #3: N/A", true, aTab1.Tab )
		aTab1.Line2			= guiCreateLabel ( 0.26, 0.755, 0.44, 0.04, "--------------------------------------------------------------", true, aTab1.Tab)
		--aTab1.Dimension		= guiCreateLabel ( 0.26, 0.755, 0.20, 0.04, "Dimensão: 0", true, aTab1.Tab )
		--aTab1.Interior		= guiCreateLabel ( 0.45, 0.755, 0.20, 0.04, "Interior: 0", true, aTab1.Tab )
		aTab1.SetHealth		= guiCreateButton ( 0.71, 0.395, 0.13, 0.04, "Def. Sangue", true, aTab1.Tab, "sethealth" )
							  guiSetEnabled(aTab1.SetHealth,false)
		aTab1.SetArmour		= guiCreateButton ( 0.85, 0.395, 0.13, 0.04, "Def. Colete", true, aTab1.Tab, "setarmour" )
							  guiSetEnabled(aTab1.SetArmour,false)
		aTab1.SetSkin		= guiCreateButton ( 0.71, 0.440, 0.13, 0.04, "Def. Skin", true, aTab1.Tab, "setskin" )
							  guiSetEnabled(aTab1.SetSkin,false)
		aTab1.SetTeam		= guiCreateButton ( 0.85, 0.440, 0.13, 0.04, "Def. Time", true, aTab1.Tab, "setteam" )
							  guiSetEnabled(aTab1.SetTeam,false)
		aTab1.SetDimension	= guiCreateButton ( 0.71, 0.755, 0.13, 0.04, "Def. Dimens.", true, aTab1.Tab, "setdimension" )
							  guiSetEnabled(aTab1.SetDimension,false)
		aTab1.SetInterior		= guiCreateButton ( 0.85, 0.755, 0.13, 0.04, "Def. Interior", true, aTab1.Tab, "setinterior" )
								  guiSetEnabled(aTab1.SetInterior,false)
		aTab1.GiveWeapon		= guiCreateButton ( 0.71, 0.485, 0.27, 0.04, "Dar: "..getWeaponNameFromID ( aCurrentWeapon ), true, aTab1.Tab, "giveweapon" )
								  guiSetEnabled(aTab1.GiveWeapon,false)
		--aTab1.WeaponDropDown	= guiCreateStaticImage ( 0.95, 0.485, 0.03, 0.04, "client\\images\\dropdown.png", true, aTab1.Tab )
		aTab1.WeaponOptions	= guiCreateGridList ( 0.71, 0.485, 0.27, 0.48, true, aTab1.Tab )
						  guiGridListAddColumn( aTab1.WeaponOptions, "", 0.85 )
						  guiSetVisible ( aTab1.WeaponOptions, false )
						  for i = 1, 46 do if ( getWeaponNameFromID ( i ) ~= false ) then guiGridListSetItemText ( aTab1.WeaponOptions, guiGridListAddRow ( aTab1.WeaponOptions ), 1, getWeaponNameFromID ( i ), false, false ) end end
		aTab1.SetMoney		= guiCreateButton ( 0.71, 0.530, 0.13, 0.04, "Def. Dinheiro", true, aTab1.Tab, "setmoney" )
							  guiSetEnabled(aTab1.SetMoney,false)
		aTab1.SetStats		= guiCreateButton ( 0.85, 0.530, 0.13, 0.04, "Def. Status", true, aTab1.Tab, "setstat" )
							  guiSetEnabled(aTab1.SetStats,false)
		aTab1.JetPack		= guiCreateButton ( 0.71, 0.575, 0.27, 0.04, "Dar JetPack", true, aTab1.Tab, "jetpack" )
							  --guiSetEnabled(aTab1.JetPack,false)
		aTab1.Warp		= guiCreateButton ( 0.71, 0.620, 0.27, 0.04, "Teleportar ao jogador", true, aTab1.Tab, "warp" )
		aTab1.WarpTo		= guiCreateButton ( 0.71, 0.665, 0.27, 0.04, "Teleportar jogador", true, aTab1.Tab, "warp" )
						  guiCreateHeader ( 0.25, 0.805, 0.20, 0.04, "VEÍCULO:", true, aTab1.Tab )
		aTab1.Vehicle		= guiCreateLabel ( 0.26, 0.850, 0.35, 0.04, "Veículo: N/A", true, aTab1.Tab )
		aTab1.VehicleHealth	= guiCreateLabel ( 0.26, 0.895, 0.25, 0.04, "Veículo (HP): 0%", true, aTab1.Tab )
		
		aTab1.VehicleFix		= guiCreateButton ( 0.71, 0.84, 0.13, 0.04, "Fixar", true, aTab1.Tab, "repair" )
								  guiSetEnabled(aTab1.VehicleFix,false)
		aTab1.VehicleDestroy	= guiCreateButton ( 0.71, 0.89, 0.13, 0.04, "Destruir", true, aTab1.Tab, "destroyvehicle" )
								  guiSetEnabled(aTab1.VehicleDestroy,false)
		aTab1.VehicleBlow		= guiCreateButton ( 0.85, 0.84, 0.13, 0.04, "Explodir", true, aTab1.Tab, "blowvehicle" )
								  guiSetEnabled(aTab1.VehicleBlow,false)
		aTab1.VehicleCustomize 	= guiCreateButton ( 0.85, 0.89, 0.13, 0.04, "Customizar", true, aTab1.Tab, "customize" )
								  guiSetEnabled(aTab1.VehicleCustomize,false)
		aTab1.AnonAdmin		  = guiCreateCheckBox (0.745, 0.942, 0.20, 0.04, "Admin anônimo", isAnonAdmin(), true, aTab1.Tab )
								guiSetEnabled(aTab1.AnonAdmin,false)
		aTab1.GiveVehicle		= guiCreateButton ( 0.71, 0.710, 0.27, 0.04, "Dar: "..getVehicleNameFromModel ( aCurrentVehicle ), true, aTab1.Tab, "givevehicle" )
								  guiSetEnabled(aTab1.GiveVehicle, false)
		--aTab1.VehicleDropDown 	= guiCreateStaticImage ( 0.95, 0.710, 0.03, 0.04, "client\\images\\dropdown.png", true, aTab1.Tab )
									--guiSetEnabled(aTab1.VehicleDropDown,false)
		local gx, gy 		= guiGetSize ( aTab1.GiveVehicle, false )
		aTab1.VehicleOptions	= guiCreateGridList ( 0, 0, gx, 200, false )
						  guiGridListAddColumn( aTab1.VehicleOptions, "", 0.85 )
						  guiSetAlpha ( aTab1.VehicleOptions, 0.80 )
						  guiSetVisible ( aTab1.VehicleOptions, false )
							local vehicleNames = {}
							for i = 400, 611 do
								if ( getVehicleNameFromModel ( i ) ~= "" ) then
									table.insert( vehicleNames, { model = i, name = getVehicleNameFromModel ( i ) } )
								end
							end
							table.sort( vehicleNames, function(a, b) return a.name < b.name end )
							for _,info in ipairs(vehicleNames) do
								local row = guiGridListAddRow ( aTab1.VehicleOptions )
								guiGridListSetItemText ( aTab1.VehicleOptions, row, 1, info.name, false, false )
								guiGridListSetItemData ( aTab1.VehicleOptions, row, 1, tostring ( info.model ) )
							end
		aTab2 = {}
		aTab2.Tab			= guiCreateTab ( "Resources", aTabPanel, "resources" )
		aTab2.ManageACL		= guiCreateButton ( 0.75, 0.02, 0.23, 0.04, "Gerenciar ACL", true, aTab2.Tab )
		aTab2.ResourceListSearch = guiCreateEdit ( 0.03, 0.05, 0.31, 0.04, "", true, aTab2.Tab )
						  guiCreateStaticImage ( 0.34, 0.05, 0.035, 0.04, "client\\images\\search.png", true, aTab2.Tab )
		aTab2.ResourceList	= guiCreateGridList ( 0.03, 0.10, 0.35, 0.80, true, aTab2.Tab )
						  guiGridListAddColumn( aTab2.ResourceList, "Resource", 0.55 )
						  guiGridListAddColumn( aTab2.ResourceList, "", 0.05 )
						  guiGridListAddColumn( aTab2.ResourceList, "Estado", 0.35 )
						  guiGridListAddColumn( aTab2.ResourceList, "Nome do Resource", 0.6 )
						  guiGridListAddColumn( aTab2.ResourceList, "Autor", 0.4 )
						  guiGridListAddColumn( aTab2.ResourceList, "Versão", 0.2 )
		aTab2.ResourceInclMaps	= guiCreateCheckBox ( 0.03, 0.91, 0.15, 0.04, "Incluir Mapas", false, true, aTab2.Tab )
		aTab2.ResourceRefresh	= guiCreateButton ( 0.20, 0.915, 0.18, 0.04, "Atualizar lista", true, aTab2.Tab, "listresources" )
		aTab2.ResourceSettings	= guiCreateButton ( 0.40, 0.05, 0.20, 0.04, "Configurações", true, aTab2.Tab )
		aTab2.ResourceStart	= guiCreateButton ( 0.40, 0.10, 0.20, 0.04, "Iniciar", true, aTab2.Tab, "start" )
		aTab2.ResourceRestart	= guiCreateButton ( 0.40, 0.15, 0.20, 0.04, "Reiniciar", true, aTab2.Tab, "restart" )
		aTab2.ResourceStop	= guiCreateButton ( 0.40, 0.20, 0.20, 0.04, "Parar", true, aTab2.Tab, "stop" )
		aTab2.ResourceDelete	= guiCreateButton ( 0.40, 0.25, 0.20, 0.04, "Deletar", true, aTab2.Tab, "delete" )
		aTab2.ResourcesStopAll	= guiCreateButton ( 0.63, 0.2, 0.20, 0.04, "Parar tudo", true, aTab2.Tab, "stopall" )
		aTab2.ResourceFailture	= guiCreateButton ( 0.63, 0.10, 0.25, 0.04, "Get Load Failture", true, aTab2.Tab )
						 guiSetVisible ( aTab2.ResourceFailture, false )
		--aModules			= guiCreateTabPanel ( 0.40, 0.25, 0.57, 0.38, true, aTab2.Tab ) --What's that for?
							guiCreateHeader(0.40, 0.3, 0.3, 0.04, "Informações:", true, aTab2.Tab)
		aTab2.ResourceName			= guiCreateLabel ( 0.41, 0.35, 0.6, 0.03, "Nome do Resource: ", true, aTab2.Tab )
		aTab2.ResourceAuthor		= guiCreateLabel ( 0.41, 0.4, 0.6, 0.03, "Autor: ", true, aTab2.Tab )
		aTab2.ResourceVersion		= guiCreateLabel ( 0.41, 0.45, 0.6, 0.03, "Versão: ", true, aTab2.Tab )
						  guiCreateLabel ( 0.40, 0.77, 0.20, 0.03, "Logs:", true, aTab2.Tab )
		aTab2.LogLine1		= guiCreateLabel ( 0.41, 0.81, 0.50, 0.03, "", true, aTab2.Tab )
		aTab2.LogLine2		= guiCreateLabel ( 0.41, 0.84, 0.50, 0.03, "", true, aTab2.Tab )
		aTab2.LogLine3		= guiCreateLabel ( 0.41, 0.87, 0.50, 0.03, "", true, aTab2.Tab )
		aTab2.LogLine4		= guiCreateLabel ( 0.41, 0.90, 0.50, 0.03, "", true, aTab2.Tab )
		aTab2.LogLine5		= guiCreateLabel ( 0.41, 0.93, 0.50, 0.03, "", true, aTab2.Tab )
						  guiCreateLabel ( 0.41, 0.65, 0.50, 0.04, "Executar comando:", true, aTab2.Tab )
		aTab2.Command		= guiCreateEdit ( 0.41, 0.70, 0.40, 0.055, "", true, aTab2.Tab )
		aTab2.ExecuteClient	= guiCreateButton ( 0.82, 0.70, 0.16, 0.035, "Client", true, aTab2.Tab, "execute" )
		aTab2.ExecuteServer	= guiCreateButton ( 0.82, 0.736, 0.16, 0.035, "Server", true, aTab2.Tab, "execute" )
		aTab2.ExecuteAdvanced	= guiCreateLabel ( 0.45, 0.71, 0.50, 0.04, "Para usuários avançados.", true, aTab2.Tab )
						  guiLabelSetColor ( aTab2.ExecuteAdvanced, 255, 0, 0 )
		aLogLines = 1
		
		if not getElementData(localPlayer, "DW-Desenvolvedor") then
			guiSetEnabled(aTab2.Tab, false)
		end
		
		aTab4 = {}
		aTab4.Tab			= guiCreateTab ( "Banimentos", aTabPanel, "bans" )
		aTab4.BansList		= guiCreateGridList ( 0.03, 0.05, 0.80, 0.87, true, aTab4.Tab )
						  guiGridListAddColumn( aTab4.BansList, "Nome", 0.22 )
						  guiGridListAddColumn( aTab4.BansList, "IP", 0.22 )
						  guiGridListAddColumn( aTab4.BansList, "Serial", 0.22 )
						  guiGridListAddColumn( aTab4.BansList, "Por", 0.22 )
						  guiGridListAddColumn( aTab4.BansList, "Data", 0.17 )
						  guiGridListAddColumn( aTab4.BansList, "Hora", 0.13 )
						  guiGridListAddColumn( aTab4.BansList, "Motivo", 0.92 )
						  guiGridListSetSortingEnabled( aTab4.BansList, false )
		aTab4.Details		= guiCreateButton ( 0.85, 0.10, 0.13, 0.04, "Detalhes", true, aTab4.Tab )
		aTab4.Unban			= guiCreateButton ( 0.85, 0.20, 0.13, 0.04, "Desban", true, aTab4.Tab, "unban" )
		aTab4.UnbanIP		= guiCreateButton ( 0.85, 0.25, 0.13, 0.04, "Desban IP", true, aTab4.Tab, "unbanip" )
		aTab4.UnbanSerial		= guiCreateButton ( 0.85, 0.30, 0.13, 0.04, "Desban Serial", true, aTab4.Tab, "unbanserial" )
		aTab4.BanIP			= guiCreateButton ( 0.85, 0.40, 0.13, 0.04, "Banir IP", true, aTab4.Tab, "banip" )
		aTab4.BanSerial		= guiCreateButton ( 0.85, 0.45, 0.13, 0.04, "Banir Serial", true, aTab4.Tab, "banserial" )
		aTab4.BansRefresh		= guiCreateButton ( 0.85, 0.85, 0.13, 0.04, "Atualizar", true, aTab4.Tab, "listbans" )

		aTab4.BansTotal		= guiCreateLabel ( 0.20, 0.94, 0.31, 0.04, "Mostrando  0 / 0  bans", true, aTab4.Tab )
		aTab4.BansMore		= guiCreateButton ( 0.50, 0.94, 0.13, 0.04, "Ver mais...", true, aTab4.Tab, "listbans" )
		
		
		
		aTab7 = {}
		aTab7.Tab			= guiCreateTab("Spawns", aTabPanel)
		aTab7.SpawnsList	= guiCreateGridList( 0.05, 0.05, 0.90, 0.75, true, aTab7.Tab)
		aTab7.SpawnListColumn = guiGridListAddColumn(aTab7.SpawnsList, "Local", 0.90)
		aTab7.Teleport		= guiCreateButton( 0.05, 0.85, 0.90, 0.10, "Teletransportar", true, aTab7.Tab)
		
		for i, v in ipairs(spawnPositions) do
			local row = guiGridListAddRow(aTab7.SpawnsList)
						guiGridListSetItemText(aTab7.SpawnsList, row, aTab7.SpawnListColumn, spawnPositions[i][4], false, false)
		end
		
		addEventHandler("onClientGUIClick", aTab7.Teleport, function()
			if source == aTab7.Teleport then
				local text = guiGridListGetItemText(aTab7.SpawnsList, guiGridListGetSelectedItem (aTab7.SpawnsList), 1)
				local number = string.sub(text, 2, 3) -- gets only the number of the string
				
				-- don't ask me what is this, just dont touch
				
				number = tonumber(number)
				local px = spawnPositions[number][1]
				local py = spawnPositions[number][2]
				local pz = spawnPositions[number][3]
				setElementPosition(localPlayer, px, py, pz)
			end
			
		end)
		
		
		
		aTab8 = {}
		aTab8.Tab			= guiCreateTab("Editor", aTabPanel)
		aTab8.ListPlayers	= guiCreateGridList( 0.05, 0.05, 0.35, 0.70, true, aTab8.Tab )
		aTab8.ListPlayersColumn = guiGridListAddColumn( aTab8.ListPlayers, "Jogador", 0.80 )
		aTab8.ListItems		= guiCreateGridList( 0.45, 0.05, 0.50, 0.70, true, aTab8.Tab )
		aTab8.ListItemsColumn	= guiGridListAddColumn( aTab8.ListItems, "Ítem", 0.55 )
		aTab8.ListItemsValueColumn 	= guiGridListAddColumn( aTab8.ListItems, "Valor", 0.35 )
		aTab8.EditPlayerName	= guiCreateEdit( 0.05, 0.77, 0.35, 0.05, "", true, aTab8.Tab )
		aTab8.EditItemName		= guiCreateEdit( 0.45, 0.77, 0.30, 0.05, "", true, aTab8.Tab )
		aTab8.EditItemValue		= guiCreateEdit( 0.76, 0.77, 0.19, 0.05, "", true, aTab8.Tab )
		aTab8.ButtonOK			= guiCreateButton( 0.05, 0.84, 0.90, 0.06, "Definir valor", true, aTab8.Tab )
		aTab8.ButtonOKLocal		= guiCreateButton( 0.05, 0.91, 0.90, 0.06, "Definir valor p/ jogador local", true, aTab8.Tab )
		
		guiSetInputMode("no_binds_when_editing")
		
		
		for j, player in ipairs(getElementsByType("player")) do
				rowPlayer = guiGridListAddRow(aTab8.ListPlayers)
						guiGridListSetItemText(aTab8.ListPlayers, rowPlayer, aTab8.ListPlayersColumn, getPlayerName(player), false, false)
		end
		
		--[[
		for _, item in ipairs(playerDataTable) do
				rowItem = guiGridListAddRow(aTab8.ListItems)
						guiGridListSetItemText(aTab8.ListItems, rowItem, aTab8.ListItemsColumn, item[1], false, false)
						guiGridListSetItemText(aTab8.ListItems, rowItem, aTab8.ListItemsValueColumn, "", false, false)
		end
		]]
		
		addEventHandler("onClientGUIClick", aTab8.ListPlayers, function(button)
			if source == aTab8.ListPlayers and button == "left" then
				local pName = guiGridListGetItemText(aTab8.ListPlayers, guiGridListGetSelectedItem(aTab8.ListPlayers), aTab8.ListPlayersColumn)
				local player = getPlayerFromName(pName)
				
				for _, item in ipairs(playerDataTable) do
				rowItem = guiGridListAddRow(aTab8.ListItems)
						guiGridListSetItemText(aTab8.ListItems, rowItem, aTab8.ListItemsColumn, item[1], false, false)
						local data = getElementData(player, item[1])
						if data == true or data == false then
							data = tostring(data)
						end
						guiGridListSetItemText(aTab8.ListItems, rowItem, aTab8.ListItemsValueColumn, data, false, false)
				end
			end
		end)
		
		addEventHandler("onClientGUIClick", aTab8.ListItems, function(button)
			if source == aTab8.ListItems and button == "left" then
				local pName = guiGridListGetItemText(aTab8.ListPlayers, guiGridListGetSelectedItem(aTab8.ListPlayers), aTab8.ListPlayersColumn)
				local itemName = guiGridListGetItemText(aTab8.ListItems, guiGridListGetSelectedItem(aTab8.ListItems), aTab8.ListItemsColumn)
				local itemValue = guiGridListGetItemText(aTab8.ListItems, guiGridListGetSelectedItem(aTab8.ListItems), aTab8.ListItemsValueColumn)
				
				guiSetText(aTab8.EditPlayerName, pName)
				guiSetText(aTab8.EditItemName, itemName)
				guiSetText(aTab8.EditItemValue, itemValue)
			end
		end)

		addEventHandler ( "aClientLog", _root, aClientLog )
		addEventHandler ( "aClientAdminChat", _root, aClientAdminChat )
		addEventHandler ( "aClientSync", _root, aClientSync )
		addEventHandler ( "aMessage", _root, aMessage )
		addEventHandler ( "aClientResourceStart", _root, aClientResourceStart )
		addEventHandler ( "aClientResourceStop", _root, aClientResourceStop )
		addEventHandler ( "aClientPlayerJoin", _root, aClientPlayerJoin )
		addEventHandler ( "onClientPlayerQuit", _root, aClientPlayerQuit )
		addEventHandler ( "onClientMouseEnter", _root, aClientMouseEnter )
		addEventHandler ( "onClientGUIClick", aAdminForm, aClientClick )
		addEventHandler ( "onClientGUIScroll", aAdminForm, aClientScroll )
		addEventHandler ( "onClientGUIDoubleClick", aAdminForm, aClientDoubleClick )
		addEventHandler ( "onClientGUIDoubleClick", aTab1.VehicleOptions, aClientDoubleClick )
		addEventHandler ( "onClientGUIAccepted", aAdminForm, aClientGUIAccepted )
		addEventHandler ( "onClientGUIChanged", aAdminForm, aClientGUIChanged )
		addEventHandler ( "onClientCursorMove", _root, aClientCursorMove )
		addEventHandler ( "onClientRender", _root, aClientRender )
		addEventHandler ( "onClientPlayerChangeNick", _root, aClientPlayerChangeNick )
		addEventHandler ( "onClientResourceStop", _root, aMainSaveSettings )
		addEventHandler ( "onClientGUITabSwitched", aTabPanel, aClientGUITabSwitched )

		bindKey ( "arrow_d", "down", aPlayerListScroll, 1 )
		bindKey ( "arrow_u", "down", aPlayerListScroll, -1 )

		triggerServerEvent ( "aSync", getLocalPlayer(), "players" )
		if ( hasPermissionTo ( "command.listmessages" ) ) then triggerServerEvent ( "aSync", getLocalPlayer(), "messages" ) end
		triggerServerEvent ( "aSync", getLocalPlayer(), "server" )
		triggerEvent ( "onAdminInitialize", resourceRoot )
		showCursor ( true )

		if getVersion().sortable and getVersion().sortable < "1.0.4-9.02436" then
			guiSetText ( aAdminForm, "Aviso - Painel não compatível com a versão do MTA" )
			guiLabelSetHorizontalAlign ( guiCreateLabel ( 0.30, 0.11, 0.4, 0.04, "Atualize o servidor.", true, aAdminForm ), "center" )
		end
	end
	guiSetVisible ( aAdminForm, true )
	showCursor ( true )
	-- If the camera target was on another player, select him in the player list
	local element = getCameraTarget()
	if element and getElementType(element)=="vehicle" then
		element = getVehicleController(element)
	end
	if element and getElementType(element)=="player" and element ~= getLocalPlayer() then
		for row=0,guiGridListGetRowCount( aTab1.PlayerList )-1 do
			if ( guiGridListGetItemPlayerName ( aTab1.PlayerList, row, 1 ) == getPlayerName ( element ) ) then
				guiGridListSetSelectedItem ( aTab1.PlayerList, row, 1 )
				break
			end
		end
	end
end

function aAdminMenuClose ( destroy )
	if ( destroy ) then
		aMainSaveSettings ()
		aPlayers = {}
		aWeathers = {}
		aBans = {}
		removeEventHandler ( "aClientLog", _root, aClientLog )
		removeEventHandler ( "aClientAdminChat", _root, aClientAdminChat )
		removeEventHandler ( "aClientSync", _root, aClientSync )
		removeEventHandler ( "aMessage", _root, aMessage )
		removeEventHandler ( "aClientResourceStart", _root, aClientResourceStart )
		removeEventHandler ( "aClientResourceStop", _root, aClientResourceStop )
		removeEventHandler ( "aClientPlayerJoin", _root, aClientPlayerJoin )
		removeEventHandler ( "onClientPlayerQuit", _root, aClientPlayerQuit )
		removeEventHandler ( "onClientMouseEnter", _root, aClientMouseEnter )
		removeEventHandler ( "onClientGUIClick", aAdminForm, aClientClick )
		removeEventHandler ( "onClientGUIScroll", aAdminForm, aClientScroll )
		removeEventHandler ( "onClientGUIDoubleClick", aAdminForm, aClientDoubleClick )
		removeEventHandler ( "onClientGUIDoubleClick", aTab1.VehicleOptions, aClientDoubleClick )
		removeEventHandler ( "onClientGUIAccepted", aAdminForm, aClientGUIAccepted )
		removeEventHandler ( "onClientGUIChanged", aAdminForm, aClientGUIChanged )
		removeEventHandler ( "onClientCursorMove", _root, aClientCursorMove )
		removeEventHandler ( "onClientRender", _root, aClientRender )
		removeEventHandler ( "onClientPlayerChangeNick", _root, aClientPlayerChangeNick )
		removeEventHandler ( "onClientResourceStop", _root, aMainSaveSettings )
		unbindKey ( "arrow_d", "down", aPlayerListScroll )
		unbindKey ( "arrow_u", "down", aPlayerListScroll )
		destroyElement ( aTab1.VehicleOptions )
		destroyElement ( aAdminForm )
		aAdminForm = nil
	else
		guiSetVisible ( aTab1.VehicleOptions, false )
		guiSetVisible ( aAdminForm, false )
		toggleAllControls(true)
	end
	guiSetInputEnabled ( false )
	showCursor ( false )
end

function aAdminRefresh ()
	if ( guiGridListGetSelectedItem ( aTab1.PlayerList ) ~= -1 ) then
		local player = getPlayerFromNick ( guiGridListGetItemPlayerName ( aTab1.PlayerList, guiGridListGetSelectedItem( aTab1.PlayerList ), 1 ) )
		if ( player and aPlayers[player] ) then
			guiSetText ( aTab1.Name, "Nome: "..aPlayers[player]["name"] )
			guiSetText ( aTab1.Mute, iif ( aPlayers[player]["mute"], "Falante", "Mudo" ) )
			guiSetText ( aTab1.Freeze, iif ( aPlayers[player]["freeze"], "Descongelar", "Congelar" ) )
			--guiSetText ( aTab1.Username, "Community Username: "..( aPlayers[player]["username"] or "" ) )
			guiSetText ( aTab1.Version, "Versão: "..( aPlayers[player]["version"] or "" ) )
			guiSetText ( aTab1.Accountname, "Conta: "..( aPlayers[player]["accountname"] or "" ) )
			--guiSetText ( aTab1.Groups, "Groups: "..( aPlayers[player]["groups"] or "None" ) )
			if ( isPedDead ( player ) ) then guiSetText ( aTab1.Health, "Sangue: morto" )
			else guiSetText ( aTab1.Health, "Sangue: "..getElementData(player, "blood")) end
			--else guiSetText ( aTab1.Health, "Sangue: "..getElementData(player, "blood").." | "..math.ceil ( getElementHealth ( player ) ).."%" ) end
			--guiSetText ( aTab1.Armour, "Colete: "..math.ceil ( getPedArmor ( player ) ).."%" )
			guiSetText ( aTab1.Skin, "Assassinatos: "..iif ( getElementData(player, "murders"), getElementData(player, "murders"), "N/A" ) )
			--guiSetText ( aTab1.Skin, "Skin: "..iif ( getElementModel ( player ), getElementModel ( player ), "N/A" ) )
			if ( getPlayerTeam ( player ) ) then guiSetText ( aTab1.Team, "Team: "..getTeamName ( getPlayerTeam ( player ) ) )
			else guiSetText ( aTab1.Team, "Team: None" ) end
			
			
			local backpack = getElementData(player, "MAX_Slots")
			local backpackName = "nenhuma"
			if backpack then
				if backpack == 36 then
					backpackName = "Coyote Backpack"
				elseif backpack == 26 then
					backpackName = "Czech Backpack"
				elseif backpack == 16 then
					backpackName = "Alice Pack"
				elseif backpack == 12 then
					backpackName = "Assault Pack (ACU)"
				end
			end
			guiSetText(aTab1.Ping, "Mochila: " .. backpackName)
			--guiSetText ( aTab1.Ping, "Ping: "..getPlayerPing ( player ) )
			guiSetText ( aTab1.JetPack, iif ( doesPedHaveJetPack ( player ), "Remover JetPack", "Dar JetPack" ) )
			
			
			local pHumanity = getElementData(player, "humanity")
			local pHumanity2 = ""
			if pHumanity >= 5000 then
				pHumanity2 = " (Herói)"
			elseif pHumanity <= 0 then
				pHumanity2 = " (Bandido)"
			end
			guiSetText(aTab1.Weapon, "Humanidade: " .. getElementData(player, "humanity") .. pHumanity2)
			
			
			local x, y, z = getElementPosition ( player )
			guiSetText ( aTab1.Area, "Local: "..iif ( getZoneName ( x, y, z, false ) == getZoneName ( x, y, z, true ), getZoneName ( x, y, z, false ), getZoneName ( x, y, z, false ).." ("..getZoneName ( x, y, z, true )..")" ) )
			
			
			local pCurrentWep1 = getElementData(player, "currentweapon_1")
			local pCurrentWep2 = getElementData(player, "currentweapon_2")
			local pCurrentWep3 = getElementData(player, "currentweapon_3")
			if not pCurrentWep1 then
				pCurrentWep1 = "nenhuma"
			end
			if not pCurrentWep2 then
				pCurrentWep2 = "nenhuma"
			end
			if not pCurrentWep3 then
				pCurrentWep3 = "nenhuma"
			end
			guiSetText ( aTab1.PositionX, "Arma #1: "..pCurrentWep1)
			guiSetText ( aTab1.PositionY, "Arma #2: "..pCurrentWep2)
			guiSetText ( aTab1.PositionZ, "Arma #3: "..pCurrentWep3)
			
			
			local vehicle = getPedOccupiedVehicle ( player )
			if ( vehicle ) then
				guiSetText ( aTab1.Vehicle, "Veículo: "..getVehicleName ( vehicle ).." (ID: "..getElementModel ( vehicle )..")" )
				guiSetText ( aTab1.VehicleHealth, "Veículo (HP): " .. math.floor(getElementHealth(vehicle)/10) .. "%" )
			else
				guiSetText ( aTab1.Vehicle, "Veículo: nenhum (a pé)" )
				guiSetText ( aTab1.VehicleHealth, "Veículo (HP): 0%" )
			end
			if ( aPlayers[player]["admin"] ) then
				guiSetText(aTab1.Admin, "Tirar admin")
			else
				guiSetText(aTab1.Admin, "Dar admin")
			end
			return player
		end
	end
end

function aClientSync ( type, table )
	if ( type == "player" and aPlayers[source] ) then
		for type, data in pairs ( table ) do
			aPlayers[source][type] = data
		end
	elseif ( type == "players" ) then
		aPlayers = table
	elseif ( type == "resources" ) then
		local bInclMaps = guiCheckBoxGetSelected ( aTab2.ResourceInclMaps )
		aResources = table
		for id, resource in ipairs(table) do
			if bInclMaps or resource["type"] ~= "map" then
				local row = guiGridListAddRow ( aTab2.ResourceList )
				guiGridListSetItemText ( aTab2.ResourceList, row, 1, resource["name"], false, false )
				guiGridListSetItemText ( aTab2.ResourceList, row, 2, resource["numsettings"] > 0 and tostring(resource["numsettings"]) or "", false, false )
				guiGridListSetItemText ( aTab2.ResourceList, row, 3, resource["state"], false, false )
				guiGridListSetItemText ( aTab2.ResourceList, row, 4, resource["fullName"], false, false )
				guiGridListSetItemText ( aTab2.ResourceList, row, 5, resource["author"], false, false )
				guiGridListSetItemText ( aTab2.ResourceList, row, 6, resource["version"], false, false )
			end
		end
	elseif ( type == "loggedout" ) then
		aAdminDestroy()
	elseif ( type == "admins" ) then
		--if ( guiGridListGetRowCount ( aTab5.AdminPlayers ) > 0 ) then guiGridListClear ( aTab5.AdminPlayers ) end
		for id, player in ipairs(getElementsByType("player")) do
			if ( table[player]["admin"] == false ) and ( player == getLocalPlayer() ) then
				aAdminDestroy()
				break
			elseif aPlayers[player] then
				aPlayers[player]["groups"] = table[player]["groups"]
				if ( table[player]["chat"] ) then
					local id = 0
					local exists = false
					while ( id <= guiGridListGetRowCount( aTab5.AdminPlayers ) ) do
						if ( guiGridListGetItemPlayerName ( aTab5.AdminPlayers, id, 1 ) == getPlayerName ( player ) ) then
							exists = true
						end
						id = id + 1
					end
					if ( exists == false ) then guiGridListSetItemPlayerName ( aTab5.AdminPlayers, guiGridListAddRow ( aTab5.AdminPlayers ), 1, getPlayerName ( player ), false, false ) end
				end
			end
		end
	elseif ( type == "bansdirty" ) then
		g_GotLatestBansList = false
		if aAdminForm and guiGetVisible ( aAdminForm ) and guiGetSelectedTab( aTabPanel ) == aTab4.Tab then
			-- Request full bans list if bans tab is displayed when 'bansdirty' is received
			triggerServerEvent ( "aSync", getLocalPlayer(), "bans" )
		end
	elseif ( type == "bans" or type == "bansmore" ) then
		if type == "bans" then
			g_GotLatestBansList = true
			guiGridListClear ( aTab4.BansList )
			aBans = {}
			aBans["Serial"] = {}
			aBans["IP"] = {}
		end
		local total = tonumber(table.total) or 0
		local amount = guiGridListGetRowCount( aTab4.BansList ) + #table
		guiSetText( aTab4.BansTotal, "Showing  " .. amount .. " / " .. total .. "  bans" )
		if g_GotLatestBansList then
			for i=1,#table do
				local ban = table[i]
				if ban.serial then
					aBans["Serial"][ban.serial] = ban
				end
				if ban.ip then
					aBans["IP"][ban.ip] = ban
				end
				local time, date = "-", "-"
				if ban.seconds then
					local realTime = getRealTime( ban.seconds )
					time = string.format("%02d:%02d", realTime.hour, realTime.minute )
					date = string.format("%04d-%02d-%02d", realTime.year + 1900, realTime.month + 1, realTime.monthday )
				end
				local reason = ban["reason"] and ban["reason"]~="nil" and ban["reason"] or ""
				local row = guiGridListAddRow ( aTab4.BansList )
				guiGridListSetItemText ( aTab4.BansList, row, 1, ban["nick"]	or "n/a", false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 2, ban.ip			or "n/a", false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 3, ban.serial		or "n/a", false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 4, ban["banner"]	or "n/a", false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 5, date,					false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 6, time,					false, false )
				guiGridListSetItemText ( aTab4.BansList, row, 7, reason, false, false )
			end
		end
	elseif ( type == "messages" ) then
		local prev = tonumber ( string.sub ( guiGetText ( aTab1.Messages ), 1, 1 ) )
		if ( prev < table["unread"] ) then
			playSoundFrontEnd ( 18 )
		end
		guiSetText ( aTab1.Messages, table["unread"].."/"..table["total"].." não lidas" )
		
	end
end

_getPlayerName = getPlayerName

			function getPlayerName(player)
				if guiCheckBoxGetSelected(aTab1.HideColorCodes) then
					return string.gsub(_getPlayerName(player), "#%x%x%x%x%x%x", "")
				else
					return _getPlayerName(player)
				end
			end

function aClientGUITabSwitched( selectedTab )
	if getElementParent( selectedTab ) == aTabPanel then
		if selectedTab == aTab2.Tab then
			-- Handle initial update of resources list
			if guiGridListGetRowCount( aTab2.ResourceList ) == 0 then
				if ( hasPermissionTo ( "command.listresources" ) ) then 
					triggerServerEvent ( "aSync", getLocalPlayer(), "resources" ) 
				end
			end
		elseif selectedTab == aTabMap.Tab then
			-- Handle initial update of map list
			if guiGridListGetRowCount( aTabMap.MapList ) == 0 then
				if ( hasPermissionTo ( "command.listresources" ) ) then 
					triggerServerEvent ( "getMaps_s", getLocalPlayer(), getLocalPlayer(), true ) 
				end
			end
		elseif selectedTab == aTab4.Tab then
			if not g_GotLatestBansList then
				-- Request full bans list if bans tab is selected and current list is out of date
				triggerServerEvent ( "aSync", getLocalPlayer(), "bans" )
			end
		end	
	end 
end

function aMessage ( )

end

function aClientResourceStart ( resource )
	local id = 0
	while ( id <= guiGridListGetRowCount( aTab2.ResourceList ) ) do
		if ( guiGridListGetItemText ( aTab2.ResourceList, id, 1 ) == resource ) then
			guiGridListSetItemText ( aTab2.ResourceList, id, 3, "rodando", false, false )
		end
		id = id + 1
	end
end

function aClientResourceStop ( resource )
	local id = 0
	while ( id <= guiGridListGetRowCount( aTab2.ResourceList ) ) do
		if ( guiGridListGetItemText ( aTab2.ResourceList, id, 1 ) == resource ) then
			guiGridListSetItemText ( aTab2.ResourceList, id, 3, "carregado", false, false )
		end
		id = id + 1
	end
end

function aClientPlayerJoin ( ip, username, accountname, serial, admin, country )
	if ip == false and serial == false then
		-- Update country only
		if aPlayers[source] then
			aPlayers[source]["country"] = country
		end
		return
	end
	aPlayers[source] = {}
	aPlayers[source]["name"] = getPlayerName ( source )
	aPlayers[source]["IP"] = ip
	aPlayers[source]["username"] = username or "N/A"
	aPlayers[source]["accountname"] = accountname or "N/A"
	aPlayers[source]["serial"] = serial
	aPlayers[source]["admin"] = admin
	aPlayers[source]["country"] = country
	local row = guiGridListAddRow ( aTab1.PlayerList )
	guiGridListSetItemPlayerName ( aTab1.PlayerList, row, 1, getPlayerName ( source ), false, false )
	if ( aSpectator.PlayerList ) then
		local row = guiGridListAddRow ( aSpectator.PlayerList )
		guiGridListSetItemPlayerName ( aSpectator.PlayerList, row, 1, getPlayerName ( source ), false, false )
	end
end

function aClientPlayerQuit ()
	local id = 0
	while ( id <= guiGridListGetRowCount( aTab1.PlayerList ) ) do
		if ( guiGridListGetItemPlayerName ( aTab1.PlayerList, id, 1 ) == getPlayerName ( source ) ) then
			guiGridListRemoveRow ( aTab1.PlayerList, id )
		end
		id = id + 1
	end
	if ( aSpectator.PlayerList ) then
		local id = 0
		while ( id <= guiGridListGetRowCount( aSpectator.PlayerList ) ) do
			if ( guiGridListGetItemPlayerName ( aSpectator.PlayerList, id, 1 ) == getPlayerName ( source ) ) then
				guiGridListRemoveRow ( aSpectator.PlayerList, id )
			end
			id = id + 1
		end
	end
	aPlayers[source] = nil
end

function aPlayerListScroll ( key, state, inc )
	if ( not guiGetVisible ( aAdminForm ) ) then return end
	local max = guiGridListGetRowCount ( aTab1.PlayerList )
	if ( max <= 0 ) then return end
	local current = guiGridListGetSelectedItem ( aTab1.PlayerList )
	local next = current + inc
	max = max - 1
	if ( current == -1 ) then
		guiGridListSetSelectedItem ( aTab1.PlayerList, 0, 1 )
	elseif ( next > max ) then return
	elseif ( next < 0 ) then return
	else
		guiGridListSetSelectedItem ( aTab1.PlayerList, next, 1 )
	end
	local oldsource = source
	source = aTab1.PlayerList;
	aClientClick ( "left" )
	source = oldsource
end

function aClientPlayerChangeNick ( oldNick, newNick )
	local lists = { aTab1.PlayerList, aTab5.AdminPlayers, aSpectator.PlayerList }
	for _,gridlist in ipairs(lists) do
		for row=0,guiGridListGetRowCount(gridlist)-1 do
			if ( guiGridListGetItemPlayerName ( gridlist, row, 1 ) == oldNick ) then
				guiGridListSetItemPlayerName ( gridlist, row, 1, newNick, false, false )
			end
		end
	end
end

function aClientLog ( text )
	if text == "deleted" then
		guiGridListClear ( aTab2.ResourceList )
		triggerServerEvent ( "aSync", getLocalPlayer(), "resources" )	
	end
	text = "#"..aLogLines..": "..text
	if ( guiGetText ( aTab2.LogLine1 ) == "" ) then guiSetText ( aTab2.LogLine1, text )
	elseif ( guiGetText ( aTab2.LogLine2 ) == "" ) then guiSetText ( aTab2.LogLine2, text )
	elseif ( guiGetText ( aTab2.LogLine3 ) == "" ) then guiSetText ( aTab2.LogLine3, text )
	elseif ( guiGetText ( aTab2.LogLine4 ) == "" ) then guiSetText ( aTab2.LogLine4, text )
	elseif ( guiGetText ( aTab2.LogLine5 ) == "" ) then guiSetText ( aTab2.LogLine5, text )
	else
		guiSetText ( aTab2.LogLine1, guiGetText ( aTab2.LogLine2 ) )
		guiSetText ( aTab2.LogLine2, guiGetText ( aTab2.LogLine3 ) )
		guiSetText ( aTab2.LogLine3, guiGetText ( aTab2.LogLine4 ) )
		guiSetText ( aTab2.LogLine4, guiGetText ( aTab2.LogLine5 ) )
		guiSetText ( aTab2.LogLine5, text )
	end
	
	aLogLines = aLogLines + 1
end

function aClientAdminChat ( message )
	guiSetText ( aTab5.AdminChat, guiGetText ( aTab5.AdminChat )..""..getPlayerName ( source )..": "..message )
	guiSetProperty ( aTab5.AdminChat, "CaratIndex", tostring ( string.len ( guiGetText ( aTab5.AdminChat ) ) ) )
	if ( guiCheckBoxGetSelected ( aTab6.AdminChatOutput ) ) then outputChatBox ( "ADMIN> "..getPlayerName ( source )..": "..message, 255, 0, 0 ) end
	if ( ( guiCheckBoxGetSelected ( aTab5.AdminChatSound ) ) and ( source ~= getLocalPlayer() ) ) then playSoundFrontEnd ( 13 ) end
end

function aSetCurrentAmmo ( ammo )
	ammo = tonumber ( ammo )
	if ( ( ammo ) and ( ammo > 0 ) and ( ammo < 10000 ) ) then
		aCurrentAmmo = ammo
		return
	end
	outputChatBox ( "Invalid ammo value", 255, 0, 0 )
end

function aClientGUIAccepted ( element )
	if ( element == aTab5.AdminText ) then
		local message = guiGetText ( aTab5.AdminText )
		if ( ( message ) and ( message ~= "" ) ) then 
			if ( gettok ( message, 1, 32 ) == "/clear" ) then guiSetText ( aTab5.AdminChat, "" )
			else triggerServerEvent ( "aAdminChat", getLocalPlayer(), message ) end
			guiSetText ( aTab5.AdminText, "" )
		end
	end
end

function aClientGUIChanged ()
	if ( source == aTab1.PlayerListSearch ) then
		guiGridListClear ( aTab1.PlayerList )
		local text = guiGetText ( source )
		if ( text == "" ) then
			for id, player in ipairs ( getElementsByType ( "player" ) ) do
				guiGridListSetItemPlayerName ( aTab1.PlayerList, guiGridListAddRow ( aTab1.PlayerList ), 1, getPlayerName ( player ), false, false )
			end
		else
			for id, player in ipairs ( getElementsByType ( "player" ) ) do
				if ( string.find ( string.upper ( getPlayerName ( player ) ), string.upper ( text ), 1, true ) ) then
					guiGridListSetItemPlayerName ( aTab1.PlayerList, guiGridListAddRow ( aTab1.PlayerList ), 1, getPlayerName ( player ), false, false )
				end
			end
		end
	elseif ( source == aTab2.ResourceListSearch ) then
		local bInclMaps = guiCheckBoxGetSelected ( aTab2.ResourceInclMaps )
		guiGridListClear ( aTab2.ResourceList )
		local text = string.lower(guiGetText(source))
		if ( text == "" ) then
			for id, resource in ipairs(aResources) do
				if bInclMaps or resource["type"] ~= "map" then
					local row = guiGridListAddRow ( aTab2.ResourceList )
					guiGridListSetItemText ( aTab2.ResourceList, row, 1, resource["name"], false, false )
					guiGridListSetItemText ( aTab2.ResourceList, row, 2, resource["numsettings"] > 0 and tostring(resource["numsettings"]) or "", false, false )
					guiGridListSetItemText ( aTab2.ResourceList, row, 3, resource["state"], false, false )
					guiGridListSetItemText ( aTab2.ResourceList, row, 4, resource["fullName"], false, false )
					guiGridListSetItemText ( aTab2.ResourceList, row, 5, resource["author"], false, false )
					guiGridListSetItemText ( aTab2.ResourceList, row, 6, resource["version"], false, false )
				end
			end
		else
			for id, resource in ipairs(aResources) do
				if bInclMaps or resource["type"] ~= "map" then
					if string.find(string.lower(resource.name), text, 1, true) then
						local row = guiGridListAddRow ( aTab2.ResourceList )
						guiGridListSetItemText ( aTab2.ResourceList, row, 1, resource["name"], false, false )
						guiGridListSetItemText ( aTab2.ResourceList, row, 2, resource["numsettings"] > 0 and tostring(resource["numsettings"]) or "", false, false )
						guiGridListSetItemText ( aTab2.ResourceList, row, 3, resource["state"], false, false )
						guiGridListSetItemText ( aTab2.ResourceList, row, 4, resource["fullName"], false, false )
						guiGridListSetItemText ( aTab2.ResourceList, row, 5, resource["author"], false, false )
						guiGridListSetItemText ( aTab2.ResourceList, row, 6, resource["version"], false, false )
					end
				end
			end
		end
	end
end

function aClientScroll ( element )
	if ( source == aTab6.MouseSense ) then
		guiSetText ( aTab6.MouseSenseCur, "Cursor sensivity: ("..string.sub ( guiScrollBarGetScrollPosition ( source ) / 50, 0, 4 )..")" )
	end
end

function aClientCursorMove ( rx, ry, x, y )
	
end

function aClientMouseEnter ( element )
	if ( getElementType ( source ) == "gui-button" ) then

	end
end

function aClientDoubleClick ( button )
	if ( source == aTab1.WeaponOptions ) then
		if ( guiGridListGetSelectedItem ( aTab1.WeaponOptions ) ~= -1 ) then
			aCurrentWeapon = getWeaponIDFromName ( guiGridListGetItemText ( aTab1.WeaponOptions, guiGridListGetSelectedItem ( aTab1.WeaponOptions ), 1 ) )
			local wep = guiGridListGetItemText ( aTab1.WeaponOptions, guiGridListGetSelectedItem ( aTab1.WeaponOptions ), 1 )
			wep = string.gsub ( wep, "Combat Shotgun", "Combat SG" )
			guiSetText ( aTab1.GiveWeapon, "Give: "..wep.." " )
		end
		guiSetVisible ( aTab1.WeaponOptions, false )
	elseif ( source == aTab1.VehicleOptions ) then
		local item = guiGridListGetSelectedItem ( aTab1.VehicleOptions )
		if ( item ~= -1 ) then
			if ( guiGridListGetItemText ( aTab1.VehicleOptions, item, 1 ) ~= "" ) then
				aCurrentVehicle = tonumber ( guiGridListGetItemData ( aTab1.VehicleOptions, item, 1 ) )
				guiSetText ( aTab1.GiveVehicle, "Give: "..guiGridListGetItemText ( aTab1.VehicleOptions, item, 1 ).." " )
			end
		end
		guiSetVisible ( aTab1.VehicleOptions, false )
	elseif ( source == aTab1.SlapOptions ) then
		if ( guiGridListGetSelectedItem ( aTab1.SlapOptions ) ~= -1 ) then
			aCurrentSlap = guiGridListGetItemText ( aTab1.SlapOptions, guiGridListGetSelectedItem ( aTab1.SlapOptions ), 1 )
			guiSetText ( aTab1.Slap, "Slap! "..aCurrentSlap.." _" )
			if ( aSpecSlap ) then guiSetText ( aSpecSlap, "Slap! "..aCurrentSlap.."hp" ) end
		end
		guiSetVisible ( aTab1.SlapOptions, false )
	elseif ( source == aTab2.ResourceList ) then
		if ( guiGridListGetSelectedItem ( aTab2.ResourceList ) ~= -1 ) then
			aManageSettings ( guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ) )
		end
	end
	if ( guiGetVisible ( aTab1.WeaponOptions ) ) then guiSetVisible ( aTab1.WeaponOptions, false ) end
	if ( guiGetVisible ( aTab1.VehicleOptions ) ) then guiSetVisible ( aTab1.VehicleOptions, false ) end
	if ( guiGetVisible ( aTab1.SlapOptions ) ) then guiSetVisible ( aTab1.SlapOptions, false ) end
end

function aClientClick ( button )
	guiSetInputEnabled ( false )
	if ( ( source == aTab1.WeaponOptions ) or ( source == aTab1.VehicleOptions ) or ( source == aTab1.SlapOptions ) ) then return
	else
		if ( guiGetVisible ( aTab1.WeaponOptions ) ) then guiSetVisible ( aTab1.WeaponOptions, false ) end
		if ( guiGetVisible ( aTab1.VehicleOptions ) ) then guiSetVisible ( aTab1.VehicleOptions, false ) end
		if ( guiGetVisible ( aTab1.SlapOptions ) ) then guiSetVisible ( aTab1.SlapOptions, false ) end
	end
	if ( button == "left" ) then
		-- TAB 1, PLAYERS
		if ( getElementParent ( source ) == aTab1.Tab ) then
			if ( source == aTab1.Messages ) then
				aViewMessages()
			elseif ( source == aTab1.PlayerListSearch ) then
				guiSetInputEnabled ( true )
			elseif ( source == aTab1.HideColorCodes ) then
				updateColorCodes()
			elseif ( source == aTab1.AnonAdmin ) then
				setAnonAdmin( guiCheckBoxGetSelected ( aTab1.AnonAdmin ) )
			elseif ( getElementType ( source ) == "gui-button" )  then
				if ( source == aTab1.GiveVehicle ) then guiBringToFront ( aTab1.VehicleDropDown )
				elseif ( source == aTab1.GiveWeapon ) then guiBringToFront ( aTab1.WeaponDropDown )
				elseif ( source == aTab1.Slap ) then guiBringToFront ( aTab1.SlapDropDown ) end
				if ( guiGridListGetSelectedItem ( aTab1.PlayerList ) == -1 ) then
					aMessageBox ( "error", "No player selected!" )
				else
					local name = guiGridListGetItemPlayerName ( aTab1.PlayerList, guiGridListGetSelectedItem( aTab1.PlayerList ), 1 )
					local escname = string.gsub( name,"([\"])", "\\\"" )
					local player = getPlayerFromNick ( name )
					if ( source == aTab1.Kick ) then aInputBox ( "Kick player "..name, "Digite o motivo", "", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"kick\", $value )" )
					elseif ( source == aTab1.Ban ) then aBanInputBox ( player )
					elseif ( source == aTab1.Slap ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "slap", aCurrentSlap )
					elseif ( source == aTab1.Mute ) then if not aPlayers[player]["mute"] then aMuteInputBox ( player ) else aMessageBox ( "question", "Certeza que quer desmutar "..name.."?", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"mute\" )" ) end
					elseif ( source == aTab1.Freeze ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "freeze" )
					elseif ( source == aTab1.Spectate ) then aSpectate ( player )
					elseif ( source == aTab1.Nick ) then aInputBox ( "Set Nick", "Digite o novo nick", name, "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setnick\", $value )" )
					elseif ( source == aTab1.Shout ) then aInputBox ( "Shout", "Digite o texto a ser mostrado", "", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"shout\", $value )" )
					elseif ( source == aTab1.SetHealth ) then aInputBox ( "Set Health", "Enter the health value", "100", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"sethealth\", $value )" )
					elseif ( source == aTab1.SetArmour ) then aInputBox ( "Set Armour", "Enter the armour value", "100", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setarmour\", $value )" )
					elseif ( source == aTab1.SetTeam ) then aPlayerTeam ( player )
					elseif ( source == aTab1.SetSkin ) then aPlayerSkin ( player )
					elseif ( source == aTab1.SetInterior ) then aPlayerInterior ( player )
					elseif ( source == aTab1.JetPack ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "jetpack" )
					elseif ( source == aTab1.SetMoney ) then aInputBox ( "Set Money", "Enter the money value", "0", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setmoney\", $value )" )
					elseif ( source == aTab1.SetStats ) then aPlayerStats ( player )
					elseif ( source == aTab1.SetDimension ) then aInputBox ( "Dimension ID Required", "Enter Dimension ID between 0  and 65535", "0", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setdimension\", $value )" )
					elseif ( source == aTab1.GiveVehicle ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "givevehicle", aCurrentVehicle )
					elseif ( source == aTab1.GiveWeapon ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "giveweapon", aCurrentWeapon, aCurrentAmmo )
					elseif ( source == aTab1.Warp ) then triggerServerEvent ( "aPlayer", getLocalPlayer(), player, "warp" )
					elseif ( source == aTab1.WarpTo ) then aPlayerWarp ( player )
					elseif ( source == aTab1.VehicleFix ) then triggerServerEvent ( "aVehicle", getLocalPlayer(), player, "repair" )
					elseif ( source == aTab1.VehicleBlow ) then triggerServerEvent ( "aVehicle", getLocalPlayer(), player, "blowvehicle" )
					elseif ( source == aTab1.VehicleDestroy ) then triggerServerEvent ( "aVehicle", getLocalPlayer(), player, "destroyvehicle" )
					elseif ( source == aTab1.VehicleCustomize ) then aVehicleCustomize ( player )
					elseif ( source == aTab1.Admin ) then
						if ( aPlayers[player]["admin"] ) then aMessageBox ( "warning", "Remover o admin do(a) "..name.."?", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setgroup\", false )" )
						else aMessageBox ( "warning", "Dar admin a(o)  "..name.."?", "triggerServerEvent ( \"aPlayer\", getLocalPlayer(), getPlayerFromNick ( \""..escname.."\" ), \"setgroup\", true )" ) end
					end
				end
			elseif ( source == aTab1.VehicleDropDown ) then
				local x1, y1 = guiGetPosition ( aAdminForm, false )
				local x2, y2 = guiGetPosition ( aTabPanel, false )
				local x3, y3 = guiGetPosition ( aTab1.Tab, false )
				local x4, y4 = guiGetPosition ( aTab1.GiveVehicle, false )
				guiSetPosition ( aTab1.VehicleOptions, x1 + x2 + x3 + x4, y1 + y2 + y3 + y4 + 20, false )
				guiSetVisible ( aTab1.VehicleOptions, true )
				guiBringToFront ( aTab1.VehicleOptions )
			elseif ( source == aTab1.WeaponDropDown ) then
				guiSetVisible ( aTab1.WeaponOptions, true )
				guiBringToFront ( aTab1.WeaponOptions )
			elseif ( source == aTab1.SlapDropDown ) then
				guiSetVisible ( aTab1.SlapOptions, true )
				guiBringToFront ( aTab1.SlapOptions )
			elseif ( source == aTab1.PlayerList ) then
				if ( guiGridListGetSelectedItem( aTab1.PlayerList ) ~= -1 ) then
					local player = aAdminRefresh ()
					if ( player ) then
						triggerServerEvent ( "aSync", getLocalPlayer(), "player", player )
						if ( ( guiCheckBoxGetSelected ( aTab6.OutputPlayer ) ) and ( player ) ) then outputConsole ( "Name: "..aPlayers[player]["name"]..", IP: "..aPlayers[player]["IP"]..", Serial: "..aPlayers[player]["serial"]..", Community Username: "..aPlayers[player]["username"]..", Account Name: "..aPlayers[player]["accountname"] ) end
						guiSetText ( aTab1.IP, "IP: "..aPlayers[player]["IP"] )
						guiSetText ( aTab1.Serial, "Serial: "..aPlayers[player]["serial"] )
						--guiSetText ( aTab1.Username, "Community Username: "..aPlayers[player]["username"] )
						guiSetText ( aTab1.Accountname, "Account Name: "..aPlayers[player]["accountname"] )
						local countryCode = aPlayers[player]["country"]
						loadFlagImage ( aTab1.Flag, countryCode )
						if not countryCode then
							guiSetText ( aTab1.CountryCode, "" )
						else
							local x, y = guiGetPosition ( aTab1.IP, false )
							local width = guiLabelGetTextExtent ( aTab1.IP )
							guiSetPosition ( aTab1.Flag, x + width + 7, y + 4, false )
							guiSetPosition ( aTab1.CountryCode, x + width + 30, y, false )
							guiSetText ( aTab1.CountryCode, tostring( countryCode ) )
						end
						guiSetText ( aTab1.Version, "Version: " .. ( aPlayers[player]["version"] or "" ) )
					end
				else
					guiSetText ( aTab1.Name, "Nome: N/A" )
					guiSetText ( aTab1.IP, "IP: N/A" )
					guiSetText ( aTab1.Serial, "Serial: N/A" )
					--guiSetText ( aTab1.Username, "Community Username: N/A" )
					guiSetText ( aTab1.Version, "Versão: N/A" )
					guiSetText ( aTab1.Accountname, "Conta: N/A" )
					guiSetText ( aTab1.Groups, "Grupos: N/A" )
					guiSetText ( aTab1.Mute, "Mudo" )
					guiSetText ( aTab1.Freeze, "Congelar" )
					guiSetText ( aTab1.Admin, "Dar admin" )
					guiSetText ( aTab1.Health, "Sangue: 0" ) 
					guiSetText ( aTab1.Armour, "Colete: " )
					guiSetText ( aTab1.Skin, "Assassinatos: N/A" )
					guiSetText ( aTab1.Team, "Time: None" )
					guiSetText ( aTab1.Ping, "Mochila: nenhuma" )
					guiSetText ( aTab1.Money, "Money: 0" )
					guiSetText ( aTab1.Dimension, "Dimension: 0" )
					guiSetText ( aTab1.Interior, "Interior: 0" )
					guiSetText ( aTab1.JetPack, "Dar JetPack" )
					guiSetText ( aTab1.Weapon, "Humanidade: N/A" )
					guiSetText ( aTab1.Area, "Local: desconhecido" )
					guiSetText ( aTab1.PositionX, "Arma #1: N/A" )
					guiSetText ( aTab1.PositionY, "Arma #2: N/A" )
					guiSetText ( aTab1.PositionZ, "Arma #3: N/A" )
					guiSetText ( aTab1.Vehicle, "Veículo: N/A" )
					guiSetText ( aTab1.VehicleHealth, "Veículo (HP): 0%" )
					guiStaticImageLoadImage ( aTab1.Flag, "client\\images\\empty.png" )
					guiSetText ( aTab1.CountryCode, "" )
				end
			end
		-- TAB 2, RESOURCES
		elseif ( getElementParent ( source ) == aTab2.Tab ) then
			if ( source == aTab2.ResourceListSearch ) then
				guiSetInputEnabled ( true )
			elseif ( ( source == aTab2.ResourceStart ) or ( source == aTab2.ResourceRestart ) or ( source == aTab2.ResourceStop ) or ( source == aTab2.ResourceDelete ) or ( source == aTab2.ResourceSettings ) ) then
				if ( guiGridListGetSelectedItem ( aTab2.ResourceList ) == -1 ) then
					aMessageBox ( "error", "No resource selected!" )
				else
					if ( source == aTab2.ResourceStart ) then triggerServerEvent ( "aResource", getLocalPlayer(), guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ), "start" )
					elseif ( source == aTab2.ResourceRestart ) then triggerServerEvent ( "aResource", getLocalPlayer(), guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ), "restart" )
					elseif ( source == aTab2.ResourceStop ) then triggerServerEvent ( "aResource", getLocalPlayer(), guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ), "stop" )
					elseif ( source == aTab2.ResourceDelete ) then aMessageBox ( "warning", "Certeza que quer parar e deletar o recurso '" .. guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ) .. "' ?", "triggerServerEvent ( \"aResource\", getLocalPlayer(), guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 1 ), \"delete\" )" )
					elseif ( source == aTab2.ResourceSettings ) then aManageSettings ( guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ) ) )
					end
				end				
			elseif ( source == aTab2.ResourcesStopAll ) then aMessageBox ( "warning", "Certeza que quer desativar todos os resources? Cuidado, pois o 'admin' será parado também.", "triggerServerEvent ( \"aResource\", getLocalPlayer(), nil, \"stopall\" )" )
			elseif ( source == aTab2.ResourceList ) then
				guiSetVisible ( aTab2.ResourceFailture, false )
				if ( guiGridListGetSelectedItem ( aTab2.ResourceList ) ~= -1 ) then
					guiSetText(aTab2.ResourceName, "Nome: " .. guiGridListGetItemText(aTab2.ResourceList, guiGridListGetSelectedItem ( aTab2.ResourceList ), 4))
					guiSetText(aTab2.ResourceAuthor, "Autor: " .. guiGridListGetItemText(aTab2.ResourceList, guiGridListGetSelectedItem ( aTab2.ResourceList ), 5))
					guiSetText(aTab2.ResourceVersion, "Versão: " .. guiGridListGetItemText(aTab2.ResourceList, guiGridListGetSelectedItem ( aTab2.ResourceList ), 6))
					if ( guiGridListGetItemText ( aTab2.ResourceList, guiGridListGetSelectedItem( aTab2.ResourceList ), 3 ) == "Failed to load" ) then
						guiSetVisible ( aTab2.ResourceFailture, true )
					end
				end
			elseif ( source == aTab2.ManageACL ) then
				aManageACL()
			elseif ( source == aTab2.ResourceRefresh or source == aTab2.ResourceInclMaps ) then
				guiGridListClear ( aTab2.ResourceList )
				triggerServerEvent ( "aSync", getLocalPlayer(), "resources" )
			elseif ( source == aTab2.ExecuteClient ) then
				if ( ( guiGetText ( aTab2.Command ) ) and ( guiGetText ( aTab2.Command ) ~= "" ) ) then aExecute ( guiGetText ( aTab2.Command ), true ) end
			elseif ( source == aTab2.ExecuteServer ) then
				if ( ( guiGetText ( aTab2.Command ) ) and ( guiGetText ( aTab2.Command ) ~= "" ) ) then triggerServerEvent ( "aExecute", getLocalPlayer(), guiGetText ( aTab2.Command ), true ) end
			elseif ( source == aTab2.Command ) then
				guiSetInputEnabled ( true )
				guiSetVisible ( aTab2.ExecuteAdvanced, false )
			elseif ( source == aTab2.ExecuteAdvanced ) then
				guiSetVisible ( aTab2.ExecuteAdvanced, false )
			end
		-- TAB 3, WORLD
		elseif ( getElementParent ( source ) == aTab3.Tab ) then
			if ( source == aTab3.SetGameType ) then aInputBox ( "Tipo de Jogo", "Enter game type:", "", "triggerServerEvent ( \"aServer\", getLocalPlayer(), \"setgame\", $value )" )
			elseif ( source == aTab3.SetMapName ) then aInputBox ( "Mapa", "Enter map name:", "", "triggerServerEvent ( \"aServer\", getLocalPlayer(), \"setmap\", $value )" )
			elseif ( source == aTab3.SetWelcome ) then aInputBox ( "Boas-vndas", "Enter the server welcome message:", "", "triggerServerEvent ( \"aServer\", getLocalPlayer(), \"setwelcome\", $value )" )
			elseif ( source == aTab3.SetPassword ) then aInputBox ( "Senha do servidor", "Enter server password: (32 characters max)", "", "triggerServerEvent ( \"aServer\", getLocalPlayer(), \"setpassword\", $value )" )
			elseif ( source == aTab3.Shutdown ) then aInputBox ( "Desligar servidor", "Enter shutdown reason:", "", "triggerServerEvent ( \"aServer\", getLocalPlayer(), \"shutdown\", $value )" )
			elseif ( source == aTab3.ResetPassword ) then triggerServerEvent ( "aServer", getLocalPlayer(), "setpassword", "" )
			elseif ( ( source == aTab3.WeatherInc ) or ( source == aTab3.WeatherDec ) ) then
				local id = tonumber ( gettok ( guiGetText ( aTab3.Weather ), 1, 32 ) )
				if ( id ) then
					if ( ( source == aTab3.WeatherInc ) and ( id < _weathers_max ) ) then guiSetText ( aTab3.Weather, ( id + 1 ).." ("..getWeatherNameFromID ( id + 1 )..")" )
					elseif ( ( source == aTab3.WeatherDec ) and ( id > 0 ) ) then guiSetText ( aTab3.Weather, ( id - 1 ).." ("..getWeatherNameFromID ( id - 1 )..")" ) end
				else
					guiSetText ( aTab3.Weather, ( 14 ).." ("..getWeatherNameFromID ( 14 )..")" ) 
				end
			elseif ( source == aTab3.WeatherSet ) then triggerServerEvent ( "aServer", getLocalPlayer(), "setweather", gettok ( guiGetText ( aTab3.Weather ), 1, 32 ) )
			elseif ( source == aTab3.WeatherBlend ) then triggerServerEvent ( "aServer", getLocalPlayer(), "blendweather", gettok ( guiGetText ( aTab3.Weather ), 1, 32 ) )
			elseif ( source == aTab3.TimeSet ) then triggerServerEvent ( "aServer", getLocalPlayer(), "settime", guiGetText ( aTab3.TimeH ), guiGetText ( aTab3.TimeM ) )
			elseif ( ( source == aTab3.SpeedInc ) or ( source == aTab3.SpeedDec ) ) then
				local value = tonumber ( guiGetText ( aTab3.Speed ) )
				if ( value ) then
					if ( ( source == aTab3.SpeedInc ) and ( value < 10 ) ) then guiSetText ( aTab3.Speed, tostring ( value + 1 ) )
					elseif ( ( source == aTab3.SpeedDec ) and ( value > 0 ) ) then guiSetText ( aTab3.Speed, tostring ( value - 1 ) ) end
				else
					guiSetText ( aTab3.Speed, "1" ) 
				end
			elseif ( source == aTab3.SpeedSet ) then triggerServerEvent ( "aServer", getLocalPlayer(), "setgamespeed", guiGetText ( aTab3.Speed ) )
			elseif ( source == aTab3.GravitySet ) then triggerServerEvent ( "aServer", getLocalPlayer(), "setgravity", guiGetText ( aTab3.Gravity ) )
			elseif ( source == aTab3.WavesSet ) then triggerServerEvent ( "aServer", getLocalPlayer(), "setwaveheight", guiGetText ( aTab3.Waves ) )
			elseif ( source == aTab3.FPSSet ) then 
			triggerServerEvent ( "aServer", getLocalPlayer(), "setfpslimit", guiGetText ( aTab3.FPS ) )
			triggerServerEvent ( "aSync", getLocalPlayer(), "server" )
			end
		-- TAB 4, BANS
		elseif ( getElementParent ( source ) == aTab4.Tab ) then
			if ( source == aTab4.Details ) then
				if ( guiGridListGetSelectedItem ( aTab4.BansList ) == -1 ) then
					aMessageBox ( "error", "No ban row selected!" )
				else
					local selip = guiGridListGetItemText ( aTab4.BansList, guiGridListGetSelectedItem( aTab4.BansList ), 2 )
					local selserial = guiGridListGetItemText ( aTab4.BansList, guiGridListGetSelectedItem( aTab4.BansList ), 3 )
					aBanDetails ( aBans["Serial"][selserial] and selserial or selip )
				end
			elseif ( source == aTab4.Unban ) then
				if ( guiGridListGetSelectedItem ( aTab4.BansList ) == -1 ) then
					aMessageBox ( "error", "No ban row selected!" )
				else
					local selip = guiGridListGetItemText ( aTab4.BansList, guiGridListGetSelectedItem( aTab4.BansList ), 2 )
					local selserial = guiGridListGetItemText ( aTab4.BansList, guiGridListGetSelectedItem( aTab4.BansList ), 3 )
					if ( aBans["Serial"][selserial] ) then aMessageBox ( "question", "Unban Serial "..selserial.."?", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"unbanserial\", \""..selserial.."\" )" )
					else aMessageBox ( "question", "Unban IP "..selip.."?", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"unbanip\", \""..selip.."\" )" ) end
				end
			elseif ( source == aTab4.UnbanIP ) then
				aInputBox ( "Unban IP", "Enter IP to be unbanned", "", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"unbanip\", $value )" )
			elseif ( source == aTab4.UnbanSerial ) then
				aInputBox ( "Unban Serial", "Enter Serial to be unbanned", "", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"unbanserial\", $value )" )
			elseif ( source == aTab4.BanIP ) then
				aInputBox ( "Add IP Ban", "Enter IP to be banned", "", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"banip\", $value )" )
			elseif ( source == aTab4.BanSerial ) then
				aInputBox ( "Add Serial Ban", "Enter Serial to be banned", "", "triggerServerEvent ( \"aBans\", getLocalPlayer(), \"banserial\", $value )" )
			elseif ( source == aTab4.BansRefresh ) then
				guiGridListClear ( aTab4.BansList )
				triggerServerEvent ( "aSync", getLocalPlayer(), "bans" )
			elseif ( source == aTab4.BansMore ) then
				triggerServerEvent ( "aSync", getLocalPlayer(), "bansmore", guiGridListGetRowCount( aTab4.BansList ) )
			end
		-- TAB 5, ADMIN CHAT
		elseif ( getElementParent ( source ) == aTab5.Tab ) then
			if ( source == aTab5.AdminSay ) then
				local message = guiGetText ( aTab5.AdminText )
				if ( ( message ) and ( message ~= "" ) ) then
					if ( gettok ( message, 1, 32 ) == "/clear" ) then guiSetText ( aTab5.AdminChat, "" )
					else triggerServerEvent ( "aAdminChat", getLocalPlayer(), message ) end
					guiSetText ( aTab5.AdminText, "" )
				end
			elseif ( source == aTab5.AdminText ) then
				guiSetInputEnabled ( true )
			end
		-- TAB 6, OPTIONS
		elseif ( getElementParent ( source ) == aTab6.Tab ) then
			if ( source == aTab6.PerformanceCPU ) then
				for id, element in ipairs ( getElementChildren ( aPerformanceForm ) ) do
					if ( getElementType ( element ) == "gui-checkbox" ) then
						guiCheckBoxSetSelected ( element, false )
					end
				end
			elseif ( source == aTab6.PerformanceRAM ) then
				for id, element in ipairs ( getElementChildren ( aPerformanceForm ) ) do
					if ( getElementType ( element ) == "gui-checkbox" ) then
						guiCheckBoxSetSelected ( element, true )
					end
				end
			elseif ( source == aTab6.PerformanceAdvanced ) then
				aPerformance()
			elseif ( source == aTab6.AutoLogin ) then
				triggerServerEvent ( "aAdmin", getLocalPlayer(), "autologin", guiCheckBoxGetSelected ( aTab6.AutoLogin ) )
			elseif ( source == aTab6.PasswordOld ) then
				guiSetInputEnabled ( true )
			elseif ( source == aTab6.PasswordNew ) then
				guiSetInputEnabled ( true )
			elseif ( source == aTab6.PasswordConfirm ) then
				guiSetInputEnabled ( true )
			elseif ( source == aTab6.PasswordChange ) then
				local passwordNew, passwordConf = guiGetText ( aTab6.PasswordNew ), guiGetText ( aTab6.PasswordConfirm )
				if ( passwordNew == "" ) then aMessageBox ( "error", "Enter the new password" )
				elseif ( passwordConf == "" ) then aMessageBox ( "error", "Confirm the new password" )
				elseif ( string.len ( passwordNew ) < 4 ) then aMessageBox ( "error", "The new password must be at least 4 characters long" )
				elseif ( passwordNew ~= passwordConf ) then aMessageBox ( "error", "Confirmed password doesn't match" )
				else triggerServerEvent ( "aAdmin", getLocalPlayer(), "password", guiGetText ( aTab6.PasswordOld ), passwordNew, passwordConf ) end
			end
		elseif ( getElementParent ( source ) == aTab7.Tab ) then
			--
		end
	elseif ( button == "right" ) then
		if ( source == aTab1.GiveWeapon ) then aInputBox ( "Weapon Ammo", "Ammo value from 1 to 9999", "100", "aSetCurrentAmmo ( $value )" )
		end
	end
end

function aClientRender ()
	--[[
	if ( guiGetVisible ( aAdminForm ) ) then
		if ( getTickCount() >= aLastCheck ) then
			aAdminRefresh ()
			local th, tm = getTime()
			guiSetText ( aTab3.Players, "Players: "..#getElementsByType ( "player" ).."/"..gettok ( guiGetText ( aTab3.Players ), 2, 47 ) )
			guiSetText ( aTab3.TimeCurrent,	string.format("Time: %02d:%02d", th, tm ) )
			guiSetText ( aTab3.GravityCurrent, "Gravitation: "..string.sub ( getGravity(), 0, 6 ) )
			guiSetText ( aTab3.SpeedCurrent, "Game Speed: "..getGameSpeed() )
			guiSetText ( aTab3.WeatherCurrent, "Weather: "..getWeather().." ("..getWeatherNameFromID ( getWeather() )..")" )
			local refreshTime = tonumber ( guiGetText ( aTab6.RefreshDelay ) )
			if ( ( refreshTime ) and ( refreshTime >= 20 ) ) then aLastCheck = getTickCount() + refreshTime
			else aLastCheck = getTickCount() + 50 end
		end
		if ( getTickCount() >= aLastSync ) then
			triggerServerEvent ( "aSync", getLocalPlayer(), "admins" )
			aLastSync = getTickCount() + 15000
		end
	end
	]]
end


function updateColorCodes()
	local lists = { aTab1.PlayerList, aTab5.AdminPlayers, aSpectator.PlayerList }
	for _,gridlist in ipairs(lists) do
		for row=0,guiGridListGetRowCount(gridlist)-1 do
			guiGridListSetItemPlayerName( gridlist, row, 1, guiGridListGetItemPlayerName( gridlist, row, 1 ) )
		end
	end
end

function guiGridListSetItemPlayerName( gridlist, row, col, name )
	local bHideColorCodes = guiCheckBoxGetSelected ( aTab1.HideColorCodes )
	guiGridListSetItemText( gridlist, row, col, bHideColorCodes and removeColorCoding(name) or name, false, false )
	guiGridListSetItemData( gridlist, row, col, name )
end

function guiGridListGetItemPlayerName( gridlist, row, col )
	return guiGridListGetItemData( gridlist, row, col ) or guiGridListGetItemText( gridlist, row, col )
end

-- remove color coding from string
function removeColorCoding( name )
	return type(name)=='string' and string.gsub ( name, '#%x%x%x%x%x%x', '' ) or name
end

-- anon admin
function isAnonAdmin()
	return getElementData( getLocalPlayer(), "AnonAdmin" ) == true
end

function setAnonAdmin( bOn )
	guiCheckBoxSetSelected ( aTab1.AnonAdmin, bOn )
	setElementData( getLocalPlayer(), "AnonAdmin", bOn )
end

function loadFlagImage( guiStaticImage, countryCode )
	if countryCode then
		local flagFilename = "client\\images\\flags\\"..tostring ( countryCode )..".png"
		if getVersion().sortable and getVersion().sortable > "1.1.0" then
			-- 1.1
			if fileExists( flagFilename ) then
				if guiStaticImageLoadImage ( guiStaticImage, flagFilename ) then
					return
				end
			end
		else
			-- 1.0
			guiStaticImageLoadImage ( guiStaticImage, "client\\images\\empty.png" )
			guiStaticImageLoadImage ( guiStaticImage, flagFilename )
			return
		end
	end
	guiStaticImageLoadImage ( guiStaticImage, "client\\images\\empty.png" )
end

