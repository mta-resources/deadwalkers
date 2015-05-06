
local vehicleDataTableForTent = {
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
  {Item_Radio},
  {"Coyote Backpack"},
  {"Czech Backpack"},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar}
}
weaponAmmoTable = {
  [Weapon_PistolAmmo] = {
    {Weapon_Pistol, 22}
  },
  [Weapon_SilencedAmmo] = {
    {Weapon_Silenced, 23}
  },
  [Weapon_DesertAmmo] = {
    {
      Weapon_Desert,
      24
    }
  },
  [Weapon_UziAmmo] = {
    {Weapon_Uzi, 28}
  },
  [Weapon_MP5Ammo] = {
    {Weapon_MP5, 29}
  },
  [Weapon_AKAmmo] = {
    {Weapon_AK, 30}
  },
  [Weapon_M4Ammo] = {
    {Weapon_M4, 31}
  },
  [Weapon_ShotgunAmmo] = {
    {
      Weapon_Shotgun,
      25
    }
  },
  [Weapon_SawnOffAmmo] = {
    {
      Weapon_SawnOff,
      26
    }
  },
  [Weapon_SpasAmmo] = {
    {Weapon_Spas,27}
  },
  [Weapon_SniperAmmo] = {
    {Weapon_Sniper, 34}
  },
  [Weapon_CountryAmmo] = {
    {
      Weapon_Country,
      33
    }
  },
  ["others"] = {
    {Weapon_Parachute, 46},
    {Weapon_TearGas, 17},
    {Weapon_Grenade, 16},
    {Weapon_Knife, 4},
    {Weapon_Katana, 8},
    {Weapon_Binoculars, 43},
    {Weapon_Baseball, 5},
    {Weapon_Shovel, 6},
    {Weapon_Crowbar, 2},
    {Item_Radio, 1}
  }
}
function getWeaponAmmoType(weaponName, notOthers)
  if not notOthers then
    for i, weaponData in ipairs(weaponAmmoTable.others) do
      if weaponName == weaponData[1] then
        return weaponData[1], weaponData[2]
      end
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_PistolAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_PistolAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SilencedAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SilencedAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_DesertAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_DesertAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_UziAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_UziAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_MP5Ammo]) do
    if weaponName == weaponData[1] then
      return Weapon_MP5Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_AKAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_AKAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_M4Ammo]) do
    if weaponName == weaponData[1] then
      return Weapon_M4Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_ShotgunAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_ShotgunAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SawnOffAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SawnOffAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SpasAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SpasAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SniperAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SniperAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_CountryAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_CountryAmmo, weaponData[2]
    end
  end
  return false
end


function givePlayerAnArmor()
	setElementData(source, Item_Armor, getElementData(source, Item_Armor) - 1)
	setElementData(source, "armor", true)
	triggerClientEvent(source, "refreshInventoryManual", source)
end
addEvent("onPlayerUseArmor", true)
addEventHandler("onPlayerUseArmor", getRootElement(), givePlayerAnArmor)


function rearmPlayerWeapon(weaponName, slot)
  takeAllWeapons(source)
  local ammoData, weapID = getWeaponAmmoType(weaponName)
  if getElementData(source, ammoData) <= 0 then
    triggerClientEvent(source, "displayClientInfo", source, "Rearm", shownInfos.nomag, 255, 22, 0)
    return
  end
  setElementData(source, "currentweapon_" .. slot, weaponName)
  local weapon = getElementData(source, "currentweapon_1")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(source, weapID, getElementData(source, ammoData), true)
  end
  local weapon = getElementData(source, "currentweapon_2")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(source, weapID, getElementData(source, ammoData), false)
  end
  local weapon = getElementData(source, "currentweapon_3")
  if weapon then
    local ammoData, weapID = getWeaponAmmoType(weapon)
    giveWeapon(source, weapID, getElementData(source, ammoData), false)
  end
  if elementWeaponBack[source] then
    detachElementFromBone(elementWeaponBack[source])
    destroyElement(elementWeaponBack[source])
    elementWeaponBack[source] = false
  end
  setElementModel(source, getElementData(source, "skin"))
end
addEvent("onPlayerRearmWeapon", true)
addEventHandler("onPlayerRearmWeapon", getRootElement(), rearmPlayerWeapon)

weaponIDtoObjectID = {
  {30, 355},
  {31, 356},
  {25, 349},
  {26, 350},
  {27, 351},
  {33, 357},
  {34, 358},
  {36, 360},
  {35, 359},
  {2, 333},
  {5, 336},
  {6, 337}
}


function getWeaponObjectID(weaponID)
	for i, weaponData in ipairs(weaponIDtoObjectID) do
		if weaponID == weaponData[1] then
			return weaponData[2]
		end
	end
end


local elementBackpack = {}
function backPackBack(dataName, oldValue)
  if getElementType(source) == "player" and dataName == "MAX_Slots" then
    local newValue = getElementData(source, dataName)
    if elementBackpack[source] then
      detachElementFromBone(elementBackpack[source])
      destroyElement(elementBackpack[source])
      elementBackpack[source] = false
    end
    local x, y, z = getElementPosition(source)
    local rx, ry, rz = getElementRotation(source)
    if newValue == 12 then
      elementBackpack[source] = createObject(3026, x, y, z)
    elseif newValue == 16 then
      elementBackpack[source] = createObject(1248, x, y, z)
    elseif newValue == 26 then
      elementBackpack[source] = createObject(1575, x, y, z)
    elseif newValue == 36 then
      elementBackpack[source] = createObject(1252, x, y, z)
    elseif newValue == 8 then
      return
    end
    if newValue == 26 then
      attachElementToBone(elementBackpack[source], source, 3, 0, -0.16, 0.05, 270, 0, 180)
    else
      attachElementToBone(elementBackpack[source], source, 3, 0, -0.225, 0.05, 90, 0, 0)
    end
  end
end
addEventHandler("onElementDataChange", getRootElement(), backPackBack)


function backpackRemoveQuit()
  if elementBackpack[source] then
    detachElementFromBone(elementBackpack[source])
    destroyElement(elementBackpack[source])
  end
  if elementWeaponBack[source] then
    detachElementFromBone(elementWeaponBack[source])
    destroyElement(elementWeaponBack[source])
    elementWeaponBack[source] = false
  end
end
addEventHandler("onPlayerQuit", getRootElement(), backpackRemoveQuit)
elementWeaponBack = {}


function weaponSwitchBack(previousWeaponID, currentWeaponID)
  local weapon1 = getElementData(source, "currentweapon_1")
  if not weapon1 then
    return
  end
  local ammoData1, weapID1 = getWeaponAmmoType(weapon1)
  local x, y, z = getElementPosition(source)
  local rx, ry, rz = getElementRotation(source)
  if previousWeaponID == weapID1 then
    if elementWeaponBack[source] then
      detachElementFromBone(elementWeaponBack[source])
      destroyElement(elementWeaponBack[source])
      elementWeaponBack[source] = false
    end
    elementWeaponBack[source] = createObject(getWeaponObjectID(weapID1), x, y, z)
    setObjectScale(elementWeaponBack[source], 0.875)
    if elementBackpack[source] then
      attachElementToBone(elementWeaponBack[source], source, 3, 0.19, -0.31, -0.1, 0, 270, -90)
    else
      attachElementToBone(elementWeaponBack[source], source, 3, 0.19, -0.11, -0.1, 0, 270, 10)
    end
  elseif currentWeaponID == weapID1 then
    detachElementFromBone(elementWeaponBack[source])
    destroyElement(elementWeaponBack[source])
    elementWeaponBack[source] = false
  end
end
addEventHandler("onPlayerWeaponSwitch", getRootElement(), weaponSwitchBack)


function removeBackWeaponOnDrop()
  if elementWeaponBack[source] then
    detachElementFromBone(elementWeaponBack[source])
    destroyElement(elementWeaponBack[source])
    elementWeaponBack[source] = false
  end
end
addEvent("removeBackWeaponOnDrop", true)
addEventHandler("removeBackWeaponOnDrop", getRootElement(), removeBackWeaponOnDrop)


function removeAttachedOnDeath()
  if elementBackpack[source] then
    detachElementFromBone(elementBackpack[source])
    destroyElement(elementBackpack[source])
  end
  if elementWeaponBack[source] then
    detachElementFromBone(elementWeaponBack[source])
    destroyElement(elementWeaponBack[source])
    elementWeaponBack[source] = false
  end
end
addEvent("kilLDayZPlayer", true)
addEventHandler("kilLDayZPlayer", getRootElement(), removeAttachedOnDeath)


function weaponDelete(dataName, oldValue)
  if getElementType(source) == "player" then
    local weapon1 = getElementData(source, "currentweapon_1")
    local weapon2 = getElementData(source, "currentweapon_2")
    local weapon3 = getElementData(source, "currentweapon_3")
    if (dataName == weapon1 or dataName == weapon2 or dataName == weapon3) and getElementData(source, dataName) == 0 then
      local ammoData, weapID = getWeaponAmmoType(dataName)
      takeWeapon(source, weapID)
    end
    local weapon1 = getElementData(source, "currentweapon_1")
    local weapon2 = getElementData(source, "currentweapon_2")
    local weapon3 = getElementData(source, "currentweapon_3")
    local ammoData1, weapID1 = getWeaponAmmoType(weapon1)
    local ammoData2, weapID2 = getWeaponAmmoType(weapon2)
    local ammoData3, weapID3 = getWeaponAmmoType(weapon3)
    if dataName == ammoData1 then
      if not oldValue then
        return
      end
      local newammo = oldValue - getElementData(source, dataName)
      if newammo == 1 then
        return
      end
      if oldValue > getElementData(source, dataName) then
        takeWeapon(source, weapID1, newammo)
        if elementWeaponBack[source] then
          detachElementFromBone(elementWeaponBack[source])
          destroyElement(elementWeaponBack[source])
          elementWeaponBack[source] = false
        end
      elseif oldValue < getElementData(source, dataName) then
        giveWeapon(source, weapID1, getElementData(source, dataName) - oldValue, true)
      end
    end
    if dataName == ammoData2 then
      if not oldValue then
        return
      end
      local newammo = oldValue - getElementData(source, dataName)
      if newammo == 1 then
        return
      end
      if oldValue > getElementData(source, dataName) then
        takeWeapon(source, weapID2, newammo)
      elseif oldValue < getElementData(source, dataName) then
        giveWeapon(source, weapID2, getElementData(source, dataName) - oldValue, false)
      end
    end
    if dataName == ammoData3 then
      if not oldValue then
        return
      end
      local newammo = oldValue - getElementData(source, dataName)
      if newammo == 1 then
        return
      end
      if oldValue > getElementData(source, dataName) then
        takeWeapon(source, weapID3, newammo)
      elseif oldValue < getElementData(source, dataName) then
        giveWeapon(source, weapID3, getElementData(source, dataName) - oldValue, false)
      end
    end
  end
end
addEventHandler("onElementDataChange", getRootElement(), weaponDelete)


function addPlayerStats(player, data, value)
  if data == "food" then
    do
      local current = getElementData(player, data)
      if current + value > 100 then
        setElementData(player, data, 100)
      elseif current + value < 1 then
        setElementData(player, data, 0)
        setElementData(player, "blood", getElementData(player, "blood") - math.random(50, 120))
      else
        setElementData(player, data, current + value)
      end
    end
  elseif data == "thirst" then
    do
      local current = getElementData(player, data)
      if current + value > 100 then
        setElementData(player, data, 100)
      elseif current + value < 1 then
        setElementData(player, data, 0)
        setElementData(player, "blood", getElementData(player, "blood") - math.random(50, 120))
      else
        setElementData(player, data, current + value)
      end
    end
  elseif data == "blood" then
    do
      local current = getElementData(player, data)
      if current + value > 12000 then
        setElementData(player, data, 12000)
      elseif current + value < 1 then
        setElementData(player, data, 0)
      else
        setElementData(player, data, current + value)
      end
    end
  elseif data == "temperature" then
    do
      local current = getElementData(player, data)
      if current + value > 41 then
        setElementData(player, data, 41)
      elseif current + value <= 31 then
        setElementData(player, data, 31)
      else
        setElementData(player, data, current + value)
      end
    end
  elseif data == "humanity" then
    local current = getElementData(player, data)
    if current + value > 5000 then
      setElementData(player, data, 5000)
    else
      setElementData(player, data, current + value)
    end
  end
end


function checkTemperature()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      value = 0
      if getWeather() == 7 then
        value = -0.01
      elseif getWeather() == 12 then
        value = 0
      elseif getWeather() == 16 then
        value = -0.08
      elseif getWeather() == 4 then
        value = -0.04
      end
      local hour, minutes = getTime()
      if hour >= 21 or hour <= 8 then
        value = gameplayVariables.temperaturenight -- remember, if temperaturenight is a negative value, then here will be subtracted
      end
      addPlayerStats(player, "temperature", value)
    end
  end
end
setTimer(checkTemperature, 60000, 0)


function checkTemperature2()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      value = 0
      if isElementInWater(player) then
        value = gameplayVariables.temperaturewater
      end
      if getControlState(player, "sprint") then
        value = gameplayVariables.temperaturesprint
      end
      addPlayerStats(player, "temperature", value)
    end
  end
end
setTimer(checkTemperature2, 10000, 0)


function setHunger()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      value = gameplayVariables.loseHunger
      addPlayerStats(player, "food", value)
    end
  end
end
setTimer(setHunger, 60000, 0)


function setThirsty()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      value = gameplayVariables.loseThirst
      addPlayerStats(player, "thirst", value)
    end
  end
end
setTimer(setThirsty, 60000, 0)
function checkThirsty()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      value = 0
      if getControlState(player, "sprint") then
        value = gameplayVariables.sprintthirst
      end
      addPlayerStats(player, "thirst", value)
    end
  end
end
setTimer(checkThirsty, 10000, 0)
function checkHumanity()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") and getElementData(player, "humanity") < 2500 then
      addPlayerStats(player, "humanity", 30)
      if getElementData(player, "humanity") > 2000 then
        setElementData(player, "bandit", false)
      end
    end
  end
end
setTimer(checkHumanity, 60000, 0)


function onPlayerRequestChangingStats(itemName, itemInfo, data)
  if data == "food" then
    if itemName == Item_Burger then
      blood = 300
    elseif itemName == Item_Pizza then
      blood = 300
    elseif itemName == Item_CookedMeat then
      blood = 2000
    elseif itemName == Item_BeansCan then
      blood = 200
    elseif itemName == Item_PastaCan then
      blood = 200
    end
    setPedAnimation(source, "FOOD", "EAT_Burger", -1, false, false, nil, false)
    setElementData(source, itemName, getElementData(source, itemName) - 1)
    addPlayerStats(source, "blood", blood)
    addPlayerStats(source, data, gameplayVariables.foodrestore)
  elseif data == "thirst" then
    setElementData(source, itemName, getElementData(source, itemName) - 1)
    addPlayerStats(source, data, gameplayVariables.thirstrestore)
    setPedAnimation(source, "VENDING", "VEND_Drink2_P", -1, false, false, nil, false)
    if itemName == Item_FullWaterBottle then
      setElementData(source, Item_EmptyWaterBottle, (getElementData(source, Item_EmptyWaterBottle) or 0) + 1)
    end
  end
  triggerClientEvent(source, "displayClientInfo", source, "Food", shownInfos.youconsumed .. " " .. itemName, 22, 255, 0)
  triggerClientEvent(source, "refreshInventoryManual", source)
end
addEvent("onPlayerRequestChangingStats", true)
addEventHandler("onPlayerRequestChangingStats", getRootElement(), onPlayerRequestChangingStats)


function onPlayerUseMedicObject(itemName)
  local playersource = source
  setPedAnimation(playersource, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  setTimer(function()
    if itemName == Item_Bandage then
      setElementData(playersource, "bleeding", 0)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    elseif itemName == Item_MedicKit then
      addPlayerStats(playersource, "blood", 7000)
      setElementData(playersource, "bleeding", 0)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    elseif itemName == Item_HeatPack then
      setElementData(playersource, "cold", false)
      setElementData(playersource, "temperature", 37)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    elseif itemName == Item_Painkiller then
      setElementData(playersource, "pain", false)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    elseif itemName == Item_Morphine then
      setElementData(playersource, "brokenbone", false)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    elseif itemName == Item_BloodBag then
      addPlayerStats(playersource, "blood", 12000)
      setElementData(playersource, itemName, getElementData(playersource, itemName) - 1)
    end
  end, 1500, 1)
  triggerClientEvent(playersource, "refreshInventoryManual", playersource)
end
addEvent("onPlayerUseMedicObject", true)
addEventHandler("onPlayerUseMedicObject", getRootElement(), onPlayerUseMedicObject)


function onPlayerGiveMedicObject(itemName, player)
  local playersource = source
  setPedAnimation(playersource, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  setTimer(function()
    if itemName == Item_Bandage then
      setElementData(player, "bleeding", 0)
      setElementData(playersource, Item_Bandage, getElementData(playersource, Item_Bandage) - 1)
      addPlayerStats(playersource, humanity, 40)
    elseif itemName == "giveblood" then
      addPlayerStats(player, "blood", 12000)
      setElementData(playersource, Item_BloodBag, getElementData(playersource, Item_BloodBag) - 1)
      addPlayerStats(playersource, humanity, 250)
    end
  end, 1500, 1)
end
addEvent("onPlayerGiveMedicObject", true)
addEventHandler("onPlayerGiveMedicObject", getRootElement(), onPlayerGiveMedicObject)


-- Player skins functions
skinTable = {
  {
    Skin_Military,
    --287
	287
  },
  {
    Skin_Civilian,
    179
  },
  {
    Skin_GhillieDesert,
    285
  },
  {
    Skin_GhillieForest,
	284
  },
  {
    Skin_Survivor,
    73
  }
}

function getSkinIDFromName(name)
  for i, skin in ipairs(skinTable) do
    if name == skin[1] then
      return skin[2]
    end
  end
end


function getSkinNameFromID(id)
  for i, skin in ipairs(skinTable) do
    if id == skin[2] then
      return skin[1]
    end
  end
end


-- When player clicks on "Change Skin" // Quando jogador clica em "Usar skin"
function addPlayerSkin(skin)
  local current = getElementData(source, "skin")
  local name = getSkinNameFromID(current)
  setElementData(source, name, getElementData(source, name) + 1)
  setElementData(source, skin, getElementData(source, skin) - 1)
  local id = getSkinIDFromName(skin)
  setElementData(source, "skin", id)
  setElementModel(source, id)
  triggerClientEvent(source, "refreshInventoryManual", source)
end
addEvent("onPlayerChangeSkin", true)
addEventHandler("onPlayerChangeSkin", getRootElement(), addPlayerSkin)


-- When player refill his water bottle // Quando jogador enche garrafa d'agua
function onPlayerRefillWaterBottle(itemName)
  if isElementInWater(source) then
    setElementData(source, Item_FullWaterBottle, getElementData(source, Item_FullWaterBottle) + 1)
    setElementData(source, itemName, getElementData(source, itemName) - 1)
    triggerClientEvent(source, "refreshInventoryManual", source)
    triggerClientEvent(source, "displayClientInfo", source, Item_FullWaterBottle, shownInfos.filledup, 22, 255, 0)
  else
    triggerClientEvent(source, "displayClientInfo", source, Item_FullWaterBottle, shownInfos.needwatersource, 255, 22, 0)
  end
end
addEvent("onPlayerRefillWaterBottle", true)
addEventHandler("onPlayerRefillWaterBottle", getRootElement(), onPlayerRefillWaterBottle)


function getPointFromDistanceRotation(x, y, dist, angle)
  local a = math.rad(90 - angle)
  local dx = math.cos(a) * dist
  local dy = math.sin(a) * dist
  return x + dx, y + dy
end


-- When player makes a tent // Quando o jogador monta uma tenda
function onPlayerPitchATent(itemName)
  setElementData(source, itemName, getElementData(source, itemName) - 1)
  setPedAnimation(source, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  local source = source
  setTimer(function()
    local x, y, z = getElementPosition(source)
    local xr, yr, zr = getElementRotation(source)
    px, py, pz = getElementPosition(source)
    prot = getPedRotation(source)
    local offsetRot = math.rad(prot + 90)
    local vx = px + 5 * math.cos(offsetRot)
    local vy = py + 5 * math.sin(offsetRot)
    local vz = pz + 2
    local vrot = prot + 180
    tent = createObject(3243, vx, vy, z - 1, 0, 0, vrot)
    setObjectScale(tent, 1.3)
    tentCol = createColSphere(x, y, z, 4)
    attachElements(tentCol, tent, 0, 0, 0)
    setElementData(tentCol, "parent", tent)
    setElementData(tent, "parent", tentCol)
    setElementData(tentCol, "tent", true)
    setElementData(tentCol, "vehicle", true)
    setElementData(tentCol, "MAX_Slots", 100)
    triggerClientEvent(source, "refreshInventoryManual", source)
  end, 1500, 1)
end
addEvent("onPlayerPitchATent", true)
addEventHandler("onPlayerPitchATent", getRootElement(), onPlayerPitchATent)


-- When player build a wire fence
function onPlayerBuildAWireFence(itemName)
  setElementData(source, itemName, getElementData(source, itemName) - 1)
  setPedAnimation(source, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  local source = source
  setTimer(function()
    local x, y, z = getElementPosition(source)
    local xr, yr, zr = getElementRotation(source)
    px, py, pz = getElementPosition(source)
    prot = getPedRotation(source)
    local offsetRot = math.rad(prot + 90)
    local vx = px + 1 * math.cos(offsetRot)
    local vy = py + 1 * math.sin(offsetRot)
    local vz = pz + 2
    local vrot = prot + 90
    tent = createObject(983, vx, vy, pz, xr, yr, vrot)
    setObjectScale(tent, 1)
    tentCol = createColSphere(x, y, z, 2)
    attachElements(tentCol, tent, 0, 0, 0)
    setElementData(tentCol, "parent", tent)
    setElementData(tent, "parent", tentCol)
    setElementData(tentCol, "wirefence", true)
    triggerClientEvent(source, "refreshInventoryManual", source)
  end, 1500, 1)
end
addEvent("onPlayerBuildAWireFence", true)
addEventHandler("onPlayerBuildAWireFence", getRootElement(), onPlayerBuildAWireFence)


function removeWirefence(object)
  destroyElement(getElementData(object, "parent"))
  destroyElement(object)
end
addEvent("removeWirefence", true)
addEventHandler("removeWirefence", getRootElement(), removeWirefence)


function removeTent(object)
  local x, y, z = getElementPosition(getElementData(object, "parent"))
  local item, itemString = getItemTablePosition(Item_Tent)
  local itemPickup = createItemPickup(item, x, y, z + 1, itemString)
  destroyElement(getElementData(object, "parent"))
  destroyElement(object)
end
addEvent("removeTent", true)
addEventHandler("removeTent", getRootElement(), removeTent)


function addPlayerCookMeat()
  local playersource = source
  setPedAnimation(playersource, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  local meat = getElementData(playersource, Item_RawMeat)
  setTimer(function()
    setElementData(playersource, Item_RawMeat, 0)
    setElementData(playersource, Item_CookedMeat, getElementData(playersource, Item_CookedMeat) + meat)
    triggerClientEvent(playersource, "displayClientInfo", playersource, "Fireplace", "Você cozinhou " .. meat .. " Carne Cozida.", 22, 255, 0)
  end, 5000, 1)
end
addEvent("addPlayerCookMeat", true)
addEventHandler("addPlayerCookMeat", getRootElement(), addPlayerCookMeat)


-- When player make a fire
function onPlayerMakeAFire(itemName)
  setElementData(source, Item_WoodPile, getElementData(source, Item_WoodPile) - 1)
  local x, y, z = getElementPosition(source)
  local xr, yr, zr = getElementRotation(source)
  px, py, pz = getElementPosition(source)
  prot = getPedRotation(source)
  local offsetRot = math.rad(prot + 90)
  local vx = px + 1 * math.cos(offsetRot)
  local vy = py + 1 * math.sin(offsetRot)
  local vz = pz + 2
  local vrot = prot + 90
  local wood = createObject(1463, vx, vy, pz - 0.75, xr, yr, vrot)
  setObjectScale(wood, 0.55)
  setElementCollisionsEnabled(wood, false)
  setElementFrozen(wood, true)
  local fire = createObject(3525, vx, vy, pz - 0.75, xr, yr, vrot)
  setObjectScale(fire, 0)
  local fireCol = createColSphere(x, y, z, 2)
  setElementData(fireCol, "parent", wood)
  setElementData(Item_WoodPile, "parent", fireCol)
  setElementData(fireCol, "fireplace", true)
  triggerClientEvent(source, "refreshInventoryManual", source)
  setPedAnimation(playersource, "BOMBER", "BOM_Plant", 2500, false, false, nil, false)
  setTimer(function()
    destroyElement(fireCol)
    destroyElement(fire)
    destroyElement(wood)
  end, 120000, 1)
end
addEvent("onPlayerMakeAFire", true)
addEventHandler("onPlayerMakeAFire", getRootElement(), onPlayerMakeAFire)


function onPlayerPlaceRoadflare(itemName)
  setElementData(source, itemName, getElementData(source, itemName) - 1)
  local x, y, z = getElementPosition(source)
  local object = createObject(354, x, y, z - 0.6)
  setTimer(destroyElement, 300000, 1, object)
  triggerClientEvent(source, "refreshInventoryManual", source)
end
addEvent("onPlayerPlaceRoadflare", true)
addEventHandler("onPlayerPlaceRoadflare", getRootElement(), onPlayerPlaceRoadflare)


function math.round(number, decimals, method)
  decimals = decimals or 0
  local factor = 10 ^ decimals
  if method == "ceil" or method == "floor" then
    return math[method](number * factor) / factor
  else
    -- return tonumber("%." .. decimals .. "f":format(number))
  end
end


-- Send local messages (Local Chat)
local chatRadius = 15
local chatEadioRadius = 3200

function sendMessageToNearbyPlayers(message, messageType)
  cancelEvent()
  if messageType == 0 then
    local posX, posY, posZ = getElementPosition(source)
    local chatSphere = createColSphere(posX, posY, posZ, chatRadius)
    local nearbyPlayers = getElementsWithinColShape(chatSphere, "player")
    destroyElement(chatSphere)
	local time = getRealTime()
    for index, nearbyPlayer in ipairs(nearbyPlayers) do
      outputChatBox("["..time.hour..":"..time.minute.."][LOCAL]" .. string.gsub(getPlayerName(source) .. ": " .. message, "#%x%x%x%x%x%x", ""), nearbyPlayer, 211, 211, 211, true)
    end
  end
end
addEventHandler("onPlayerChat", getRootElement(), sendMessageToNearbyPlayers)


-- Send radio messages (Radio Chat)
local isNotSpamming = true
function playerRadioChat(playersource, cmd, ...)
	if cmd == "radiochat" then
		if isNotSpamming == true then
			local msg2 = table.concat({
			  ...
			}, " ")
			if (getElementData(playersource, Item_Radio) or 0) <= 0 then
			  outputChatBox(shownInfos.noradio, playersource)
			  isNotSpamming = false
			  setTimer(function ()
				isNotSpamming = true
			  end, 3000, 0)
			  return
			end
			local posX, posY, posZ = getElementPosition(playersource)
			local chatSphere = createColSphere(posX, posY, posZ, chatEadioRadius)
			local nearbyPlayers = getElementsWithinColShape(chatSphere, "player")
			destroyElement(chatSphere)
			for index, nearbyPlayer in ipairs(nearbyPlayers) do
			  if getElementData(nearbyPlayer, Item_Radio) > 0 then
				outputChatBox("[RÁDIO]" .. string.gsub(getPlayerName(playersource) .. ": " .. msg2, "#%x%x%x%x%x%x", ""), nearbyPlayer, 238, 238, 0, true)
			  end
			end
			isNotSpamming = false
			setTimer(function ()
				isNotSpamming = true
			end, 3000, 0)
		end
	end
end
addCommandHandler("radiochat", playerRadioChat)


function blockChatMessage(m, mt)
  if mt == 1 then
    cancelEvent()
  end
end
addEventHandler("onPlayerChat", getRootElement(), blockChatMessage)


function checkBandit()
  for i, player in ipairs(getElementsByType("player")) do
    if getElementData(player, "logedin") then
      local current = getElementData(player, "skin")
      if getElementData(player, "bandit") then
        if current == 179 or current == 287 then
          setElementModel(player, 288)
        elseif current == 73 then
          setElementModel(player, 180)
        end
      elseif getElementData(player, "humanity") == 5000 then
        if current == 73 or current == 179 or current == 287 then
          setElementModel(player, 210)
        end
      else
        setElementModel(player, getElementData(player, "skin"))
      end
    end
  end
end
setTimer(checkBandit, 20000, 0)
local infoTimer = 240000


function outputInfo1()
  for i, player in ipairs(getElementsByType("player")) do
    triggerClientEvent(player, "displayClientInfo", player, "Info", "Você pode usar o scroll do mouse ou '-' para realizar certas ações", 200, 200, 22)
  end
  setTimer(outputInfo2, infoTimer, 1)
end
setTimer(outputInfo1, infoTimer, 1)


function outputInfo2()
  for i, player in ipairs(getElementsByType("player")) do
    triggerClientEvent(player, "displayClientInfo", player, "Info", "Precisa de ajuda? Pressione 'o' (esconda-se primeiro)", 200, 200, 22)
  end
  setTimer(outputInfo3, infoTimer, 1)
end


function outputInfo3()
  for i, player in ipairs(getElementsByType("player")) do
    triggerClientEvent(player, "displayClientInfo", player, "Info", "Conheça nosso site: www.mta-deadwalkers.com", 200, 200, 22)
  end
  setTimer(outputInfo4, infoTimer, 1)
end


function outputInfo4()
  for i, player in ipairs(getElementsByType("player")) do
    triggerClientEvent(player, "displayClientInfo", player, "Info", "Você pode habilitar & desabilitar o painel de informações apertando F5", 200, 200, 22)
  end
  setTimer(outputInfo5, infoTimer, 1)
end


function outputInfo5()
  for i, player in ipairs(getElementsByType("player")) do
    triggerClientEvent(player, "displayClientInfo", player, "Info", "Staff(s) online(s): " .. getTeamMemberOnline(), 200, 200, 22)
  end
  setTimer(outputInfo1, infoTimer, 1)
end


function getTeamMemberOnline()
  theTableMembersOnline = ""
  for i, player in ipairs(getElementsByType("player")) do
    local account = getPlayerAccount(player)
    if not isGuestAccount(account) and (getElementData(player, "DW-Administrador") or getElementData(player, "DW-Moderador")) then
      theTableMembersOnline = theTableMembersOnline .. "," .. getPlayerName(player)
    end
  end
  if theTableMembersOnline == "" then
    return "Ninguém"
  else
    return theTableMembersOnline
  end
end


function getPlayerWildcard(namePart)
  namePart = string.lower(namePart)
  local bestaccuracy = 0
  local foundPlayer, b, e
  for _, player in ipairs(getElementsByType("player")) do
    b, e = string.find(string.lower(string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", "")), namePart)
    if b and e and bestaccuracy < e - b then
      bestaccuracy = e - b
      foundPlayer = player
    end
  end
  if foundPlayer then
    return foundPlayer
  else
    return false
  end
end



function setGroup(playersource, command, teamName, targetString)
  if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(playersource)), aclGetGroup("DW-Administrador")) then
    do
      local foundTargetPlayer = getPlayerWildcard(targetString)
      if foundTargetPlayer then
        if teamName ~= "DW-Administrador" and teamName ~= "DW-Moderador" and teamName ~= "DW-Ajudante" then
          if teamName == "remover" then
          else
            outputChatBox("#FFFFFFSintaxe correta: admin, supporter ou remover!", playersource, 27, 89, 224, true)
            return
          end
        end
        if teamName == "remover" then
          value = false
          account = getPlayerAccount(foundTargetPlayer)
          setAccountData(account, "DW-Administrador", value)
          setAccountData(account, "DW-Moderador", value)
		  setAccountData(account, "DW-Ajudante", value)
          setElementData(foundTargetPlayer, "DW-Administrador", value)
          setElementData(foundTargetPlayer, "DW-Moderador", value)
		  setElementData(foundTargetPlayer, "DW-Ajudante", value)
        else
          value = true
        end
        account = getPlayerAccount(foundTargetPlayer)
        accountname = getAccountName(account)
        setAccountData(account, teamName, value)
        setElementData(foundTargetPlayer, teamName, value)
        if value == true then
          outputChatBox("#FFFFFF" .. getPlayerName(foundTargetPlayer) .. " #FF0000 agora é um " .. teamName .. "!", getRootElement(), 27, 89, 224, true)
        else
          outputChatBox("#FFFFFF" .. getPlayerName(foundTargetPlayer) .. " #FF0000 perdeu seu cargo...", getRootElement(), 27, 89, 224, true)
        end
      else
        outputChatBox("#FFFFFFJogador não encontrado! Você digitou o nome corretamente?", playersource, 27, 89, 224, true)
      end
    end
  else
    outputChatBox("#FFFFFFVocê não é administrador!", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("add", setGroup)



-- Ban a player // Bane um jogador
function banPLayer(playersource, command, targetString, banTime, reason)
  if getAccountData(getPlayerAccount(playersource), "DW-Administrador") == true or getAccountData(getPlayerAccount(playersource), "DW-Moderador") == true then
    do
      local foundTargetPlayer = getPlayerWildcard(targetString)
      local banTime = banTime or 0
      local reason = reason or "Desconhecido"
      if foundTargetPlayer then
        do
          local account = getPlayerAccount(foundTargetPlayer)
          local ip = getPlayerIP(foundTargetPlayer)
          local serial = getPlayerSerial(foundTargetPlayer)
          local name = getPlayerName(foundTargetPlayer)
          kickPlayer(foundTargetPlayer, playersource, reason)
          addBan(ip, name, serial, playersource, reason, banTime * 86400)
          outputChatBox("#FFFFFF" .. name .. " #FF0000 foi banido(a) por " .. banTime .. " Day(Z)'s.", getRootElement(), 27, 89, 224, true)
        end
      else
        outputChatBox("#FFFFFFJogador não encontrado! Você digitou o nome corretamente?", playersource, 27, 89, 224, true)
      end
    end
  else
    outputChatBox("#FFFFFFVocê não é administrador!", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("banir", banPLayer)



-- Show a message from administration to all players // Mostra uma mensagem da administração para todos os jogadores
function pmsgAdmin(playersource, command, ...)
  local msg = table.concat({
    ...
  }, " ")
  if getAccountData(getPlayerAccount(playersource), "DW-Administrador") == true then
    outputChatBox("[STAFF] " .. getPlayerName(playersource) .. ": " .. msg, getRootElement(), 60, 200, 40, true)
  else
    outputChatBox("#FFFFFFVocê não é administrador! ", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("aviso", pmsgAdmin)



botSupportTable = {
  {
    "website",
    "what",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "website",
    "where",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "website",
    "which",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "website",
    "how",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "website",
    "got",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "website",
    "know",
    "",
    "URL: www.mta-deadwalkers.com.",
    "",
    "James"
  },
  {
    "hey",
    "james",
    "",
    "Hey.",
    "",
    "James"
  },
  {
    "hey",
    "paul",
    "",
    "Yo!.",
    "",
    "Paul"
  },
  {
    "hey",
    "sandra",
    "",
    "Hello.",
    "",
    "Sandra"
  },
  {
    "how are",
    "you",
    "james",
    "I am fine, thank you.",
    "",
    "James"
  },
  {
    "how are",
    "you",
    "paul",
    "Feeling absolutely splendid today, why, thanks!",
    "",
    "Paul"
  },
  {
    "how are",
    "you",
    "sandra",
    "I am perfectly fine.",
    "",
    "Sandra"
  },
  {
    "i love",
    "you",
    "sandra",
    "ERROR: Can't access emotions.exe.",
    "Thanks.",
    "Sandra"
  },
  {
    "thank",
    "you",
    "james",
    "You are welcome.",
    "",
    "James"
  },
  {
    "thank",
    "paul",
    "you",
    "Hey, that's my job!",
    "",
    "Paul"
  },
  {
    "thank",
    "sandra",
    "you",
    "You are welcome.",
    "",
    "Sandra"
  },
  {
    "como",
    "usar",
    Item_Map,
    "Aperte F11 para usar o Mapa.",
    "",
    "Robô"
  },
  {
    "como",
    "usar",
    Item_GPS,
    "O GPS é ativado automaticamente. Veja-o no canto inferior esquerdo da tela.",
    "",
    "Robô"
  },
  {
    "como",
    "pegar",
    "itens",
    "Press 'J' to open your inventory. Alternatively, you can press the middle mouse button or '-' to pick items up.",
    "",
    "Robô"
  },
  {
    "how",
    "open",
    "inven",
    "By pressing 'J', you can open your inventory.",
    "",
    "James"
  },
  {
    "drop",
    "item",
    "",
    "Press 'J' to open your inventory, select the item you want to drop and press the arrow pointing to the left.",
    "",
    "Paul"
  },
  {
    "fuel",
    "car",
    "how",
    "You need an 'Empty Gas Canister'. You can fill it at a gas station.",
    "",
    "Sandra"
  },
  {
    "pick",
    "items",
    "how",
    "Press the middle mouse button (or '-') when the name of the item is written on the left of your screen.",
    "",
    "Sandra"
  },
  {
    "fence",
    "wire",
    "destroy",
    "You need a toolbox to destroy a wirefence.",
    "",
    "James"
  },
  {
    "register",
    "how",
    "to",
    "You need to fill in your name and password. Afterwards, press 'Register'. If it doesn't work, reconnect.",
    "",
    "James"
  },
  {
    "bugged",
    "stuck",
    "help",
    "Wait until an admin contacts and helps you.",
    "",
    "Sandra"
  },
  {
    Item_Radio,
    "chat",
    "",
    "Pressione 'Z' para usar o Rádio.",
    "",
    "James"
  }
}

function botCheck(text, player)
  for i, data in ipairs(botSupportTable) do
    if string.find(text:lower(), data[1]:lower(), 1, true) and string.find(text:lower(), data[2]:lower(), 1, true) and string.find(text:lower(), data[3]:lower(), 1, true) then
      answere = data[4]
      if data[5] ~= "" then
        local randomNumber = math.random(4, 5)
        answere = data[randomNumber]
      end
      setTimer(onServerSupportChatMessage, math.random(3000, 6000), 1, data[6], string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", "") .. ", " .. answere)
    end
  end
end

function onServerSupportChatMessage(player2, text)
  notGoOn = false
  mutedmessage = false
  for i, player in ipairs(getElementsByType("player")) do
    if player2 == "Sandra" or player2 == "James" or player2 == "Paul" then
      triggerClientEvent(player, "onSupportChatMessage", player, player2, text)
      notGoOn = true
    elseif (getElementData(player, "DW-Ajudante") or getElementData(player, "DW-Moderador") or getElementData(player, "DW-Administrador")) and not getElementData(player2, "DW-Administrador") and not getElementData(player2, "DW-Moderador") and not getElementData(player2, "DW-Ajudante") and not isPlayerMuted(player2) then
      outputChatBox("#E01BBCNova mensagem de suporte por " .. getPlayerName(player2) .. ". Visualize-a pressionando 'o'", player, 255, 255, 255, true)
    end
    if not notGoOn then
      if not isPlayerMuted(player2) then
        triggerClientEvent(player, "onSupportChatMessage", player, player2, text)
      else
        mutedmessage = true
      end
    end
  end
  if not notGoOn then
    botCheck(text, player2)
  end
  if mutedmessage then
    outputChatBox("#2200ddYou are muted!", player2, 255, 255, 255, true)
  end
end
addEvent("onServerSupportChatMessage", true)
addEventHandler("onServerSupportChatMessage", getRootElement(), onServerSupportChatMessage)
setWeaponProperty("M4", "poor", "maximum_clip_ammo", 30)
setWeaponProperty("M4", "std", "maximum_clip_ammo", 30)
setWeaponProperty("M4", "pro", "maximum_clip_ammo", 30)


function kickPLayer(playersource, command, targetString, banTime, reason)
  if getAccountData(getPlayerAccount(playersource), "DW-Administrador") == true then
    for i, player in ipairs(getElementsByType("player")) do
      if player ~= playersource then
        kickPlayer(player, "Estamos reiniciando o servidor #ManutençãoUrgente")
      end
    end
  else
    outputChatBox("#FFFFFFVocê não é administrador! ", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("kickplayer", banPLayer)


function kickAll(playersource, command, reason)
  if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(playersource)), aclGetGroup("DW-Administrador")) then
    for i, player in ipairs(getElementsByType("player")) do
      if player == playersource then
        break
      end
      kickPlayer(player, reason)
    end
  else
    outputChatBox("#FFFFFFVocê não é administrador!", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("kickall", kickAll)


local supporterMode = {}
local foodd = {}
local thirstt = {}
function Supportermode(playersource, command)
  if getAccountData(getPlayerAccount(playersource), "DW-Ajudante") == true or getAccountData(getPlayerAccount(playersource), "DW-Moderador") == true or getAccountData(getPlayerAccount(playersource), "DW-Administrador") == true then
    if not supporterMode[playersource] then
      -- unhandled boolean indicator
    else
    end
    supporterMode[playersource] = true
    if supporterMode[playersource] then
      setElementAlpha(playersource, 0)
      setElementFrozen(playersource, true)
      foodd[playersource] = getElementData(playersource, "food")
      thirstt[playersource] = getElementData(playersource, "thirst")
    else
      setElementAlpha(playersource, 255)
      setElementFrozen(playersource, false)
    end
  else
    outputChatBox("#FFFFFFVocê não é autorizado a utilizar este comando!", playersource, 27, 89, 224, true)
  end
end
addCommandHandler("modoajuda", Supportermode)


function StatsSupportermode()
  for i, player in ipairs(getElementsByType("player")) do
    if supporterMode[player] then
      setElementData(player, "food", foodd[player])
      setElementData(player, "thirst", thirstt[player])
    end
  end
end
setTimer(StatsSupportermode, 60000, 0)


function preventCommandSpam(commandName)
  if commandName == "login" or commandName == "logout" then
    cancelEvent()
  end
end
addEventHandler("onPlayerCommand", root, preventCommandSpam)


function kickPlayerOnHighPing()
  outputChatBox(getPlayerName(source) .. " foi kickado por estar com o PING muito alto!", getRootElement(), 27, 89, 224, true)
  kickPlayer(source, "Seu PING está acima do permitido.")
end
addEvent("kickPlayerOnHighPing", true)
addEventHandler("kickPlayerOnHighPing", getRootElement(), kickPlayerOnHighPing)


local handsUp = false
local siting = false
local lying = false


function funcBindHandsup(player, key, keyState)

	if getElementData(player, "isrepairing") == true then
		return
	end
	
	if handsUp then
		setPedAnimation(player, false)
		handsUp = false
	else
		if isPedInVehicle(player) then
			return
		end
	setPedAnimation(player, "SHOP", "SHP_Rob_HandsUp", nil, true, true, false, false)
    handsUp = true
	end
	
end


function funcBindSit(player, key, keyState)

	if getElementData(player, "isrepairing") == true then
		return
	end

	if siting then
		setPedAnimation(player, false)
		siting = false
	else
		if isPedInVehicle(player) then
			return
		end
    setPedAnimation(player, "BEACH", "ParkSit_M_loop", nil, true, false, false, false)
    siting = true
	end
	
end


-- This function makes the animation of sleep // Essa função faz a animação de ficar no chão
function funcBindLie(player, key, keyState)

	if getElementData(player, "isrepairing") == true then
		return
	end

	if lying then
		setPedAnimation(player, false)
		setElementData(player, "lying", false)
		lying = false
	else
		if isPedInVehicle(player) then
			return
		end
		setPedAnimation(player, "WUZI", "CS_Dead_Guy", -1, false, false, false, true)
		setElementData(player, "lying", true)
		lying = true
	
		--[[
		if lying then
			setTimer (function()
				outputChatBox("Cheguei no progress")
				setPedAnimationProgress(player, "CS_Dead_Guy", 0.48)
			end, 500, 1)
		end
		]]

	end
end


function bindTheKeys()
  bindKey(source, ",", "down", funcBindHandsup)
  bindKey(source, ".", "down", funcBindSit)
  bindKey(source, "l", "down", funcBindLie)
end
addEventHandler("onPlayerLogin", getRootElement(), bindTheKeys)

function bindTheKeys2()
	for i, player in ipairs(getElementsByType("player")) do
		bindKey(player, ",", "down", funcBindHandsup)
		bindKey(player, ".", "down", funcBindSit)
		bindKey(player, "l", "down", funcBindLie)
	end
end
addEventHandler("onResourceStart", resourceRoot, bindTheKeys2)


function makeRadioStayOff()
  setRadioChannel(0)
  cancelEvent()
end
addEventHandler("onClientPlayerVehicleEnter", getRootElement(), makeRadioStayOff)
addEventHandler("onClientPlayerRadioSwitch", getRootElement(), makeRadioStayOff)


-- Set admin as god // Define administrador como Deus
function f_setGodAdministrator()
	-- source: the player
	local pAccount = getPlayerAccount(source)
	if not isGuestAccount(pAccount) then
		local pAccountName = getAccountName(pAccount)
		if pAccountName then
			local isAdministrator = isObjectInACLGroup("user." .. pAccountName, aclGetGroup("DW-Administrador"))
			if isAdministrator then
				setElementData(source, "cold", false)
				setElementData(source, "brokenbone", false)
				setElementData(source, "pain", false)
				setElementData(source, "bleeding", 0)
				setElementData(source, "temperature", 36)
				setElementData(source, "blood", 1200000)
				setElementData(source, "thirst", 100)
				setElementData(source, "food", 100)
				setElementData(source, "alivetime", 1)
				setElementData(source, "murders", 0)
			end
		end
	end
end
addEvent("e_onSetGodAdministrator", true)
addEventHandler("e_onSetGodAdministrator", getRootElement(), f_setGodAdministrator)


-- Vehicle lights stats // Farol dos veículos
addEventHandler ( "onResourceStart", resourceRoot, function()
	local players = getElementsByType ( "player" )
	for k,v in ipairs(players) do
	    bindKey ( v, "l", "down", toggleVehicleLights, "Lights on/off" )
	end 
end)

addEventHandler ( "onPlayerJoin", root, function()
    bindKey ( source, "l", "down", toggleVehicleLights, "Lights on/off" )
end)

addEventHandler ( "onPlayerVehicleEnter", root, function(vehicle, seat, jacked)
	outputChatBox ( "#FF6A00Pressione #FFFFFF'L' #FF6A00quando estiver dentro de um veículo para ligar/desligar as luzes.", source, 205, 106, 0, true )
end)

function toggleVehicleLights ( player, key, state )
	if ( getPedOccupiedVehicleSeat ( player ) == 0 ) then
		local veh = getPedOccupiedVehicle ( player )
		if ( getVehicleOverrideLights ( veh ) ~= 2 ) then
			setVehicleOverrideLights ( veh, 2 )
		else
			setVehicleOverrideLights ( veh, 1 )
		end
	end
end