
inventoryItems = {
["Weapons"] = {
["Primary Weapon"] = {
	{gameWeapons["M4"]["name"],3},
	{gameWeapons["Sniper"]["name"],3},
	{Weapon_Shotgun,3},
	{gameWeapons["SPAZ12"]["name"],3},
	{Weapon_SawnOff,3},
	{gameWeapons["AK47"]["name"],3},
	{gameWeapons["CountryRifle"]["name"],3},
},
["Secondary Weapon"] = {
	{gameWeapons["Pistol"]["name"],2},
	{gameWeapons["SilencedPistol"]["name"],2},
	{gameWeapons["Uzi"]["name"],2},
	{gameWeapons["MP5"]["name"],3},
	{gameWeapons["DesertEagle"]["name"],2},
	{gameWeapons["Knife"]["name"],1},
	{gameWeapons["Katana"]["name"], 2},
	{gameWeapons["BaseballBat"]["name"],2},
	{gameWeapons["Shovel"]["name"], 2},
	{gameWeapons["GolfClub"]["name"], 2},
},
["Specially Weapon"] = {
	{Weapon_Parachute, 1},
	{gameWeapons["TearGas"]["name"], 1},
	{gameWeapons["Grenade"]["name"], 1},
	{gameWeapons["Camera"]["name"], 1},
}
},
["Ammo"] = {
	{gameWeapons["Pistol_Ammo"]["name"],0.085},
	{gameWeapons["SilencedPistol_Ammo"]["name"],0.085},
	{gameWeapons["DesertEagle_Ammo"]["name"],0.085},
	{gameWeapons["Uzi_Ammo"]["name"],0.025},
	{gameWeapons["MP5_Ammo"]["name"],0.025},
	{gameWeapons["AK47_Ammo"]["name"],0.035},
	{gameWeapons["M4_Ammo"]["name"],0.035},
	{gameWeapons["Shotgun_Ammo"]["name"],0.067},
	{gameWeapons["SawnOff_Ammo"]["name"],0.067},
	{gameWeapons["SPAZ12_Ammo"]["name"],0.067},
	{gameWeapons["Sniper_Ammo"]["name"], 0.1},
	{gameWeapons["CountryRifle_Ammo"]["name"],0.1},
},
["Food"] = {
	{gameFoodItems["FullWaterBottle"]["name"],1},
	{gameFoodItems["PastaCan"]["name"], 1},
	{gameFoodItems["BeansCan"]["name"], 1},
	{gameFoodItems["Burger"]["name"], 1},
	{gameFoodItems["Pizza"]["name"], 1},
	{gameFoodItems["FullSodaCan"]["name"],1 },
	{gameFoodItems["Milk"]["name"], 1},
	{gameFoodItems["CookedMeat"]["name"],1},
},
["Items"] = {
	{Item_WoodPile, 2},
	{gameMedicItems["Bandage"]["name"],1,"Usar curativo"},
	{Item_RoadFlare,1,"Acender"},
	{Item_EmptyPatrol,2},
	{Item_FullPatrol,2},
	{gameMedicItems["MedicKit"]["name"],2,"Usar"},
	{gameMedicItems["HeatPack"]["name"],1,"Usar"},
	{gameMedicItems["Painkiller"]["name"],1,"Usar"},
	{gameMedicItems["Morphine"]["name"],1,"Usar"},
	{gameMedicItems["BloodBag"]["name"],1,"Usar"},
	{Item_WireFence,1,"Colocar cerca"},
	{gameFoodItems["RawMeat"]["name"], 1},
	{Item_Tire, 2},
	{"Motor", 5},
	{Item_Tent,3,"Montar tenda"},
	{gameFoodItems["EmptyWaterBottle"]["name"],1,"Encher garrafa"},
	{gameFoodItems["EmptySodaCan"]["name"],1},
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
	{gameWeapons["NightVision"]["name"], 1},
	{gameWeapons["Infrared"]["name"],1},
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
if getElementData(getLocalPlayer(), "isLogged") and keyState == "down" then
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
  if itemName == gameWeapons["Pistol_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SilencedPistol_Ammo"]["name"] then
    itemPlus = 15
  elseif itemName == gameWeapons["DesertEagle_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Uzi_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["MP5_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["AK47_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["M4_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["Shotgun_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SawnOff_Ammo"]["name"] then
    itemPlus = 6
  elseif itemName == gameWeapons["SPAZ12_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Sniper_Ammo"]["name"] then
    itemPlus = 5
  elseif itemName == gameWeapons["CountryRifle_Ammo"]["name"] then
    itemPlus = 10
  elseif itemName == Item_Tire then
    itemPlus = 1
  elseif itemName == gameWeapons["M4"]["name"] or itemName == gameWeapons["AK47"]["name"] or itemName == gameWeapons["Sniper"]["name"] or itemName == Weapon_Shotgun or itemName == gameWeapons["SPAZ12"]["name"] or itemName == Weapon_SawnOff or itemName == gameWeapons["CountryRifle"]["name"] then
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
  if itemName == gameWeapons["Pistol_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SilencedPistol_Ammo"]["name"] then
    itemPlus = 15
  elseif itemName == gameWeapons["DesertEagle_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Uzi_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["MP5_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["AK47_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["M4_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["Shotgun_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SawnOff_Ammo"]["name"] then
    itemPlus = 2
  elseif itemName == gameWeapons["SPAZ12_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Sniper_Ammo"]["name"] then
    itemPlus = 5
  elseif itemName == gameWeapons["CountryRifle_Ammo"]["name"] then
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
    if itemName == gameMedicItems["Bandage"]["name"] and getElementData(getLocalPlayer(), "bleeding") == 0 then
      return
    end
    if itemName == gameMedicItems["MedicKit"]["name"] and getElementData(getLocalPlayer(), "blood") > 10500 then
      return
    end
    if itemName == gameMedicItems["HeatPack"]["name"] and getElementData(getLocalPlayer(), "temperature") > 35 then
      return
    end
    if itemName == gameMedicItems["Painkiller"]["name"] and not getElementData(getLocalPlayer(), "pain") then
      return
    end
    if itemName == gameMedicItems["Morphine"]["name"] and not getElementData(getLocalPlayer(), "brokenbone") then
      return
    end
    if itemName == gameMedicItems["BloodBag"]["name"] then
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
      if itemInfo[1] == gameFoodItems["FullWaterBottle"]["name"] or itemInfo[1] == gameFoodItems["Milk"]["name"] or itemInfo[1] == gameFoodItems["FullSodaCan"]["name"] then
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
  elseif itemName == gameFoodItems["EmptyWaterBottle"]["name"] then
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
  elseif itemName == gameMedicItems["Bandage"]["name"] then
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
[gameWeapons["Pistol_Ammo"]["name"]] = {{gameWeapons["Pistol"]["name"], 22}},
[gameWeapons["SilencedPistol_Ammo"]["name"]] = {{gameWeapons["SilencedPistol"]["name"], 23}},
[gameWeapons["DesertEagle_Ammo"]["name"]] = {{gameWeapons["DesertEagle"]["name"], 24}},
[gameWeapons["Uzi_Ammo"]["name"]] = {{gameWeapons["Uzi"]["name"], 28}},
[gameWeapons["MP5_Ammo"]["name"]] = {{gameWeapons["MP5"]["name"], 29}},
[gameWeapons["AK47_Ammo"]["name"]] = {{gameWeapons["AK47"]["name"], 30}},
[gameWeapons["M4_Ammo"]["name"]] = {{gameWeapons["M4"]["name"], 31}},
[gameWeapons["Shotgun_Ammo"]["name"]] = {{Weapon_Shotgun, 25}},
[gameWeapons["SawnOff_Ammo"]["name"]] = {{Weapon_SawnOff, 26}},
[gameWeapons["SPAZ12_Ammo"]["name"]] = {{gameWeapons["SPAZ12"]["name"], 27}},
[gameWeapons["Sniper_Ammo"]["name"]] = {{gameWeapons["Sniper"]["name"], 34}},
[gameWeapons["CountryRifle_Ammo"]["name"]] = {{gameWeapons["CountryRifle"]["name"], 33}},
["others"] = {{Weapon_Parachute, 46},{gameWeapons["TearGas"]["name"], 17},{gameWeapons["Grenade"]["name"], 16},{gameWeapons["Knife"]["name"], 4},{gameWeapons["Katana"]["name"], 8},{gameWeapons["Camera"]["name"], 43},{gameWeapons["BaseballBat"]["name"], 5},{gameWeapons["Shovel"]["name"], 6},{gameWeapons["GolfClub"]["name"], 2}}
}

function getWeaponAmmoType2(weaponName)
  for i, weaponData in ipairs(weaponAmmoTable.others) do
    if weaponName == weaponData[2] then
      return weaponData[1], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Pistol_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["Pistol_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SilencedPistol_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["SilencedPistol_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["DesertEagle_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["DesertEagle_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Uzi_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["Uzi_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["MP5_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["MP5_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["AK47_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["AK47_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["M4_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["M4_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Shotgun_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["Shotgun_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SPAZ12_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["SPAZ12_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SawnOff_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["SawnOff_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Sniper_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["Sniper_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["CountryRifle_Ammo"]["name"]]) do
    if weaponName == weaponData[2] then
      return gameWeapons["CountryRifle_Ammo"]["name"], weaponData[2]
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
