--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script login.lua					*----
----* Núcleo: Marwin W., Germany, Lower Saxony, Otterndorf	*----
----* Tradutor/Desenvolvedor: Stanley Sathler				*----
----*														*----
#---------------------------------------------------------------#
]]

--[[
	# ------------------------------------------------------------------------- #
	----* Items list - Translate here if you want to change item's names *-------
	# ------------------------------------------------------------------------- #
]]

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
	Item_RoadFlare		= "Sinalizador"
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
	
	

-- Spawns onde o jogador nasce após morrer
local spawnPositions = {
  {
    -278.6669921875,
    -2882.1572265625,
    32.104232788086
  },
  {
    -958.5595703125,
    -2887.9912109375,
    64.82421875
  },
  {
    -1816.9375,
    -2748.18359375,
    1.7327127456665
  },
  {
    -2816.166015625,
    -2439.0546875,
    2.4004096984863
  },
  {
    -2941.5673828125,
    -1206.2373046875,
    2.7848854064941
  },
  {
    -2911.51171875,
    -895.22265625,
    2.4013109207153
  },
  {
    -2185.6669921875,
    2957.380859375,
    11.474840164185
  },
  {
    272.2265625,
    2928.505859375,
    1.3713493347168
  },
  {
    2803.943359375,
    595.9365234375,
    7.7612648010254
  },
  {
    2883.7509765625,
    -178.4658203125,
    3.2714653015137
  },
  {
    -233.46484375,
    -1735.8173828125,
    1.5520644187927
  },
  {
    -1056.8720703125,
    2939.068359375,
    42.311294555664
  }
}

-- Ítens dos jogadores
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
  {"armor"},
  {Item_Armor},
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
  {Item_CDKRose},
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
  {Weapon_Binoculars},
  {Item_EmptyWaterBottle},
  {Item_EmptySodaCan},
  {Item_ScruffyBurger},
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {Weapon_SpasAmmo},
  {Item_Radio},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar},
  {Item_Radio},
  {Weapon_Parachute}
}


-- Vehicle items // Itens dos veiculos
local vehicleDataTable = {
  {Item_Armor},
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
  {Item_CDKRose},
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
  {Weapon_Binoculars},
  {Item_EmptyWaterBottle},
  {Item_EmptySodaCan},
  {Item_ScruffyBurger},
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {Weapon_SpasAmmo},
  {Item_Radio},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar},
  {Item_Radio},
  {Weapon_Parachute}
}


-- Quando o jogador faz login
function playerLogin(username, pass, player)
  local playerID = getAccountData(getPlayerAccount(player), "playerID")
  account = getPlayerAccount(player)
  local x, y, z = getAccountData(account, "last_x"), getAccountData(account, "last_y"), getAccountData(account, "last_z") + 0.3
  local skin = getAccountData(account, "skin")
  createZombieTable(player)
  if getAccountData(account, "isDead") then
    spawnDayZPlayer(player)
    return
  end
  spawnPlayer(player, x, y, z, math.random(0, 360), skin, 0, 0)
  fadeCamera(player, true)
  setCameraTarget(player, player)
  playerCol = createColSphere(x, y, z, 1.5)
  setElementData(player, "playerCol", playerCol)
  attachElements(playerCol, player, 0, 0, 0)
  setElementData(playerCol, "parent", player)
  setElementData(playerCol, "player", true)
  for i, data in ipairs(playerDataTable) do
    local elementData = getAccountData(account, data[1])
    if not elementData and data[1] ~= "brokenbone" and data[1] ~= "pain" and data[1] ~= "cold" and data[1] ~= "infection" and data[1] ~= "currentweapon_1" and data[1] ~= "currentweapon_2" and data[1] ~= "currentweapon_3" then
      if data[1] == "bandit" then
      else
        elementData = 0
      end
    end
    setElementData(player, data[1], elementData)
  end
  setElementData(player, "logedin", true)
  local weapon = getElementData(player, "currentweapon_1")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(player, weapID, getElementData(player, ammoData), true)
  end
  local weapon = getElementData(player, "currentweapon_2")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(player, weapID, getElementData(player, ammoData), false)
  end
  local weapon = getElementData(player, "currentweapon_3")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(player, weapID, getElementData(player, ammoData), false)
  end
  setElementModel(player, getElementData(player, "skin"))
  setElementData(player, "admin", getAccountData(account, "admin") or false)
  setElementData(player, "supporter", getAccountData(account, "supporter") or false)
  
  
  -- Quando o jogador se conecta, os códigos abaixam definem o seu ACL como elementData para facilitar
	local account = getPlayerAccount(player)
	if not isGuestAccount(account) then
		local accountName = getAccountName(account)
		if accountName then
		
			if isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-Desenvolvedor")) then
				setElementData(player, "DW-Desenvolvedor", true)
				setElementData(player, "DW-Administrador", true)
				setAccountData(account, "DW-Desenvolvedor", true)
				setAccountData(account, "DW-Administrador", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-Administrador")) then
				setElementData(player, "DW-Administrador", true)
				setAccountData(account, "DW-Administrador", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-Moderador")) then
				setElementData(player, "DW-Moderador", true)
				setAccountData(account, "DW-Moderador", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-Gerente")) then
				setElementData(player, "DW-Gerente", true)
				setAccountData(account, "DW-Gerente", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-Ajudante")) then
				setElementData(player, "DW-Ajudante", true)
				setAccountData(account, "DW-Ajudante", true)
			end
			
			if isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-VIPBronze")) then
				setElementData(player, "DW-VIPBronze", true)
				setAccountData(account, "DW-VIPBronze", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-VIPSilver")) then
				setElementData(player, "DW-VIPSilver", true)
				setAccountData(account, "DW-VIPSilver", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-VIPGold")) then
				setElementData(player, "DW-VIPGold", true)
				setAccountData(account, "DW-VIPGold", true)
			elseif isObjectInACLGroup("user." .. accountName, aclGetGroup("DW-VIPPartner")) then
				setElementData(player, "DW-VIPPartner", true)
				setAccountData(account, "DW-VIPPartner", true)
			end
			
		end
	end
	
	if not getElementData(player, "DW-Desenvolvedor") and not getElementData(player, "DW-Administrador") and not getElementData(player, "DW-Moderador") and not getElementData(player, "DW-Gerente") then
		setElementModel(player, getElementData(player, "skin"))
	else
		setElementModel(player, 217)
		setElementData(player, "skin", 217)
	end
  
  
	triggerClientEvent(player, "onClientPlayerDayZLogin", player)
end
addEvent("onPlayerDayZLogin", true)
addEventHandler("onPlayerDayZLogin", getRootElement(), playerLogin)
addEventHandler("onResourceStart", resourceRoot, playerLogin)



Skins = {}



-- Quando o jogador se registra
function playerRegister(username, pass, player)
	local number = math.random(table.size(spawnPositions))
	local x, y, z = spawnPositions[number][1], spawnPositions[number][2], spawnPositions[number][3]
	spawnPlayer(player, x, y, z, math.random(0, 360), 73, 0, 0)
	fadeCamera(player, true)
	setCameraTarget(player, player)
	playerCol = createColSphere(x, y, z, 1.5)
	attachElements(playerCol, player, 0, 0, 0)
	setElementData(playerCol, "parent", player)
	setElementData(playerCol, "player", true)
	for i, data in ipairs(playerDataTable) do
		if data[1] == Item_Bandage then
		  setElementData(player, data[1], 2)
		elseif data[1] == Item_Painkiller then
		  setElementData(player, data[1], 1)
		elseif data[1] == "MAX_Slots" then
		  setElementData(player, data[1], 8)
		elseif data[1] == "skin" then
		  setElementData(player, data[1], 73)
		elseif data[1] == "blood" then
		  setElementData(player, data[1], 12000)
		elseif data[1] == "temperature" then
		  setElementData(player, data[1], 37)
		elseif data[1] == "brokenbone" then
		  setElementData(player, data[1], false)
		elseif data[1] == "pain" then
		  setElementData(player, data[1], false)
		elseif data[1] == "cold" then
		  setElementData(player, data[1], false)
		elseif data[1] == "infection" then
		  setElementData(player, data[1], false)
		elseif data[1] == "food" then
		  setElementData(player, data[1], 100)
		elseif data[1] == "thirst" then
		  setElementData(player, data[1], 100)
		elseif data[1] == "currentweapon_1" then
		  setElementData(player, data[1], false)
		elseif data[1] == "currentweapon_2" then
		  setElementData(player, data[1], false)
		elseif data[1] == "currentweapon_3" then
		  setElementData(player, data[1], false)
		elseif data[1] == "bandit" then
		  setElementData(player, data[1], false)
		elseif data[1] == "humanity" then
		  setElementData(player, data[1], 2500)
		elseif data[1] == "armor" then
		  setElementData(player, data[1], false)
		else
		  setElementData(player, data[1], 0)
		end
	end
	account = getAccount(username)
	local value = getAccounts()
	local value = #value
	setElementData(player, "playerID", value + 1)
	setAccountData(account, "playerID", value + 1)
	setElementData(player, "logedin", true)
	createZombieTable(player)
end
addEvent("onPlayerDayZRegister", true)
addEventHandler("onPlayerDayZRegister", getRootElement(), playerRegister)



-- Salva as contas quando desloga
function saveAccounts()
	local account = getPlayerAccount(source)
	if account then
		for i, data in ipairs(playerDataTable) do
			setAccountData(account, data[1], getElementData(source, data[1]))
		end
		local x, y, z = getElementPosition(source)
		setAccountData(account, "last_x", x)
		setAccountData(account, "last_y", y)
		setAccountData(account, "last_z", z)
		destroyElement(getElementData(source, "playerCol"))
	end
	setElementData(source, "logedin", false)
end
addEventHandler("onPlayerQuit", getRootElement(), saveAccounts)



-- Salva as contas quando o resource para
function saveAccounts2()
  for i, player in ipairs(getElementsByType("player")) do
    local account = getPlayerAccount(player)
    if account then
      for i, data in ipairs(playerDataTable) do
        setAccountData(account, data[1], getElementData(player, data[1]))
      end
      local x, y, z = getElementPosition(player)
      setAccountData(account, "last_x", x)
      setAccountData(account, "last_y", y)
      setAccountData(account, "last_z", z)
    end
  end
end
addEventHandler("onResourceStop", getRootElement(), saveAccounts2)



-- Ítens dos veículos
local vehicleDataTable = {
  {"MAX_Slots"},
  {DB_TireInVehicle},
  {DB_EngineInVehicle},
  {"Parts_inVehicle"},
  {"fuel"},
  {Item_Armor},
  {Item_WoodPile},
  {Item_Bandage},
  {Item_FullWaterBottle},
  {Item_PastaCan},
  {Item_BeansCan},
  {Item_Burger},
  {Item_BoxOfMatches},
  {Weapon_PistolAmmo},
  {Weapon_Pistol},
  {Weapon_Silenced},
  {Weapon_DesertAmmo},
  {Weapon_Shotgun},
  {Weapon_Uzi},
  {Weapon_Knife},
  {Item_Morphine},
  {Weapon_Katana},
  {Item_Pizza},
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
  {Weapon_Binoculars},
  {Item_EmptyWaterBottle},
  {Item_EmptySodaCan},
  {Item_ScruffyBurger},
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {Weapon_SpasAmmo},
  {"Assault Pack (ACU)"},
  {"Alice Pack"},
  {"Czech Backpack"},
  {"Coyote Backpack"},
  {Item_Radio},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar},
  {Weapon_Parachute}
}



-- Salva todos os veículos
function saveallvehicles(ps, command)
	counter = 0
	counterTent = 0
	local vehicleManager = getAccount("vehicleManager", "ds4f9$")
	for i, col in ipairs(getElementsByType("colshape")) do
		local veh = getElementData(col, "vehicle")
		local helicrash = getElementData(col, "helicrash")
		local hospitalbox = getElementData(col, "hospitalbox")
		--local tent = getElementData(col, Item_Tent)
		local tent = getElementData(col, "tent")
			if veh and not helicrash or veh and not hospitalbox then
				if tent then
					counterTent = counterTent + 1
					account = getAccount("tent_number_" .. counterTent, "ds4f9$") or false
					if not account then
					  account = addAccount("tent_number_" .. counterTent, "ds4f9$")
					end
					do
					  local tent = getElementData(col, "parent")
					  local x, y, z = getElementPosition(tent)
					  local rx, ry, rz = getElementRotation(tent)
					  setAccountData(account, "last_x", x)
					  setAccountData(account, "last_y", y)
					  setAccountData(account, "last_z", z)
					  setAccountData(account, "last_rx", rx)
					  setAccountData(account, "last_ry", ry)
					  setAccountData(account, "last_rz", rz)
					  for i, data in ipairs(vehicleDataTable) do
						setAccountData(account, data[1], getElementData(col, data[1]))
					  end
					end
				else
					counter = counter + 1
					account = getAccount("vehicle_number_" .. counter, "ds4f9$") or false
					if not account then
					  account = addAccount("vehicle_number_" .. counter, "ds4f9$")
					end
					setAccountData(account, "spawn_x", getElementData(col, "spawn")[2])
					setAccountData(account, "spawn_y", getElementData(col, "spawn")[3])
					setAccountData(account, "spawn_z", getElementData(col, "spawn")[4])
					for i, data in ipairs(vehicleDataTable) do
					  setAccountData(account, data[1], getElementData(col, data[1]))
					end
					local vehicle = getElementData(col, "parent")
					local model = getElementModel(vehicle)
					local x, y, z = getElementPosition(vehicle)
					local rx, ry, rz = getElementRotation(vehicle)
					local health = getElementHealth(vehicle)
					setAccountData(account, "last_x", x)
					setAccountData(account, "last_y", y)
					setAccountData(account, "last_z", z)
					setAccountData(account, "last_rx", rx)
					setAccountData(account, "last_ry", ry)
					setAccountData(account, "last_rz", rz)
					setAccountData(account, "health", health)
					setAccountData(account, "model", model)
					setAccountData(account, "isExploded", getElementData(vehicle, "isExploded") or false)
				end
			end
		setAccountData(vehicleManager, "vehicleamount", counter)
		setAccountData(vehicleManager, "tentamount", counterTent)
	end
end
addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), saveallvehicles)



-- Faz o backup
function doBackup()
	outputChatBox("Fazendo backup...", getRootElement(), 27, 89, 224, true)
	saveallvehicles()
	outputChatBox("Pronto!", getRootElement(), 27, 89, 224, true)
end
function checkDoBackup()
	if gameplayVariables.backupenabled then
		setTimer(doBackup, gameplayVariables.backupinterval, 0)
	end
end
checkDoBackup()



-- Creates vehicles and tents on server's start // Cria veiculos e tendas ao iniciar o servidor
function createVehicleOnServerStart()

	local vehicleManager = getAccount("vehicleManager")
	
	if vehicleManager then
		for i = 1, getAccountData(vehicleManager, "vehicleamount") or 0 do
			wastedVehicle = false
			vehicle = getAccount("vehicle_number_" .. i, "ds4f9$") -- 'vehicle' is vehicle's account, and not vehicle's element
			if not vehicle then
				break
			end
			if getAccountData(vehicle, "isExploded") == true then
				setAccountData(vehicle, "health", 1000)
				wastedVehicle = true
			end
			local veh = createVehicle(getAccountData(vehicle, "model"), getAccountData(vehicle, "last_x"), getAccountData(vehicle, "last_y"), getAccountData(vehicle, "last_z") + 0.5, getAccountData(vehicle, "last_rx"), getAccountData(vehicle, "last_ry"), getAccountData(vehicle, "last_rz"))
			vehCol = createColSphere(getAccountData(vehicle, "last_x"), getAccountData(vehicle, "last_y"), getAccountData(vehicle, "last_z"), 4)
			attachElements(vehCol, veh, 0, 0, 0)
			setElementData(vehCol, "parent", veh) -- sets 'veh' as parent of vehCol
			setElementData(veh, "parent", vehCol) -- sets 'vehCol' as parent of veh
			setElementData(vehCol, "vehicle", true) -- sets vehCol as a colshape of a vehicle
			setElementData(vehCol, "MAX_Slots", getAccountData(vehicle, "MAX_Slots")) -- sets the MAX_Slots of the vehicle
			setElementHealth(veh, getAccountData(vehicle, "health")) -- sets vehicle health (note that isnt vehCol anymore, but veh)
			xxx, yyy, zzz = getAccountData(vehicle, "spawn_x"), getAccountData(vehicle, "spawn_y"), getAccountData(vehicle, "spawn_z")
			setElementData(vehCol, "spawn", {
				getAccountData(vehicle, "model"),
				xxx,
				yyy,
				zzz
			})
			
			if wastedVehicle then
				setElementPosition(veh, xxx, yyy, zzz + 1)
				setElementRotation(veh, 0, 0, 0)
				local tires, engine, parts = getVehicleAddonInfos(getElementModel(veh))
				setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
				setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
				setElementData(vehCol, "Parts_inVehicle", math.random(0, parts))
			end
			setElementData(vehCol, "fuel", getAccountData(vehicle, "fuel"))
		
			if not wastedVehicle then
				for i, data in ipairs(vehicleDataTable) do
					setElementData(vehCol, data[1], getAccountData(vehicle, data[1]))
				end
			else
				if getElementModel(veh) == 433 or getElementModel(veh) == 470 then -- if barracks or patriot
					for i, items in ipairs(lootItems.helicrashsides) do
						local randomNumber = math.random(1, 10)
						if randomNumber == 5 then
							setElementData(vehCol, items[1], math.random(1, 2))
						end
					end
				end
				setElementData(vehCol, "fuel", math.random(10, 30))
			end
		end -- end mainly for
  
  
  
		-- creates tents
		for i = 1, getAccountData(vehicleManager, "tentamount") or 0 do
			tentData = getAccount("tent_number_" .. i, "ds4f9$")
			if not tentData then
				break
			end
			--tent = createObject(3243, getAccountData(tentData, "last_x"), getAccountData(tentData, "last_y"), getAccountData(tentData, "last_z"), 0, 0, getAccountData(tentData, "last_rz") or 0)
			tent = createObject(3243, getAccountData(tentData, "last_x"), getAccountData(tentData, "last_y"), getAccountData(tentData, "last_z"), 0, 0, getAccountData(tentData, "last_rz"))
			if tent then
			end
			setObjectScale(tent, 1.3)
			tentCol = createColSphere(getAccountData(tentData, "last_x"), getAccountData(tentData, "last_y"), getAccountData(tentData, "last_z"), 4)
			attachElements(tentCol, tent, 0, 0, 0)
			setElementData(tentCol, "parent", tent)
			setElementData(tent, "parent", tentCol)
			setElementData(tentCol, "tent", true)
			setElementData(tentCol, "vehicle", true)
			setElementData(tentCol, "MAX_Slots", 100)
			for i, data in ipairs(vehicleDataTable) do
			  setElementData(tentCol, data[1], getAccountData(tentData, data[1]))
			end
		end
	else -- if not vehicleManager
		-- code goes here
	end
end
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), createVehicleOnServerStart)
