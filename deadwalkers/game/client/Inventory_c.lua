--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script inventory.lua				*----
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
	
	
	
	
inventoryItems = {
["Weapons"] = {
["Primary Weapon"] = {
	{Weapon_M4,3},
	{Weapon_Sniper,3},
	{Weapon_Shotgun,3},
	{Weapon_Spas,3},
	{Weapon_SawnOff,3},
	{Weapon_AK,3},
	{Weapon_Country,3},
},
["Secondary Weapon"] = {
	{Weapon_Pistol,2},
	{Weapon_Silenced,2},
	{Weapon_Uzi,2},
	{Weapon_MP5,3},
	{Weapon_Desert,2},
	{Weapon_Knife,1},
	{Weapon_Katana, 2},
	{Weapon_Baseball,2},
	{Weapon_Shovel, 2},
	{Weapon_Crowbar, 2},
},
["Specially Weapon"] = {
	{Weapon_Parachute, 1},
	{Weapon_TearGas, 1},
	{Weapon_Grenade, 1},
	{Weapon_Binoculars, 1},
}
},
["Ammo"] = {
	{Weapon_PistolAmmo,0.085},
	{Weapon_SilencedAmmo,0.085},
	{Weapon_DesertAmmo,0.085},
	{Weapon_UziAmmo,0.025},
	{Weapon_MP5Ammo,0.025},
	{Weapon_AKAmmo,0.035},
	{Weapon_M4Ammo,0.035},
	{Weapon_ShotgunAmmo,0.067},
	{Weapon_SawnOffAmmo,0.067},
	{Weapon_SpasAmmo,0.067},
	{Weapon_SniperAmmo, 0.1},
	{Weapon_CountryAmmo,0.1},
},
["Food"] = {
	{Item_FullWaterBottle,1},
	{Item_PastaCan, 1},
	{Item_BeansCan, 1},
	{Item_Burger, 1},
	{Item_Pizza, 1},
	{Item_SodaBottle,1 },
	{Item_Milk, 1},
	{Item_CookedMeat,1},
},
["Items"] = {
	{Item_WoodPile, 2},
	{Item_Bandage,1,"Usar curativo"},
	{Item_RoadFlare,1,"Acender"},
	{Item_EmptyPatrol,2},
	{Item_FullPatrol,2},
	{Item_MedicKit,2,"Usar"},
	{Item_HeatPack,1,"Usar"},
	{Item_Painkiller,1,"Usar"},
	{Item_Morphine,1,"Usar"},
	{Item_BloodBag,1,"Usar"},
	{Item_WireFence,1,"Colocar cerca"},
	{Item_RawMeat, 1},
	{Item_Tire, 2},
	{"Motor", 5},
	{Item_Tent,3,"Montar tenda"},
	{Item_EmptyWaterBottle,1,"Encher garrafa"},
	{Item_EmptySodaCan,1},
	{Item_ScruffyBurger,1},
	{Skin_Military,1,"Usar Skin"},
	{Skin_Civilian,1,"Usar Skin"},
	{Skin_Survivor,1,"Usar Skin"},
	{Skin_GhillieDesert,1,"Usar Skin"},
	{Skin_GhillieForest,1,"Usar Skin"},
	{Item_Armor,2,"Vestir"},
	--{Item_CDKRose,0.5,"Tocar"},
	{"Assault Pack (ACU)",0},
	{"Alice Pack", 0},
	{"Czech Backpack",0},
	{"Coyote Backpack",0},
},
["Toolbelt"] = {
	{Item_NightVision, 1},
	{Item_InfraredVision,1},
	{Item_Map,1},
	{Item_BoxOfMatches,1,"Fazer fogueira"},
	{Item_Watch,1},
	{Item_GPS, 1},
	{Item_Toolbox,1},
	{Item_Radio,1},
},
}
------------------------------------------------------------------------------
--INVENTORY
local headline = {}
local gridlistItems = {}
local buttonItems = {}

inventoryWindows = guiCreateWindow(0.15, 0.28, 0.72, 0.63, "", true)
headline.loot = guiCreateLabel(0.06, 0.05, 0.34, 0.09, "Objetos", true, inventoryWindows)
guiLabelSetHorizontalAlign(headline.loot, "center")
guiSetFont(headline.loot, "default-bold-small")

headline.inventory = guiCreateLabel(0.6, 0.05, 0.34, 0.09, "Inventário", true, inventoryWindows)
guiLabelSetHorizontalAlign(headline.inventory, "center")
guiSetFont(headline.inventory, "default-bold-small")

gridlistItems.loot = guiCreateGridList(0.03, 0.1, 0.39, 0.83, true, inventoryWindows)
gridlistItems.loot_colum = guiGridListAddColumn(gridlistItems.loot, "Loot", 0.7)
gridlistItems.loot_colum_amount = guiGridListAddColumn(gridlistItems.loot, "", 0.2)

gridlistItems.inventory = guiCreateGridList(0.57, 0.11, 0.39, 0.83, true, inventoryWindows)
gridlistItems.inventory_colum = guiGridListAddColumn(gridlistItems.inventory, "Inventário", 0.7)
gridlistItems.inventory_colum_amount = guiGridListAddColumn(gridlistItems.inventory, "", 0.2)

buttonItems.loot = guiCreateButton(0.42, 0.17, 0.04, 0.69, "->", true, inventoryWindows)
buttonItems.inventory = guiCreateButton(0.53, 0.17, 0.04, 0.69, "<-", true, inventoryWindows)

headline.slots = guiCreateLabel(0.62, 0.94, 0.29, 0.04, "Espaço total:", true, inventoryWindows)
guiLabelSetHorizontalAlign(headline.slots, "center")
guiLabelSetVerticalAlign(headline.slots, "center")
guiSetFont(headline.slots, "default-bold-small")

headline.slots_loot = guiCreateLabel(0.07, 0.94, 0.29, 0.04, "Espaço total:", true, inventoryWindows)
guiLabelSetHorizontalAlign(headline.slots_loot, "center")
guiLabelSetVerticalAlign(headline.slots_loot, "center")
guiSetFont(headline.slots_loot, "default-bold-small")

guiSetVisible(inventoryWindows, false)


-- Show the inventory
function showInventory(key, keyState)
if getElementData(getLocalPlayer(), "logedin") and keyState == "down" then
    guiSetVisible(inventoryWindows, not guiGetVisible(inventoryWindows))
    showCursor(not isCursorShowing())
    refreshInventory()
    if guiGetVisible(inventoryWindows) == true then
      onClientOpenInventoryStopMenu()
    else
      hideRightClickInventoryMenu()
    end
    if isPlayerInLoot() then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = getElementData(getLocalPlayer(), "lootname")
      refreshLoot(col, gearName)
    end
end
end
bindKey("j", "down", showInventory)

-- Show the inventory 2
function showInventoryManual()
  guiSetVisible(inventoryWindows, not guiGetVisible(inventoryWindows))
  showCursor(not isCursorShowing())
  refreshInventory()
  if guiGetVisible(inventoryWindows) == true then
    onClientOpenInventoryStopMenu()
  end
end

-- Hide the inventory
function hideInventoryManual()
  guiSetVisible(inventoryWindows, false)
  showCursor(false)
  hideRightClickInventoryMenu()
end
addEvent("hideInventoryManual", true)
addEventHandler("hideInventoryManual", getLocalPlayer(), hideInventoryManual)

-- Refresh inventory
function refreshInventoryManual()
  refreshInventory()
end
addEvent("refreshInventoryManual", true)
addEventHandler("refreshInventoryManual", getLocalPlayer(), refreshInventoryManual)

-- Refresh the loot
function refreshLootManual(loot)
  refreshLoot(loot)
end
addEvent("refreshLootManual", true)
addEventHandler("refreshLootManual", getLocalPlayer(), refreshLootManual)


-- Refresh the inventory
function refreshInventory()
if ( gridlistItems["inventory_colum"] ) then --If the column has been created, fill it with players
	row1,column1 = guiGridListGetSelectedItem ( gridlistItems["inventory"] )
	guiGridListClear(gridlistItems["inventory"])
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"Equipamentos", true, false )
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Armas Primárias", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Primary Weapon"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Armas Secundárias", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Secondary Weapon"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Armas Especiais", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Specially Weapon"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Munições", true, false )
		for id, item in ipairs(inventoryItems["Ammo"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Comidas e Bebidas", true, false )
		for id, item in ipairs(inventoryItems["Food"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Ítens", true, false )
		for id, item in ipairs(inventoryItems["Items"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["inventory"] )
			guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],"- Úteis", true, false )
		for id, item in ipairs(inventoryItems["Toolbelt"]) do
			if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["inventory"] )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["inventory"], row, gridlistItems["inventory_colum_amount"],getElementData(getLocalPlayer(),item[1]), false, false )
			end
		end
		if row1 and column1 then
			guiGridListSetSelectedItem ( gridlistItems["inventory"], row1,column1)
		end
		guiSetText(headline["slots"],"Espaço total: "..getPlayerCurrentSlots().." / "..getPlayerMaxAviableSlots())
	end
end

-- Refresh loot // Atualiza o loot
function refreshLoot(loot,gearName)
if loot == false then
	guiGridListClear(gridlistItems["loot"])
	guiSetText(headline["loot"],"Vazio")
	return
end
if ( gridlistItems["loot_colum"] ) then
	row2,column2 = guiGridListGetSelectedItem ( gridlistItems["inventory"] )
	guiGridListClear(gridlistItems["loot"])
	if gearName then
		guiSetText(headline["loot"],gearName)
	end	
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"Equipamentos", true, false )
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Armas Primárias", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Primary Weapon"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
				local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Armas Secundárias", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Secondary Weapon"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Armas Especiais", true, false )
		for id, item in ipairs(inventoryItems["Weapons"]["Specially Weapon"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Munições", true, false )
		for id, item in ipairs(inventoryItems["Ammo"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Comidas e Bebidas", true, false )
		for id, item in ipairs(inventoryItems["Food"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Ítens", true, false )
		for id, item in ipairs(inventoryItems["Items"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
			local row = guiGridListAddRow ( gridlistItems["loot"] )
			guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],"- Úteis", true, false )
		for id, item in ipairs(inventoryItems["Toolbelt"]) do
			if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
				local row = guiGridListAddRow ( gridlistItems["loot"] )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum"],item[1], false, false )
				guiGridListSetItemText ( gridlistItems["loot"], row, gridlistItems["loot_colum_amount"],getElementData(loot,item[1]), false, false )
			end
		end
		if row2 and column2 then
			--guiGridListSetSelectedItem ( gridlistItems["loot"], row2,column2)
		end
		guiSetText(headline["slots_loot"],"Espaço total: "..getLootCurrentSlots(loot).." / "..(getLootMaxAviableSlots(loot)or 0))
	end
end

-- Get the max slots from a player
function getPlayerMaxAviableSlots()
return getElementData(getLocalPlayer(),"MAX_Slots")
end


-- Get the max sloots from the loot
function getLootMaxAviableSlots(loot)
return getElementData(loot,"MAX_Slots")
end


function getPlayerCurrentSlots()
local current_SLOTS = 0
	for id, item in ipairs(inventoryItems["Weapons"]["Primary Weapon"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Weapons"]["Secondary Weapon"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Weapons"]["Specially Weapon"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Ammo"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Food"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Items"]) do
		if getElementData(getLocalPlayer(),item[1]) and getElementData(getLocalPlayer(),item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(getLocalPlayer(),item[1])
		end
	end
	return math.floor(current_SLOTS)
end


function getLootCurrentSlots(loot)
local current_SLOTS = 0
	for id, item in ipairs(inventoryItems["Weapons"]["Primary Weapon"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Weapons"]["Secondary Weapon"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Weapons"]["Specially Weapon"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Ammo"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Food"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	for id, item in ipairs(inventoryItems["Items"]) do
		if getElementData(loot,item[1]) and getElementData(loot,item[1]) >= 1 then
			current_SLOTS = current_SLOTS + item[2]*getElementData(loot,item[1])
		end
	end
	return math.floor(current_SLOTS)
end

function getItemSlots(itema)
local current_SLOTS = 0
	for id, item in ipairs(inventoryItems["Weapons"]["Primary Weapon"]) do
		if itema == item[1] then 
			return item[2]
		end
	end	
	for id, item in ipairs(inventoryItems["Weapons"]["Secondary Weapon"]) do
		if itema == item[1] then 
			return item[2]
		end
	end	
	for id, item in ipairs(inventoryItems["Weapons"]["Specially Weapon"]) do
		if itema == item[1] then 
			return item[2]
		end
	end	
	for id, item in ipairs(inventoryItems["Ammo"]) do
		if itema == item[1] then 
			return item[2]
		end
	end
	for id, item in ipairs(inventoryItems["Food"]) do
		if itema == item[1] then 
			return item[2]
		end
	end
	for id, item in ipairs(inventoryItems["Items"]) do
		if itema == item[1] then 
			return item[2]
		end
	end
	return false
end

function isToolbeltItem(itema)
local current_SLOTS = 0
	for id, item in ipairs(inventoryItems["Toolbelt"]) do
		if itema == item[1] then 
			return true
		end
	end	
	return false
end

vehicleAddonsInfo = {
{422,4,1},
{470,4,1},
{483,4,1},
{471,4,1},
{548,4,1},
{592,4,1},
{468,2,1},
{433,6,1},
{437,6,1},
{509,0,0},
{487,0,1},
{497,0,1},
{541,4,1},
}

function getVehicleAddonInfos (id)
	for i,veh in ipairs(vehicleAddonsInfo) do
		if veh[1] == id then
			return veh[2],veh[3]
		end
	end
end

--OTHER ITEM STUFF
vehicleFuelTable = {
{422,80},
{470,100},
{483,100},
{471,100},
{548,100},
{592,100},
{468,30},
{433,140},
{437,140},
{509,0},
{487,60},
{497,60},
{541,60},
}

function getVehicleMaxFuel(loot)
	local modelID = getElementModel(getElementData(loot,"parent"))
	for i,vehicle in ipairs(vehicleFuelTable) do
		if modelID == vehicle[1] then
			 return vehicle[2]
		end
	end
	return false
end

function onPlayerMoveItemOutOfInventory ()
if playerMovedInInventory then startRollMessage2("Inventory", "Se continuar tentando bugar itens você será punido.", 255, 22, 0 ) return end

local itemName = guiGridListGetItemText ( gridlistItems["inventory"], guiGridListGetSelectedItem ( gridlistItems["inventory"] ), 1 )
	if getElementData(getLocalPlayer(),itemName) and getElementData(getLocalPlayer(),itemName) >= 1 then
		if isPlayerInLoot() then
			local isVehicle = getElementData(isPlayerInLoot(),"vehicle")
			local isTent = getElementData(isPlayerInLoot(),"tent")
			if isVehicle and not isTent then
				local veh = getElementData(isPlayerInLoot(),"parent")
				local tires,engine = getVehicleAddonInfos (getElementModel(veh))
				if itemName == Item_Tire and (getElementData(isPlayerInLoot(),DB_TireInVehicle) or 0) < tires then
					triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),DB_TireInVehicle,isPlayerInLoot())
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
				elseif itemName == "Motor" and (getElementData(isPlayerInLoot(),DB_EngineInVehicle) or 0) < engine then
					triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),DB_EngineInVehicle,isPlayerInLoot())
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
				elseif isToolbeltItem(itemName) then
					triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),itemName,isPlayerInLoot())
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
				elseif getLootCurrentSlots(getElementData(getLocalPlayer(),"currentCol")) + getItemSlots(itemName) <= getLootMaxAviableSlots(isPlayerInLoot()) then
					triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),itemName,isPlayerInLoot())
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
				else
					startRollMessage2("Inventory", "Inventário Cheio", 255, 22, 0 )
					return
				end
			elseif isToolbeltItem(itemName) then
					triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),itemName,isPlayerInLoot())	
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
			elseif getLootCurrentSlots(getElementData(getLocalPlayer(),"currentCol")) + getItemSlots(itemName) <= getLootMaxAviableSlots(isPlayerInLoot()) then
				triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),itemName,isPlayerInLoot())
				playerMovedInInventory = true
					setTimer(function()
					playerMovedInInventory = false
				end,700,1)
			else
				startRollMessage2("Inventory", "Inventário Cheio", 255, 22, 0 )
				return
			end	
		else
			triggerEvent("onPlayerMoveItemOutOFInventory",getLocalPlayer(),itemName,isPlayerInLoot())
			playerMovedInInventory = true
			setTimer(function()
				playerMovedInInventory = false
			end,700,1)
		end	
	end
	local gearName = guiGetText(headline["loot"])
	local col = getElementData(getLocalPlayer(),"currentCol")
	setTimer(refreshInventory,200,2)
	if isPlayerInLoot() then
		setTimer(refreshLoot,200,2,col,gearName)
	end
end
addEventHandler ( "onClientGUIClick", buttonItems["inventory"], onPlayerMoveItemOutOfInventory )
addEventHandler ( "onClientGUIDoubleClick", buttonItems["inventory"], onPlayerMoveItemOutOfInventory )


function onPlayerMoveItemOutOFInventory(itemName, loot)
  local itemPlus = 1
  if itemName == Weapon_PistolAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SilencedAmmo then
    itemPlus = 15
  elseif itemName == Weapon_DesertAmmo then
    itemPlus = 7
  elseif itemName == Weapon_UziAmmo then
    itemPlus = 30
  elseif itemName == Weapon_MP5Ammo then
    itemPlus = 20
  elseif itemName == Weapon_AKAmmo then
    itemPlus = 30
  elseif itemName == Weapon_M4Ammo then
    itemPlus = 20
  elseif itemName == Weapon_ShotgunAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SawnOffAmmo then
    itemPlus = 6
  elseif itemName == Weapon_SpasAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SniperAmmo then
    itemPlus = 5
  elseif itemName == Weapon_CountryAmmo then
    itemPlus = 10
  elseif itemName == Item_Tire then
    itemPlus = 1
  elseif itemName == Weapon_M4 or itemName == Weapon_AK or itemName == Weapon_Sniper or itemName == Weapon_Shotgun or itemName == Weapon_Spas or itemName == Weapon_SawnOff or itemName == Weapon_Country then
    triggerServerEvent("removeBackWeaponOnDrop", getLocalPlayer())
  end
  
-- Transfere algum ítem para os carros
if loot and not getElementData(loot, "itemloot") and getElementType(getElementData(loot, "parent")) == "vehicle" and itemName == Item_FullPatrol then
    if getElementData(loot, "fuel") + 20 < getVehicleMaxFuel(loot) then
      addingfuel = 20
    elseif getElementData(loot, "fuel") + 20 > getVehicleMaxFuel(loot) + 15 then
      triggerEvent("displayClientInfo", getLocalPlayer(), "Vehicle", "O tanque de combustivel está 100% cheio", 255, 22, 0)
      return
    else
      addingfuel = getVehicleMaxFuel(loot) - getElementData(loot, "fuel")
    end
    setElementData(loot, "fuel", getElementData(loot, "fuel") + addingfuel)
    setElementData(getLocalPlayer(), itemName, getElementData(getLocalPlayer(), itemName) - itemPlus)
    setElementData(getLocalPlayer(), Item_EmptyPatrol, (getElementData(getLocalPlayer(), Item_EmptyPatrol) or 0) + itemPlus)
    triggerEvent("displayClientInfo", getLocalPlayer(), "Vehicle", "Você abasteceu alguns litros de combustivel no veículo!", 22, 255, 0)
    return
end
  itemName2 = itemName
  if itemName == DB_TireInVehicle then
    itemName2 = Item_Tire
  end
  if itemName == DB_EngineInVehicle then
    itemName2 = "Motor"
  end
  if 1 > (getElementData(getLocalPlayer(), itemName2) or 0) / itemPlus then
    triggerEvent("displayClientInfo", getLocalPlayer(), "Inventory", "Não pode deixar esse item!", 255, 22, 0)
    return
  end
  if loot then
    setElementData(loot, itemName, (getElementData(loot, itemName) or 0) + 1)
    do
      local players = getElementsWithinColShape(loot, "player")
      if #players > 1 then
        triggerServerEvent("onPlayerChangeLoot", getRootElement(), loot)
      end
    end
    if not getElementData(loot, "itemloot") and getElementType(getElementData(loot, "parent")) == "vehicle" then
    end
  else
    triggerServerEvent("playerDropAItem", getLocalPlayer(), itemName)
  end
  if itemName == DB_TireInVehicle then
    itemName = Item_Tire
  end
  if itemName == DB_EngineInVehicle then
    itemName = "Motor"
  end
  setElementData(getLocalPlayer(), itemName, getElementData(getLocalPlayer(), itemName) - itemPlus)
  if loot and getElementData(loot, "itemloot") then
    triggerServerEvent("refreshItemLoot", getRootElement(), loot, getElementData(loot, "parent"))
  end
end
addEvent("onPlayerMoveItemOutOFInventory", true)
addEventHandler("onPlayerMoveItemOutOFInventory", getRootElement(), onPlayerMoveItemOutOFInventory)


-- Called when player moves item to his inventory
function onPlayerMoveItemInInventory ()
local itemName = guiGridListGetItemText ( gridlistItems["loot"], guiGridListGetSelectedItem ( gridlistItems["loot"] ), 1 )
if isPlayerInLoot() then
	if getElementData(isPlayerInLoot(),itemName) and getElementData(isPlayerInLoot(),itemName) >= 1 then
		if not isToolbeltItem(itemName) then
			if getPlayerCurrentSlots() + getItemSlots(itemName) <= getPlayerMaxAviableSlots() then
				if not playerMovedInInventory then
					triggerEvent("onPlayerMoveItemInInventory",getLocalPlayer(),itemName,isPlayerInLoot())
					playerMovedInInventory = true
					setTimer(function()
						playerMovedInInventory = false
					end,700,1)
				else
					startRollMessage2("Inventory", "Vai com calma! Rápido assim, você poderá bugar os ítens e será punido.", 255, 22, 0 )
					return
				end
			else
				startRollMessage2("Inventory", "Seu inventário está cheio.", 255, 22, 0 )
				return
			end
		else
			playerMovedInInventory = true
			setTimer(function()
				playerMovedInInventory = false
			end,700,1)
			triggerEvent("onPlayerMoveItemInInventory",getLocalPlayer(),itemName,isPlayerInLoot())
		end
	end
	if isPlayerInLoot() then
		local gearName = guiGetText(headline["loot"])
		local col = getElementData(getLocalPlayer(),"currentCol")
		setTimer(refreshInventory,200,2)
		setTimer(refreshLoot,200,2,col,gearName)
	end
end	
end
addEventHandler ( "onClientGUIClick", buttonItems["loot"], onPlayerMoveItemInInventory )
addEventHandler ( "onClientGUIDoubleClick", buttonItems["loot"], onPlayerMoveItemInInventory )

function onPlayerMoveItemInInventory(itemName, loot)
  local itemPlus = 1
  if itemName == Weapon_PistolAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SilencedAmmo then
    itemPlus = 15
  elseif itemName == Weapon_DesertAmmo then
    itemPlus = 7
  elseif itemName == Weapon_UziAmmo then
    itemPlus = 30
  elseif itemName == Weapon_MP5Ammo then
    itemPlus = 20
  elseif itemName == Weapon_AKAmmo then
    itemPlus = 30
  elseif itemName == Weapon_M4Ammo then
    itemPlus = 20
  elseif itemName == Weapon_ShotgunAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SawnOffAmmo then
    itemPlus = 2
  elseif itemName == Weapon_SpasAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SniperAmmo then
    itemPlus = 5
  elseif itemName == Weapon_CountryAmmo then
    itemPlus = 10

  elseif itemName == "Assault Pack (ACU)" then
    if getElementData(getLocalPlayer(), "MAX_Slots") == 12 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Você já está usando esta mochila.", 255, 22, 0)
      return
    end
    if getElementData(getLocalPlayer(), "MAX_Slots") > 12 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Sua mochila atual possui mais espaços.", 255, 22, 0)
      return
    end
    setElementData(getLocalPlayer(), "MAX_Slots", 12)
    setElementData(loot, itemName, getElementData(loot, itemName) - 1)
    itemPlus = 0
  elseif itemName == "Alice Pack" then
    if getElementData(getLocalPlayer(), "MAX_Slots") == 16 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Você já está usando esta mochila.", 255, 22, 0)
      return
    end
    if getElementData(getLocalPlayer(), "MAX_Slots") > 16 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Sua mochila atual possui mais espaços.", 255, 22, 0)
      return
    end
    setElementData(getLocalPlayer(), "MAX_Slots", 16)
    setElementData(loot, itemName, getElementData(loot, itemName) - 1)
    itemPlus = 0
  elseif itemName == "Czech Backpack" then
    if getElementData(getLocalPlayer(), "MAX_Slots") == 26 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Você já está usando esta mochila.", 255, 22, 0)
      return
    end
    if getElementData(getLocalPlayer(), "MAX_Slots") > 26 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Sua mochila atual possui mais espaços.", 255, 22, 0)
      return
    end
    setElementData(getLocalPlayer(), "MAX_Slots", 26)
    setElementData(loot, itemName, getElementData(loot, itemName) - 1)
    itemPlus = 0
  elseif itemName == "Coyote Backpack" then
    if getElementData(getLocalPlayer(), "MAX_Slots") == 36 then
      triggerEvent(getLocalPlayer(), "displayClientInfo", getLocalPlayer(), "Inventory", "Você já tem a melhor mochila do jogo!", 255, 22, 0)
      return
    end
    setElementData(getLocalPlayer(), "MAX_Slots", 36)
    setElementData(loot, itemName, getElementData(loot, itemName) - 1)
    itemPlus = 0
  end
  if loot then
    setElementData(getLocalPlayer(), itemName, (getElementData(getLocalPlayer(), itemName) or 0) + itemPlus)
    if itemPlus == 0 then
      setElementData(loot, itemName, getElementData(loot, itemName) - 0)
    else
      setElementData(loot, itemName, getElementData(loot, itemName) - 1)
    end
    local players = getElementsWithinColShape(loot, "player")
    if #players > 1 then
      triggerServerEvent("onPlayerChangeLoot", getRootElement(), loot)
    end
  end
  if getElementData(loot, "itemloot") then
    triggerServerEvent("refreshItemLoot", getRootElement(), loot, getElementData(loot, "parent"))
  end
end
addEvent("onPlayerMoveItemInInventory", true)
addEventHandler("onPlayerMoveItemInInventory", getRootElement(), onPlayerMoveItemInInventory)













function onClientOpenInventoryStopMenu()
  triggerEvent("disableMenu", getLocalPlayer())
end
function isPlayerInLoot()
  if getElementData(getLocalPlayer(), "loot") then
    return getElementData(getLocalPlayer(), "currentCol")
  end
  return false
end


------------------------------------------------------------------------------
--right-click menu
function onPlayerPressRightKeyInInventory()
  local itemName = guiGridListGetItemText(gridlistItems.inventory, guiGridListGetSelectedItem(gridlistItems.inventory), 1)
  local itemName, itemInfo = getInventoryInfosForRightClickMenu(itemName)
  if isCursorShowing() and guiGetVisible(inventoryWindows) and itemInfo then
    if itemName == Item_BoxOfMatches and getElementData(getLocalPlayer(), Item_WoodPile) == 0 then
      return
    end
    if itemName == Item_Bandage and getElementData(getLocalPlayer(), "bleeding") == 0 then
      return
    end
    if itemName == Item_MedicKit and getElementData(getLocalPlayer(), "blood") > 10500 then
      return
    end
    if itemName == Item_HeatPack and getElementData(getLocalPlayer(), "temperature") > 35 then
      return
    end
    if itemName == Item_Painkiller and not getElementData(getLocalPlayer(), "pain") then
      return
    end
    if itemName == Item_Morphine and not getElementData(getLocalPlayer(), "brokenbone") then
      return
    end
    if itemName == Item_BloodBag then
      return
    end
    showRightClickInventoryMenu(itemName, itemInfo)
  end
end
bindKey("mouse2", "down", onPlayerPressRightKeyInInventory)


function getInventoryInfosForRightClickMenu(itemName)
  for i, itemInfo in ipairs(inventoryItems.Weapons["Primary Weapon"]) do
    if itemName == itemInfo[1] then
      return itemName, "Equipar Arma Primária"
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Weapons["Secondary Weapon"]) do
    if itemName == itemInfo[1] then
      return itemName, "Equipar Arma Secundária"
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Weapons["Specially Weapon"]) do
    if itemName == itemInfo[1] then
      return itemName, "Equipar Arma Especial"
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Ammo) do
    if itemName == itemInfo[1] then
      return itemName, false
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Food) do
    if itemName == itemInfo[1] then
      if itemInfo[1] == Item_FullWaterBottle or itemInfo[1] == Item_Milk or itemInfo[1] == Item_SodaBottle then
        info = "Beber"
      else
        info = "Comer"
      end
      return itemName, info
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Items) do
    if itemName == itemInfo[1] then
      return itemName, itemInfo[3] or false
    end
  end
  for i, itemInfo in ipairs(inventoryItems.Toolbelt) do
    if itemName == itemInfo[1] then
      return itemName, itemInfo[3] or false
    end
  end
end

rightclickWindow = guiCreateStaticImage(0, 0, 0.05, 0.0215, "images/scrollmenu_1.png", true)
headline.rightclickmenu = guiCreateLabel(0, 0, 1, 1, "", true, rightclickWindow)
guiLabelSetHorizontalAlign(headline.rightclickmenu, "center")
guiLabelSetVerticalAlign(headline.rightclickmenu, "center")
guiSetFont(headline.rightclickmenu, "default-bold-small")
guiSetVisible(rightclickWindow, false)

-- Shows the RightClick options
function showRightClickInventoryMenu(itemName, itemInfo)
  if itemInfo then
    local screenx, screeny, worldx, worldy, worldz = getCursorPosition()
    guiSetVisible(rightclickWindow, true)
    guiSetText(headline.rightclickmenu, itemInfo)
	
    local whith = guiLabelGetTextExtent(headline.rightclickmenu)
    guiSetPosition(rightclickWindow, screenx, screeny, true)
    local x, y = guiGetSize(rightclickWindow, false)
    guiSetSize(rightclickWindow, whith, y, false)
    guiBringToFront(rightclickWindow)
    setElementData(rightclickWindow, "iteminfo", {itemName, itemInfo})
  end
end

function hideRightClickInventoryMenu()
  guiSetVisible(rightclickWindow, false)
end

-- Called when player clicks on RightClick option
function onPlayerClickOnRightClickMenu(button, state)
  if button == "left" then
    local itemName, itemInfo = getElementData(rightclickWindow, "iteminfo")[1], getElementData(rightclickWindow, "iteminfo")[2]
    hideRightClickInventoryMenu()
    playerUseItem(itemName, itemInfo)
  end
end
addEventHandler("onClientGUIClick", headline.rightclickmenu, onPlayerClickOnRightClickMenu, false)
local playerFire = {}
local fireCounter = 0
function playerUseItem(itemName, itemInfo)
  if itemInfo == "Beber" then
    triggerServerEvent("onPlayerRequestChangingStats", getLocalPlayer(), itemName, itemInfo, "thirst")
  elseif itemInfo == "Comer" then
    triggerServerEvent("onPlayerRequestChangingStats", getLocalPlayer(), itemName, itemInfo, "food")
  elseif itemInfo == "Usar Skin" then
    triggerServerEvent("onPlayerChangeSkin", getLocalPlayer(), itemName)
  elseif itemName == Item_EmptyWaterBottle then
    triggerServerEvent("onPlayerRefillWaterBottle", getLocalPlayer(), itemName)
  elseif itemName == Item_Tent then
    triggerServerEvent("onPlayerPitchATent", getLocalPlayer(), itemName)
  elseif itemInfo == "Colocar cerca" then
    triggerServerEvent("onPlayerBuildAWireFence", getLocalPlayer(), itemName)
  elseif itemName == Item_RoadFlare then
    triggerServerEvent("onPlayerPlaceRoadflare", getLocalPlayer(), itemName)
  elseif itemInfo == "Fazer fogueira" then
    triggerServerEvent("onPlayerMakeAFire", getLocalPlayer(), itemName)
  elseif itemInfo == "Usar" then
    triggerServerEvent("onPlayerUseMedicObject", getLocalPlayer(), itemName)
  elseif itemName == Item_Bandage then
    triggerServerEvent("onPlayerUseMedicObject", getLocalPlayer(), itemName)
  elseif itemInfo == "Usar Equipamento" then
    triggerServerEvent("onPlayerChangeView", getLocalPlayer(), itemName)
  elseif itemInfo == "Equipar Arma Primária" then
    triggerServerEvent("onPlayerRearmWeapon", getLocalPlayer(), itemName, 1)
  elseif itemInfo == "Equipar Arma Secundária" then
    triggerServerEvent("onPlayerRearmWeapon", getLocalPlayer(), itemName, 2)
  elseif itemInfo == "Equipar Arma Especial" then
    triggerServerEvent("onPlayerRearmWeapon", getLocalPlayer(), itemName, 3)
  elseif itemInfo == "Vestir" then
	triggerServerEvent("onPlayerUseArmor", getLocalPlayer())
  elseif itemInfo == "Tocar" then
    triggerEvent("displayClientInfo", getLocalPlayer(), "Vehicle", "O recurso para tocar CD's ainda não está disponível.", 255, 22, 0)
  end
end


weaponAmmoTable = {
[Weapon_PistolAmmo] = {{Weapon_Pistol, 22}},
[Weapon_SilencedAmmo] = {{Weapon_Silenced, 23}},
[Weapon_DesertAmmo] = {{Weapon_Desert, 24}},
[Weapon_UziAmmo] = {{Weapon_Uzi, 28}},
[Weapon_MP5Ammo] = {{Weapon_MP5, 29}},
[Weapon_AKAmmo] = {{Weapon_AK, 30}},
[Weapon_M4Ammo] = {{Weapon_M4, 31}},
[Weapon_ShotgunAmmo] = {{Weapon_Shotgun, 25}},
[Weapon_SawnOffAmmo] = {{Weapon_SawnOff, 26}},
[Weapon_SpasAmmo] = {{Weapon_Spas, 27}},
[Weapon_SniperAmmo] = {{Weapon_Sniper, 34}},
[Weapon_CountryAmmo] = {{Weapon_Country, 33}},
["others"] = {{Weapon_Parachute, 46},{Weapon_TearGas, 17},{Weapon_Grenade, 16},{Weapon_Knife, 4},{Weapon_Katana, 8},{Weapon_Binoculars, 43},{Weapon_Baseball, 5},{Weapon_Shovel, 6},{Weapon_Crowbar, 2}}
}

function getWeaponAmmoType2(weaponName)
  for i, weaponData in ipairs(weaponAmmoTable.others) do
    if weaponName == weaponData[2] then
      return weaponData[1], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_PistolAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_PistolAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SilencedAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_SilencedAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_DesertAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_DesertAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_UziAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_UziAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_MP5Ammo]) do
    if weaponName == weaponData[2] then
      return Weapon_MP5Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_AKAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_AKAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_M4Ammo]) do
    if weaponName == weaponData[2] then
      return Weapon_M4Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_ShotgunAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_ShotgunAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SpasAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_SpasAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SawnOffAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SawnOffAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SniperAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_SniperAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_CountryAmmo]) do
    if weaponName == weaponData[2] then
      return Weapon_CountryAmmo, weaponData[2]
    end
  end
end


-- When player fire // Quando jogador atira
function weaponSwitch(weapon)
  if source == getLocalPlayer() then
    local ammoName, _ = getWeaponAmmoType2(weapon)
    if getElementData(getLocalPlayer(), ammoName) > 0 then
      setElementData(getLocalPlayer(), ammoName, getElementData(getLocalPlayer(), ammoName) - 1)
    end
  end
end
addEventHandler("onClientPlayerWeaponFire", getLocalPlayer(), weaponSwitch)



-- Turn radio off // Desliga o rádio
function makeRadioStayOff()
  setRadioChannel(0)
  cancelEvent()
end
addEventHandler("onClientPlayerRadioSwitch", getRootElement(), makeRadioStayOff)
addEventHandler("onClientPlayerVehicleEnter", getRootElement(), makeRadioStayOff)
