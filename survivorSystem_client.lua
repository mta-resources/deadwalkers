
-- Cria texto no canto da tela, logo acima da versão
--[[
addEventHandler("onClientResourceStart", getResourceRootElement(), function()
  dayzVersion = "Dead Walkers | chromegames.com.br"
  versionLabel = guiCreateLabel(1, 1, 0.3, 0.3, dayzVersion, true)
  guiSetSize(versionLabel, guiLabelGetTextExtent(versionLabel), guiLabelGetFontHeight(versionLabel), false)
  x, y = guiGetSize(versionLabel, true)
  guiSetPosition(versionLabel, 1 - x, 1 - y * 1.8, true)
  guiSetAlpha(versionLabel, 0.5)
end)
]]

--[[
addEventHandler("onClientResourceStart", getResourceRootElement(), function()
	svText	= "Dead Walkers | Brasil & Portugal | outset-gaming.com.br |"
	sWidth, sHeight = guiGetScreenSize()
	svLabel = guiCreateLabel(sWidth-400, sHeight-16, 400, 25, svText, false)
	guiSetAlpha(svLabel, 0.5)
end)
]]

-- Dead Walkers text
addEventHandler("onClientResourceStart", getResourceRootElement(), function()
	svText	= "Dead Walkers | Brasil & Portugal | mta-deadwalkers.com |"
	sWidth, sHeight = guiGetScreenSize()
	svLabel = guiCreateLabel(sWidth-400, sHeight-16, 400, 25, svText, false)
	guiSetAlpha(svLabel, 0.5)
end)



-- Substitui as skins
snipertxd = engineLoadTXD("mods/ghillie_desert.txd")
			engineImportTXD(snipertxd, 285)
sniperdff = engineLoadDFF("mods/ghillie_desert.dff", 285)
			engineReplaceModel(sniperdff, 285)

snipertxd = engineLoadTXD("mods/ghillie_forest.txd")
			engineImportTXD(snipertxd, 284)
sniperdff = engineLoadDFF("mods/ghillie_forest.dff", 284)
			engineReplaceModel(sniperdff, 284)
			
snipertxd = engineLoadTXD("mods/army.txd")
			engineImportTXD(snipertxd, 287)
sniperdff = engineLoadDFF("mods/army.dff", 287)
			engineReplaceModel(sniperdff, 287)

snipertxd = engineLoadTXD("mods/civilian.txd")
			engineImportTXD(snipertxd, 179)
sniperdff = engineLoadDFF("mods/civilian.dff", 179)
			engineReplaceModel(sniperdff, 179)
			
snipertxd = engineLoadTXD("mods/bandit1.txd")
			engineImportTXD(snipertxd, 180)
sniperdff = engineLoadDFF("mods/bandit1.dff", 180)
			engineReplaceModel(sniperdff, 180)

snipertxd = engineLoadTXD("mods/bandit2.txd")
			engineImportTXD(snipertxd, 288)
sniperdff = engineLoadDFF("mods/bandit2.dff", 288)
			engineReplaceModel(sniperdff, 288)
			
snipertxd = engineLoadTXD("mods/standart.txd")
			engineImportTXD(snipertxd, 73)
sniperdff = engineLoadDFF("mods/standart.dff", 73)
			engineReplaceModel(sniperdff, 73)
			
snipertxd = engineLoadTXD("mods/femalestandard.txd")
			engineImportTXD(snipertxd, 191)
sniperdff = engineLoadDFF("mods/femalestandard.dff", 191)
			engineReplaceModel(sniperdff, 191)
			
snipertxd = engineLoadTXD("mods/hero.txd")
			engineImportTXD(snipertxd, 210)
sniperdff = engineLoadDFF("mods/hero.dff", 210)
			engineReplaceModel(sniperdff, 210)
			
snipertxd = engineLoadTXD("mods/staff.txd")
			engineImportTXD(snipertxd, 217)


-- Substitui os ítens		
itemTXD =	engineLoadTXD("items/armor_clothes.txd")
			engineImportTXD(itemTXD, 1272)
itemDFF =	engineLoadDFF("items/armor_clothes.dff", 1272)
			engineReplaceModel(itemDFF, 1272)
	
itemTXD = 	engineLoadTXD("items/army_clothes.txd")
			engineImportTXD(itemTXD, 1247)
itemDFF = 	engineLoadDFF("items/army_clothes.dff", 1247)
			engineReplaceModel(itemDFF, 1247)
			
itemTXD = 	engineLoadTXD("items/sniper_clothes.txd")
			engineImportTXD(itemTXD, 1213)
itemDFF = 	engineLoadDFF("items/sniper_clothes.dff", 1213)
			engineReplaceModel(itemDFF, 1213)
			
itemTXD = 	engineLoadTXD("items/civilian_clothes.txd")
			engineImportTXD(itemTXD, 1241)
itemDFF = 	engineLoadDFF("items/civilian_clothes.dff", 1241)
			engineReplaceModel(itemDFF, 1241)
			
itemTXD = 	engineLoadTXD("items/standard_clothes.txd")
			engineImportTXD(itemTXD, 1577)
itemDFF = 	engineLoadDFF("items/standard_clothes.dff", 1577)
			engineReplaceModel(itemDFF, 1577)
			
itemTXD = 	engineLoadTXD("items/beans_can.txd")
			engineImportTXD(itemTXD, 2601)
itemDFF = 	engineLoadDFF("items/beans_can.dff", 2601)
			engineReplaceModel(itemDFF, 2601)
			
itemTXD = 	engineLoadTXD("items/first_aid_kit.txd")
			engineImportTXD(itemTXD, 2891)
itemDFF = 	engineLoadDFF("items/first_aid_kit.dff", 2891)
			engineReplaceModel(itemDFF, 2891)
			
itemTXD = 	engineLoadTXD("items/gps.txd")
			engineImportTXD(itemTXD, 2976)
itemDFF = 	engineLoadDFF("items/gps.dff", 2976)
			engineReplaceModel(itemDFF, 2976)
			
itemTXD = 	engineLoadTXD("items/heat_pack.txd")
			engineImportTXD(itemTXD, 1576)
itemDFF = 	engineLoadDFF("items/heat_pack.dff", 1576)
			engineReplaceModel(itemDFF, 1576)
			
itemTXD = 	engineLoadTXD("items/map.txd")
			engineImportTXD(itemTXD, 1277)
itemDFF = 	engineLoadDFF("items/map.dff", 1277)
			engineReplaceModel(itemDFF, 1277)
			
itemTXD = 	engineLoadTXD("items/pain_killers.txd")
			engineImportTXD(itemTXD, 2709)
itemDFF = 	engineLoadDFF("items/pain_killers.dff", 2709)
			engineReplaceModel(itemDFF, 2709)
			
itemTXD = 	engineLoadTXD("items/pasta_can.txd")
			engineImportTXD(itemTXD, 2770)
itemDFF = 	engineLoadDFF("items/pasta_can.dff", 2770)
			engineReplaceModel(itemDFF, 2770)
			
itemTXD = 	engineLoadTXD("items/pistol_ammo.txd")
			engineImportTXD(itemTXD, 3013)
itemDFF = 	engineLoadDFF("items/pistol_ammo.dff", 3013)
			engineReplaceModel(itemDFF, 3013)
			
itemTXD = 	engineLoadTXD("items/shotgun_ammo.txd")
			engineImportTXD(itemTXD, 2358)
itemDFF = 	engineLoadDFF("items/shotgun_ammo.dff", 2358)
			engineReplaceModel(itemDFF, 2358)
			
itemTXD = 	engineLoadTXD("items/backpack_small.txd")
			engineImportTXD(itemTXD, 3026)
itemDFF = 	engineLoadDFF("items/backpack_small.dff", 3026)
			engineReplaceModel(itemDFF, 3026)
			
itemTXD = 	engineLoadTXD("items/smg_ammo.txd")
			engineImportTXD(itemTXD, 2041)
itemDFF = 	engineLoadDFF("items/smg_ammo.dff", 2041)
			engineReplaceModel(itemDFF, 2041)
			
itemTXD = 	engineLoadTXD("items/sniper_ammo.txd")
			engineImportTXD(itemTXD, 2358)
itemDFF = 	engineLoadDFF("items/sniper_ammo.dff", 2358)
			engineReplaceModel(itemDFF, 2358)
			
itemTXD = 	engineLoadTXD("items/soda_can.txd")
			engineImportTXD(itemTXD, 2647)
itemDFF = 	engineLoadDFF("items/soda_can.dff", 2647)
			engineReplaceModel(itemDFF, 2647)
			
itemTXD = 	engineLoadTXD("items/water_bottle.txd")
			engineImportTXD(itemTXD, 2683)
itemDFF = 	engineLoadDFF("items/water_bottle.dff", 2683)
			engineReplaceModel(itemDFF, 2683)
			
itemTXD = 	engineLoadTXD("items/assault_ammo.txd")
			engineImportTXD(itemTXD, 1271)
itemDFF = 	engineLoadDFF("items/assault_ammo.dff", 1271)
			engineReplaceModel(itemDFF, 1271)
			
itemTXD = 	engineLoadTXD("items/backpack_alice.txd")
			engineImportTXD(itemTXD, 1248)
itemDFF = 	engineLoadDFF("items/backpack_alice.dff", 1248)
			engineReplaceModel(itemDFF, 1248)

itemTXD =	 engineLoadTXD("items/backpack_coyote.txd")
			engineImportTXD(itemTXD, 1252)
itemDFF = 	engineLoadDFF("items/backpack_coyote.dff", 1252)
			engineReplaceModel(itemDFF, 1252)
			
itemTXD = 	engineLoadTXD("items/backpack_czech.txd")
			engineImportTXD(itemTXD, 1575)
itemDFF = 	engineLoadDFF("items/backpack_czech.dff", 1575)
			engineReplaceModel(itemDFF, 1575)
			
itemTXD =	 engineLoadTXD("items/tent.txd")
			engineImportTXD(itemTXD, 3243)
itemDFF = 	engineLoadDFF("items/tent.dff", 3243)
			engineReplaceModel(itemDFF, 3243)

itemTXD = 	engineLoadTXD("items/watch.txd")
			engineImportTXD(itemTXD, 2710)
itemDFF = 	engineLoadDFF("items/watch.dff", 2710)
			engineReplaceModel(itemDFF, 2710)
			
itemTXD = 	engineLoadTXD("items/wirefence.txd")
			engineImportTXD(itemTXD, 983)
itemDFF = 	engineLoadDFF("items/wirefence.dff", 983)
			engineReplaceModel(itemDFF, 983)

itemTXD = 	engineLoadTXD("items/wirefence_pickup.txd")
			engineImportTXD(itemTXD, 933)
itemDFF = 	engineLoadDFF("items/wirefence_pickup.dff", 933)
			engineReplaceModel(itemDFF, 933)


weaponTXD = engineLoadTXD("items/camera.txd")
			engineImportTXD(weaponTXD, 367)
weaponDFF = engineLoadDFF("items/camera.dff", 367)
			engineReplaceModel(weaponDFF, 367)
			
weaponTXD = engineLoadTXD("items/katana.txd")
			engineImportTXD(weaponTXD, 339)
weaponDFF = engineLoadDFF("items/katana.dff", 339)
			engineReplaceModel(weaponDFF, 339)


local screenWidth, screenHeight = guiGetScreenSize()
			
-- Funções para desabilitar alguns huds e itens na tela
function playerStatsClientSite()
  if getElementData(getLocalPlayer(), "logedin") then
    toggleControl("radar", false)
    showPlayerHudComponent("clock", false)
    showPlayerHudComponent("radar", false)
    showPlayerHudComponent("money", false)
    showPlayerHudComponent("health", false)
    showPlayerHudComponent("breath", false)
    if getElementData(getLocalPlayer(), Item_Map) >= 1 then
      toggleControl("radar", true)
    end
    if 1 <= getElementData(getLocalPlayer(), Item_GPS) then
      showPlayerHudComponent("radar", true)
    end
    if 1 <= getElementData(getLocalPlayer(), Item_Watch) then
      showPlayerHudComponent("clock", true)
    end
  end
end
setTimer(playerStatsClientSite, 1000, 0)
function playerZoom(key, keyState)
  if key == "n" then
    if getElementData(getLocalPlayer(), gameWeapons["NightVision"]["name"]) > 0 then
      if nightvision then
        nightvision = false
        setCameraGoggleEffect("normal")
        do
          local hour, minutes = getTime()
          if gameplayVariables.enablenight then
            setClientNight(hour, minutes)
          end
        end
      else
        nightvision = true
        setCameraGoggleEffect("nightvision")
        setFarClipDistance(1000)
      end
    end
  elseif key == "i" and 0 < getElementData(getLocalPlayer(), gameWeapons["Infrared"]["name"]) then
	
    if infaredvision then
      infaredvision = false
      setCameraGoggleEffect("normal")
	  if getElementData(localPlayer, "oldfogdistance") ~= nil and getElementData(localPlayer, "oldfogdistance") ~= false then
		setFogDistance(getElementData(localPlayer, "oldfogdistance"))
	  end
      if gameplayVariables.enablenight then
        setClientNight(hour, minutes)
      end
    else
      infaredvision = true
      setCameraGoggleEffect("thermalvision")
	  setElementData(localPlayer, "oldfogdistance", getFogDistance())
	  setFogDistance(160)
      if gameplayVariables.enablenight then
        setClientNight(hour, minutes)
      end
    end
  end
end
bindKey("n", "down", playerZoom)
bindKey("i", "up", playerZoom)


-- Define os horários para o DayZ
function setClientNight(hour, minutes)
	if hour == 21 then
		setSkyGradient(0, 100/minutes, 196/minutes, 136/minutes, 170/minutes, 212/minutes)
		setFarClipDistance(120+(880-minutes*14.6))
		setFogDistance(-150+(250-minutes*4.16))
	elseif hour == 7 then
		setSkyGradient( 0, 1.6*minutes, 196*3.26, 136*2.26, 170*2.83, 212*3.53 )
		setFarClipDistance(120+(minutes*14.6))
		setFogDistance(-150+(minutes*4.16))
	elseif hour == 22 or hour == 23 then
		setSkyGradient( 0, 0, 0, 0, 0, 0 )
		setFarClipDistance(360)
		setFogDistance(-50)
	elseif hour >= 0 and hour <= 7 then
		setSkyGradient( 0, 0, 0, 0, 0, 0 )
		setFarClipDistance(360)
		setFogDistance(-50)
		--setFarClipDistance(120)
		--setFogDistance(-150)
	else
		setSkyGradient(0, 100, 196, 136, 170, 212)
		setFarClipDistance(1000)
		setFogDistance(100)
	end
end


-- Não sei o que faz, hehe
function getGroundMaterial(x, y, z)
  local hit, hitX, hitY, hitZ, hitElement, normalX, normalY, normalZ, material = processLineOfSight(x, y, z, x, y, z - 10, true, false, false, true, false, false, false, false, nil)
  return material
end
function isInBuilding(x, y, z)
  local hit, hitX, hitY, hitZ, hitElement, normalX, normalY, normalZ, material = processLineOfSight(x, y, z, x, y, z + 10, true, false, false, true, false, false, false, false, nil)
  if hit then
    return true
  end
  return false
end


function isObjectAroundPlayer2(thePlayer, distance, height)
  material_value = 0
  local x, y, z = getElementPosition(thePlayer)
  for i = math.random(0, 360), 360 do
    local nx, ny = getPointFromDistanceRotation(x, y, distance, i)
    local hit, hitX, hitY, hitZ, hitElement, normalX, normalY, normalZ, material = processLineOfSight(x, y, z + height, nx, ny, z + height, true, false, false, false, false, false, false, false)
    if material == 0 then
      material_value = material_value + 1
    end
    if material_value > 40 then
      return 0, hitX, hitY, hitZ
    end
  end
  return false
end


function isObjectAroundPlayer(thePlayer, distance, height)
  local x, y, z = getElementPosition(thePlayer)
  for i = math.random(0, 360), 360 do
    local nx, ny = getPointFromDistanceRotation(x, y, distance, i)
    local hit, hitX, hitY, hitZ, hitElement, normalX, normalY, normalZ, material = processLineOfSight(x, y, z + height, nx, ny, z + height)
    if material == 0 then
      return material, hitX, hitY, hitZ
    end
  end
  return false
end


function getPointFromDistanceRotation(x, y, dist, angle)
  local a = math.rad(90 - angle)
  local dx = math.cos(a) * dist
  local dy = math.sin(a) * dist
  return x + dx, y + dy
end

-- Spawna os zumbis
function zombieSpawning()
  local x, y, z = getElementPosition(getLocalPlayer())
  local material, hitX, hitY, hitZ = isObjectAroundPlayer2(getLocalPlayer(), 30, 3)
  if material == 0 and not isInBuilding(x, y, z) then
    triggerServerEvent("createZomieForPlayer", getLocalPlayer(), hitX, hitY, hitZ)
  end
end
setTimer(zombieSpawning, 3000, 0)

-- Desativa os sons (vozes) dos pedestres (no caso, zumbis)
function stopZombieSound()
  local zombies = getElementsByType("ped")
  for theKey, theZomb in ipairs(zombies) do
    setPedVoice(theZomb, "PED_TYPE_DISABLED")
  end
end
setTimer(stopZombieSound, 5000, 0)

-- Altera as skins dos zumbis (instala as modificações)
local skin = engineLoadTXD("skins/22.txd")
			engineImportTXD(skin, 22)
			
local skin = engineLoadTXD("skins/56.txd")
			engineImportTXD(skin, 56)
			
local skin = engineLoadTXD("skins/67.txd")
engineImportTXD(skin, 67)
local skin = engineLoadTXD("skins/68.txd")
engineImportTXD(skin, 68)
local skin = engineLoadTXD("skins/69.txd")
engineImportTXD(skin, 69)
local skin = engineLoadTXD("skins/70.txd")
engineImportTXD(skin, 70)
local skin = engineLoadTXD("skins/84.txd")
engineImportTXD(skin, 84)
local skin = engineLoadTXD("skins/92.txd")
local skin = engineLoadTXD("skins/97.txd")
engineImportTXD(skin, 97)
local skin = engineLoadTXD("skins/105.txd")
engineImportTXD(skin, 105)
local skin = engineLoadTXD("skins/107.txd")
engineImportTXD(skin, 107)
local skin = engineLoadTXD("skins/108.txd")
engineImportTXD(skin, 108)
local skin = engineLoadTXD("skins/111.txd")
engineImportTXD(skin, 111)
local skin = engineLoadTXD("skins/126.txd")
engineImportTXD(skin, 126)
local skin = engineLoadTXD("skins/127.txd")
engineImportTXD(skin, 127)
local skin = engineLoadTXD("skins/128.txd")
engineImportTXD(skin, 128)
local skin = engineLoadTXD("skins/152.txd")
engineImportTXD(skin, 152)
local skin = engineLoadTXD("skins/162.txd")
engineImportTXD(skin, 162)
local skin = engineLoadTXD("skins/167.txd")
engineImportTXD(skin, 167)
local skin = engineLoadTXD("skins/188.txd")
engineImportTXD(skin, 188)
local skin = engineLoadTXD("skins/192.txd")
engineImportTXD(skin, 192)
local skin = engineLoadTXD("skins/195.txd")
engineImportTXD(skin, 195)
local skin = engineLoadTXD("skins/206.txd")
engineImportTXD(skin, 206)
local skin = engineLoadTXD("skins/209.txd")
engineImportTXD(skin, 209)
local skin = engineLoadTXD("skins/212.txd")
engineImportTXD(skin, 212)
local skin = engineLoadTXD("skins/229.txd")
engineImportTXD(skin, 229)
local skin = engineLoadTXD("skins/230.txd")
engineImportTXD(skin, 230)
local skin = engineLoadTXD("skins/258.txd")
engineImportTXD(skin, 258)
local skin = engineLoadTXD("skins/264.txd")
engineImportTXD(skin, 264)
local skin = engineLoadTXD("skins/274.txd")
engineImportTXD(skin, 274)
local skin = engineLoadTXD("skins/277.txd")
engineImportTXD(skin, 277)
local skin = engineLoadTXD("skins/280.txd")
engineImportTXD(skin, 280)

--[[function math.round(number, decimals, method)
  decimals = decimals or 0
  local factor = 10 ^ decimals
  if method == "ceil" or method == "floor" then
    return math[method](number * factor) / factor
  else
    return tonumber(("%." .. decimals .. "f"):format(number))
  end
end]]

function math.round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end




-- Painel de informações / Debug Monitor
statsLabel = {}

statsWindows = guiCreateStaticImage(0.78, 0.21, 0.21, 0.21, "images/scrollmenu_1.png",true)
guiSetAlpha(statsWindows,0.8)



if screenWidth == 800 and screenHeight == 600 then

	-- HUMANITY / HUMANIDADE
	statsLabel["humanity"] = guiCreateLabel(0.06, 0.05, 0.45, 0.12, "Humanidade:",true,statsWindows)
	guiSetFont (statsLabel["humanity"], "default-bold-small" )
	guiLabelSetColor(statsLabel["humanity"], 179, 102, 11)

	statsLabel["humanity1"] = guiCreateLabel(0.71, 0.05, 0.27, 0.12,  "2500", true, statsWindows)
	guiSetFont(statsLabel["humanity1"], "default-bold-small")
	setElementData(statsLabel["humanity1"],"identifikation","humanity")


	-- MURDERS / ASSASSINATOS
	statsLabel["murders"] = guiCreateLabel(0.06, 0.17, 0.45, 0.12, "Assassinatos:",true,statsWindows)
	guiSetFont (statsLabel["murders"], "default-bold-small" )
	guiLabelSetColor(statsLabel["murders"], 179, 102, 11)

	statsLabel["murders1"] = guiCreateLabel(0.71, 0.17, 0.27, 0.12,"0", true, statsWindows)
	guiSetFont(statsLabel["murders1"], "default-bold-small")
	setElementData(statsLabel["murders1"],"identifikation","murders")


	-- BANDITS KILLEDS / BANDIDOS MORTOS
	statsLabel["banditskilled"] = guiCreateLabel(0.06, 0.29, 0.55, 0.12,"Bandidos mortos:",true,statsWindows)
	guiSetFont (statsLabel["banditskilled"], "default-bold-small" )
	guiLabelSetColor(statsLabel["banditskilled"], 179, 102, 11)

	statsLabel["banditskilled1"] = guiCreateLabel(0.71, 0.29, 0.27, 0.12, "0", true, statsWindows)
	guiSetFont(statsLabel["banditskilled1"], "default-bold-small")
	setElementData(statsLabel["banditskilled1"],"identifikation","banditskilled")


	-- HEADSHOTS / TIROS NA CABEÇA
	statsLabel["headshots"] = guiCreateLabel(0.06, 0.41, 0.41, 0.12, "Headshots:",true,statsWindows)
	guiSetFont (statsLabel["headshots"], "default-bold-small" )
	guiLabelSetColor(statsLabel["headshots"], 179, 102, 11)

	statsLabel["headshots1"] = guiCreateLabel(0.71, 0.41, 0.27, 0.12, "0", true, statsWindows)
	guiSetFont(statsLabel["headshots1"], "default-bold-small")
	setElementData(statsLabel["headshots1"],"identifikation","headshots")


	-- ZOMBIES KILLEDS / ZUMBIS MORTOS
	statsLabel["zombieskilled"] = guiCreateLabel(0.06, 0.53, 0.52, 0.12, "Zumbis mortos:",true,statsWindows)
	guiSetFont (statsLabel["zombieskilled"], "default-bold-small" )
	guiLabelSetColor(statsLabel["zombieskilled"], 179, 102, 11)

	statsLabel["zombieskilled1"] = guiCreateLabel(0.71, 0.53, 0.27, 0.12, "0", true, statsWindows)
	guiSetFont(statsLabel["zombieskilled1"], "default-bold-small")
	setElementData(statsLabel["zombieskilled1"],"identifikation","zombieskilled")


	-- BLOOD / SANGUE
	statsLabel["blood"] = guiCreateLabel(0.06, 0.65, 0.41, 0.12, "Sangue:",true,statsWindows)
	guiSetFont (statsLabel["blood"], "default-bold-small" )
	guiLabelSetColor(statsLabel["blood"], 71, 136, 98)

	statsLabel["blood1"] = guiCreateLabel(0.58, 0.65, 0.36, 0.12,  "12000", true, statsWindows)
	guiSetFont(statsLabel["blood1"], "default-bold-small")
	guiLabelSetColor(statsLabel["blood1"], 255, 101, 102)
	setElementData(statsLabel["blood1"],"identifikation","blood")


	-- TEMPERATURE / TEMPERATURA
	statsLabel["temperature"] = guiCreateLabel(0.06, 0.75, 0.50, 0.12, "Temperatura:",true,statsWindows)
	guiSetFont (statsLabel["temperature"], "default-bold-small" )
	guiLabelSetColor(statsLabel["temperature"], 71, 136, 98)

	statsLabel["temperature1"] = guiCreateLabel(0.58, 0.75, 0.36, 0.12, "37°C", true, statsWindows)
	guiSetFont(statsLabel["temperature1"], "default-bold-small")
	guiLabelSetColor(statsLabel["temperature1"], 109, 136, 250)
	setElementData(statsLabel["temperature1"],"identifikation","temperature")
else
	-- DEBUG MONITOR / MONITOR DE INFORMAÇÕES
	--[[
	statsLabel["debug"] = guiCreateLabel(0.33, 0.00, 0.84, 0.10, "DEBUG MONITOR:", true, statsWindows)
	guiSetFont(statsLabel["debug"], "default-bold-small")
	guiLabelSetColor(statsLabel["debug"], 255, 255, 255)
	]]

	-- HUMANITY / HUMANIDADE
	statsLabel["humanity"] = guiCreateLabel(0.06, 0.10, 0.33, 0.10, "Humanidade:",true,statsWindows)
	guiSetFont (statsLabel["humanity"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["humanity"], 179, 102, 11)

	statsLabel["humanity1"] = guiCreateLabel(0.71, 0.10, 0.27, 0.10,  "2500", true, statsWindows)
	guiSetFont(statsLabel["humanity1"], "default-bold-small")
	setElementData(statsLabel["humanity1"],"identifikation","humanity")


	-- MURDERS / ASSASSINATOS
	statsLabel["murders"] = guiCreateLabel(0.06, 0.20, 0.41, 0.15, "Assassinatos:",true,statsWindows)
	guiSetFont (statsLabel["murders"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["murders"], 179, 102, 11)

	statsLabel["murders1"] = guiCreateLabel(0.71, 0.20, 0.27, 0.15,"0", true, statsWindows)
	guiSetFont(statsLabel["murders1"], "default-bold-small")
	setElementData(statsLabel["murders1"],"identifikation","murders")


	-- BANDITS KILLEDS / BANDIDOS MORTOS
	statsLabel["banditskilled"] = guiCreateLabel(0.06, 0.30, 0.45, 0.12,"Bandidos mortos:",true,statsWindows)
	guiSetFont (statsLabel["banditskilled"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["banditskilled"], 179, 102, 11)

	statsLabel["banditskilled1"] = guiCreateLabel(0.71, 0.30, 0.27, 0.09, "0", true, statsWindows)
	guiSetFont(statsLabel["banditskilled1"], "default-bold-small")
	setElementData(statsLabel["banditskilled1"],"identifikation","banditskilled")


	-- HEADSHOTS / TIROS NA CABEÇA
	statsLabel["headshots"] = guiCreateLabel(0.06, 0.40, 0.41, 0.12, "Headshots:",true,statsWindows)
	guiSetFont (statsLabel["headshots"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["headshots"], 179, 102, 11)

	statsLabel["headshots1"] = guiCreateLabel(0.71, 0.40, 0.27, 0.09, "0", true, statsWindows)
	guiSetFont(statsLabel["headshots1"], "default-bold-small")
	setElementData(statsLabel["headshots1"],"identifikation","headshots")


	-- ZOMBIES KILLEDS / ZUMBIS MORTOS
	statsLabel["zombieskilled"] = guiCreateLabel(0.06, 0.50, 0.41, 0.09, "Zumbis mortos:",true,statsWindows)
	guiSetFont (statsLabel["zombieskilled"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["zombieskilled"], 179, 102, 11)

	statsLabel["zombieskilled1"] = guiCreateLabel(0.71, 0.50, 0.27, 0.09, "0", true, statsWindows)
	guiSetFont(statsLabel["zombieskilled1"], "default-bold-small")
	setElementData(statsLabel["zombieskilled1"],"identifikation","zombieskilled")


	-- BLOOD / SANGUE
	statsLabel["blood"] = guiCreateLabel(0.06, 0.65, 0.41, 0.09, "Sangue:",true,statsWindows)
	guiSetFont (statsLabel["blood"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["blood"], 71, 136, 98)

	statsLabel["blood1"] = guiCreateLabel(0.58, 0.65, 0.36, 0.09,  "12000", true, statsWindows)
	guiSetFont(statsLabel["blood1"], "default-bold-small")
	guiLabelSetColor(statsLabel["blood1"], 255, 101, 102)
	setElementData(statsLabel["blood1"],"identifikation","blood")


	-- TEMPERATURE / TEMPERATURA
	statsLabel["temperature"] = guiCreateLabel(0.06, 0.73, 0.41, 0.09, "Temperatura:",true,statsWindows)
	guiSetFont (statsLabel["temperature"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["temperature"], 71, 136, 98)

	statsLabel["temperature1"] = guiCreateLabel(0.585, 0.73, 0.36, 0.09, "37°C", true, statsWindows)
	guiSetFont(statsLabel["temperature1"], "default-bold-small")
	guiLabelSetColor(statsLabel["temperature1"], 109, 136, 250)
	setElementData(statsLabel["temperature1"],"identifikation","temperature")


	-- PLAYER NAME / NOME DO JOGADOR
	statsLabel["name"] = guiCreateLabel(0.06, 0.81, 0.27, 0.09, "Nome:", true, statsWindows)
	guiSetFont (statsLabel["name"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["name"], 71, 136, 98)

	statsLabel["name1"] = guiCreateLabel(0.58, 0.81, 0.31, 0.09, ""..getPlayerName(getLocalPlayer()),true,statsWindows)
	guiSetFont (statsLabel["name1"], "default-bold-small" )
	--guiLabelSetColor(statsLabel["name1"], 51, 225, 28)
	setElementData(statsLabel["name1"],"identifikation","name")
end





if getElementData(localPlayer,"logedin") then
    guiSetVisible(statsWindows,true)
else
    guiSetVisible(statsWindows,false)
end

function showDebugMonitor ()
    local visible = guiGetVisible(statsWindows)
    guiSetVisible(statsWindows,not visible)
end
bindKey("F5","down",showDebugMonitor)

function showDebugMintorOnLogin ()
    guiSetVisible(statsWindows,true)
end
addEvent("onClientPlayerDayZLogin", true)
addEventHandler("onClientPlayerDayZLogin", root, showDebugMintorOnLogin)

function refreshDebugMonitor()
    if getElementData(getLocalPlayer(),"logedin") then
    local value = getElementData(getLocalPlayer(),getElementData(statsLabel["zombieskilled1"],"identifikation"))
        guiSetText(statsLabel["zombieskilled1"]," "..value)
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["headshots1"],"identifikation"))
        guiSetText(statsLabel["headshots1"]," "..value)
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["banditskilled1"],"identifikation"))
        guiSetText(statsLabel["banditskilled1"]," "..value)
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["murders1"],"identifikation"))
        guiSetText(statsLabel["murders1"]," "..value)
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["blood1"],"identifikation"))
        guiSetText(statsLabel["blood1"]," "..value)
        
        --     local value = getElementData(getRootElement(),"zombiesalive") or 0
        --     local value2 = getElementData(getRootElement(),"zombiestotal") or 0
        --     guiSetText(statsLabel["zombies"],"Zombies (Alive/Total): "..value.."/"..value2)
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["temperature1"],"identifikation"))
        guiSetText(statsLabel["temperature1"],""..math.round(value,2).."°C")
        
        local value = getElementData(getLocalPlayer(),getElementData(statsLabel["humanity1"],"identifikation"))
        guiSetText(statsLabel["humanity1"]," "..math.round(value,2))
        
        guiSetText(statsLabel["name1"]," "..getPlayerName(getLocalPlayer()))
    end         
end
setTimer(refreshDebugMonitor,2000,0)


-- Ítens das armas
weaponAmmoTable = {
  [Weapon_PistolAmmo] = {
    {gameWeapons["Pistol"]["name"], 22}
  },
  [Weapon_SilencedAmmo] = {
    {gameWeapons["SilencedPistol"]["name"], 23}
  },
  [Weapon_DesertAmmo] = {
    {gameWeapons["DesertEagle"]["name"], 24}
  },
  [Weapon_UziAmmo] = {
    {gameWeapons["Uzi"]["name"], 28}
  },
  [Weapon_MP5Ammo] = {
    {gameWeapons["MP5"]["name"], 29}
  },
  [Weapon_AKAmmo] = {
    {gameWeapons["AK47"]["name"], 30}
  },
  [Weapon_M4Ammo] = {
    {gameWeapons["M4"]["name"], 31}
  },
  [Weapon_ShotgunAmmo] = {
    {Weapon_Shotgun, 25}
  },
  [Weapon_SawnOffAmmo] = {
    {Weapon_SawnOff, 26}
  },
  [Weapon_SpasAmmo] = {
    {gameWeapons["SPAZ12"]["name"], 27}
  },
  [Weapon_SniperAmmo] = {
    {gameWeapons["Sniper"]["name"], 34}
  },
  [Weapon_CountryAmmo] = {
    {gameWeapons["CountryRifle"]["name"], 33}
  },
  ["others"] = {
    {Weapon_Parachute, 46},
    {gameWeapons["TearGas"]["name"], 17},
    {gameWeapons["Grenade"]["name"], 16},
    {gameWeapons["Knife"]["name"], 4},
    {gameWeapons["Katana"]["name"], 8},
    {Weapon_Binoculars, 43},
    {gameWeapons["BaseballBat"]["name"], 5},
    {gameWeapons["Shovel"]["name"], 6},
    {gameWeapons["GolfClub"]["name"], 2},
    {Item_Radio, 1}
  }
}


function getWeaponAmmoType(weaponName)
  for i, weaponData in ipairs(weaponAmmoTable.others) do
    if weaponName == weaponData[1] then
      return weaponData[1], weaponData[2]
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
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SpasAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SpasAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SawnOffAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SawnOffAmmo, weaponData[2]
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
end


function getWeaponDamage(weapon)
  for i, weapon2 in ipairs(damageTable) do
    local t, weapon1 = getWeaponAmmoType(weapon2[1])
    if weapon1 == weapon then
      if getElementData(getLocalPlayer(), "humanity") == 5000 and (weapon2[1] == gameWeapons["Pistol"]["name"] or weapon2[1] == gameWeapons["SilencedPistol"]["name"] or weapon2[1] == gameWeapons["Uzi"]["name"]) then
        return weapon2[2] * 0.3
      end
      return weapon2[2]
    end
  end
end


-- Toca som quando o player é atingido
function playRandomHitSound()
  local number = math.random(1, 3)
  local sound = playSound("sounds/hit" .. number .. ".mp3")
end


-- Quando um jogador é atingido
function playerGetDamageDayZ(attacker, weapon, bodypart, loss)
  cancelEvent()
  damage = 100
  headshot = false
  if weapon == 37 then -- 37: fogo
    return
  end
  if getElementData(attacker, "zombie") then
    setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - gameplayVariables.zombiedamage)
    local number = math.random(1, 7)
    if number == 4 then
      setElementData(getLocalPlayer(), "bleeding", getElementData(getLocalPlayer(), "bleeding") + math.floor(loss * 10))
    end
  end
  if weapon == 49 then -- 49: cair
    if loss > 30 then
	  playSound("sounds/brokenbone.mp3")
      setElementData(getLocalPlayer(), "brokenbone", true)
      setControlState("jump", true)
      setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - math.floor(loss * 10))
    end
    setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - math.floor(loss * 5))
  elseif weapon == 63 or weapon == 51 or weapon == 19 then -- explosões
    setElementData(getLocalPlayer(), "blood", 0)
    if getElementData(getLocalPlayer(), "blood") <= 0 and not getElementData(getLocalPlayer(), "isDead") == true then
      triggerServerEvent("kilLDayZPlayer", getLocalPlayer(), attacker, headshot)
    end
  elseif weapon and weapon > 1 and attacker and getElementType(attacker) == "player" then
    do
      local number = math.random(1, 8)
      if number >= 6 or number <= 8 then
        setElementData(getLocalPlayer(), "bleeding", getElementData(getLocalPlayer(), "bleeding") + math.floor(loss * 10))
      end
      local number = math.random(1, 7)
      if number == 2 then
        setElementData(getLocalPlayer(), "pain", true)
      end
      damage = getWeaponDamage(weapon)
      if bodypart == 9 then
        damage = damage * 1.8
        headshot = true
      end
      if bodypart == 7 or bodypart == 8 then
	    playSound("sounds/brokenbone.mp3")
        setElementData(getLocalPlayer(), "brokenbone", true)
      end
	  if bodypart == 3 then -- torso
		if getElementData(getLocalPlayer(), "armor") == true then
			damage = damage * 0.5
		end
	  end
      playRandomHitSound()
      setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - math.random(damage * 0.75, damage * 1.25))
      if not getElementData(getLocalPlayer(), "bandit") then
        setElementData(attacker, "humanity", getElementData(attacker, "humanity") - math.random(40, 200))
        if 0 > getElementData(attacker, "humanity") then
          setElementData(attacker, "bandit", true)
        end
      else
        setElementData(attacker, "humanity", getElementData(attacker, "humanity") + math.random(40, 200))
        if getElementData(attacker, "humanity") > 5000 then
          setElementData(attacker, "humanity", 5000)
        end
        if getElementData(attacker, "humanity") > 2000 then
          setElementData(attacker, "bandit", false)
        end
      end
      if getElementData(getLocalPlayer(), "blood") <= 0 and not getElementData(getLocalPlayer(), "isDead") then
        triggerServerEvent("kilLDayZPlayer", getLocalPlayer(), attacker, headshot, getWeaponNameFromID(weapon))
        setElementData(getLocalPlayer(), "isDead", true)
      end
    end
  elseif weapon == 54 or weapon == 63 or weapon == 49 or weapon == 51 then
    setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - math.random(100, 1000))
    local number = math.random(1, 5)
    if loss > 30 then
	  playSound("sounds/brokenbone.mp3")
      setElementData(getLocalPlayer(), "brokenbone", true)
	  
      setControlState("jump", true)
    end
    if loss >= 100 then
      setElementData(getLocalPlayer(), "blood", 49)
      setElementData(getLocalPlayer(), "bleeding", 50)
    end
    local number = math.random(1, 11)
    if number == 3 then
      setElementData(getLocalPlayer(), "pain", true)
    end
    if getElementData(getLocalPlayer(), "blood") <= 0 and not getElementData(getLocalPlayer(), "isDead") == true then
      triggerServerEvent("kilLDayZPlayer", getLocalPlayer(), attacker, headshot, getWeaponNameFromID(weapon))
      setElementData(getLocalPlayer(), "isDead", true)
    end
  end
end
addEventHandler("onClientPlayerDamage", getLocalPlayer(), playerGetDamageDayZ)


-- Quando zumbis são atingidos
function pedGetDamageDayZ(attacker, weapon, bodypart, loss)
  cancelEvent()
  if attacker and attacker == getLocalPlayer() then
    damage = 100
    if weapon == 37 then
      return
    end
    if weapon == 63 or weapon == 51 or weapon == 19 then
      setElementData(source, "blood", 0)
      if 0 >= getElementData(source, "blood") then
        triggerServerEvent("onZombieGetsKilled", source, attacker)
      end
    elseif weapon and weapon > 1 and attacker and getElementType(attacker) == "player" then
      damage = getWeaponDamage(weapon)
      if bodypart == 9 then
        damage = damage * 1.5
        headshot = true
      end
      setElementData(source, "blood", getElementData(source, "blood") - math.random(damage * 0.75, damage * 1.25))
      if 0 >= getElementData(source, "blood") then
        triggerServerEvent("onZombieGetsKilled", source, attacker, headshot)
      end
    end
  end
end
addEventHandler("onClientPedDamage", getRootElement(), pedGetDamageDayZ)


-- Checa os estados dos jogadores
function checkStats()
  if getElementData(getLocalPlayer(), "logedin") then
    if getElementData(getLocalPlayer(), "bleeding") > 20 then
      setElementData(getLocalPlayer(), "blood", getElementData(getLocalPlayer(), "blood") - getElementData(getLocalPlayer(), "bleeding"))
    else
      setElementData(getLocalPlayer(), "bleeding", 0)
    end
    if getElementData(getLocalPlayer(), "blood") < 0 and not getElementData(getLocalPlayer(), "isDead") then
      triggerServerEvent("kilLDayZPlayer", getLocalPlayer(), false, false)
    end
  end
end
setTimer(checkStats, 3000, 0)


-- Cria o sangue para os jogadores que estiverem sangrando
function createBloodForBleedingPlayers()
  if getElementData(getLocalPlayer(), "logedin") then
    local x, y, z = getElementPosition(getLocalPlayer())
    for i, player in ipairs(getElementsByType("player")) do
      local bleeding = getElementData(player, "bleeding") or 0
      if bleeding > 0 then
        local px, py, pz = getPedBonePosition(player, 3)
        local pdistance = getDistanceBetweenPoints3D(x, y, z, px, py, pz)
        if bleeding > 600 then
          number = 5
        elseif bleeding > 300 then
          number = 3
        elseif bleeding > 100 then
          number = 1
        else
          number = 0
        end
        if pdistance <= 120 then
          fxAddBlood(px, py, pz, 0, 0, 0, number, 1)
        end
      end
    end
  end
end
setTimer(createBloodForBleedingPlayers, 300, 0)

-- Checa se está com o osso quebrado
function checkBrokenbone()
  if getElementData(getLocalPlayer(), "logedin") then
    if getElementData(getLocalPlayer(), "brokenbone") then
      if not isPedDucked(getLocalPlayer()) then
      end
      toggleControl("jump", false)
      toggleControl("sprint", false)
    else
      toggleControl("jump", true)
      toggleControl("sprint", true)
    end
  end
end
setTimer(checkBrokenbone, 1400, 0)

-- Define dor de cabeça
function setPain()
  if getElementData(getLocalPlayer(), "logedin") and getElementData(getLocalPlayer(), "pain") then
    local x, y, z = getElementPosition(getLocalPlayer())
    createExplosion(x, y, z + 15, 8, false, 1, false)
    local x, y, z, lx, ly, lz = getCameraMatrix()
    x, lx = x + 1, lx + 1
    setCameraMatrix(x, y, z, lx, ly, lz)
    setCameraTarget(getLocalPlayer())
  end
end
setTimer(setPain, 1500, 0)

-- Checa a temperatura
function checkCold()
  if getElementData(getLocalPlayer(), "logedin") and getElementData(getLocalPlayer(), "temperature") <= 31 then
    setElementData(getLocalPlayer(), "cold", true)
  end
end
setTimer(checkCold, 3000, 0)

-- Define a temperatura
function setCold()
  if getElementData(getLocalPlayer(), "logedin") and getElementData(getLocalPlayer(), "cold") then
    local x, y, z = getElementPosition(getLocalPlayer())
    createExplosion(x, y, z + 15, 8, false, 0.5, false)
    local x, y, z, lx, ly, lz = getCameraMatrix()
  end
end
setTimer(setCold, 1500, 0)

-- Define o 'volume' (ícone de altura)
function setVolume()
  value = 0
  if getPedMoveState(getLocalPlayer()) == "stand" then
    value = 0
  elseif getPedMoveState(getLocalPlayer()) == "walk" then
    value = 20
  elseif getPedMoveState(getLocalPlayer()) == "powerwalk" then
    value = 40
  elseif getPedMoveState(getLocalPlayer()) == "jog" then
    value = 80
  elseif getPedMoveState(getLocalPlayer()) == "sprint" then
    value = 100
  elseif getPedMoveState(getLocalPlayer()) == "crouch" then
    value = 0
  elseif not getPedMoveState(getLocalPlayer()) then
    value = 20
  end
  if getElementData(getLocalPlayer(), "shooting") and 0 < getElementData(getLocalPlayer(), "shooting") then
    value = value + getElementData(getLocalPlayer(), "shooting")
  end
  if isPedInVehicle(getLocalPlayer()) then
    value = 100
  end
  if value > 100 then
    value = 100
  end
  setElementData(getLocalPlayer(), "volume", value)
end
setTimer(setVolume, 100, 0)

-- Define a visibilidade (ícone de visibilidade)
function setVisibility()
  value = 0
  
  if isObjectAroundPlayer(getLocalPlayer(), 2, 4) then
    value = 0
	setElementData(getLocalPlayer(), "visibly", value)
	return
  end
  
  if getPedMoveState(getLocalPlayer()) == "stand" then
    value = 60
	setElementData(getLocalPlayer(), "visibly", value)
  elseif getPedMoveState(getLocalPlayer()) == "walk" then
    value = 60
	setElementData(getLocalPlayer(), "visibly", value)
  elseif getPedMoveState(getLocalPlayer()) == "powerwalk" then
    value = 60
	setElementData(getLocalPlayer(), "visibly", value)
  elseif getPedMoveState(getLocalPlayer()) == "jog" then
    value = 60
	setElementData(getLocalPlayer(), "visibly", value)
  elseif getPedMoveState(getLocalPlayer()) == "sprint" then
    value = 80
	setElementData(getLocalPlayer(), "visibly", value)
  elseif getPedMoveState(getLocalPlayer()) == "crouch" then
    value = 0
	setElementData(getLocalPlayer(), "visibly", value)
  elseif not getPedMoveState(getLocalPlayer()) then
    value = 20
	setElementData(getLocalPlayer(), "visibly", value)
  end
  
  if getElementData(getLocalPlayer(), "lying") then
	value = 0
	setElementData(getLocalPlayer(), "visibly", value)
	return
  end
  
  if getElementData(getLocalPlayer(), "jumping") then
    value = 100
	setElementData(getLocalPlayer(), "visibly", value)
	return
  end
  
  if isPedInVehicle(getLocalPlayer()) then
    value = 80
	setElementData(getLocalPlayer(), "visibly", value)
	return
  end
  
end
setTimer(setVisibility, 100, 0)


function debugJump()
  if getControlState("jump") then
    setElementData(getLocalPlayer(), "jumping", true)
    setTimer(debugJump2, 650, 1)
  end
end
setTimer(debugJump, 100, 0)


function debugJump2()
  setElementData(getLocalPlayer(), "jumping", false)
end


weaponNoiseTable = {
  {22, 20},
  {23, 0},
  {24, 60},
  {28, 40},
  {32, 40},
  {29, 40},
  {30, 60},
  {31, 60},
  {25, 40},
  {26, 60},
  {27, 60},
  {33, 40},
  {34, 60},
  {36, 60},
  {35, 60}
}
function getWeaponNoise(weapon)
  for i, weapon2 in ipairs(weaponNoiseTable) do
    if weapon == weapon2[1] then
      return weapon2[2]
    end
  end
  return 0
end
function debugShooting()
  if getControlState("fire") then
    local weapon = getPedWeapon(getLocalPlayer())
    local noise = getWeaponNoise(weapon) or 0
    setElementData(getLocalPlayer(), "shooting", noise)
    if shootTimer then
      killTimer(shootTimer)
    end
    shootTimer = setTimer(debugShooting2, 100, 1)
  end
end
setTimer(debugShooting, 100, 0)
function debugShooting2()
  setElementData(getLocalPlayer(), "shooting", 0)
  shootTimer = false
end
function checkZombies()
  zombiesalive = 0
  zombiestotal = 0
  for i, ped in ipairs(getElementsByType("ped")) do
    if getElementData(ped, "zombie") then
      zombiesalive = zombiesalive + 1
    end
    if getElementData(ped, "deadzombie") then
      zombiestotal = zombiestotal + 1
    end
  end
  setElementData(getRootElement(), "zombiesalive", zombiesalive)
  setElementData(getRootElement(), "zombiestotal", zombiestotal + zombiesalive)
end
setTimer(checkZombies, 5000, 0)
function checkZombies3()
  local x, y, z = getElementPosition(getLocalPlayer())
  for i, ped in ipairs(getElementsByType("ped")) do
    if getElementData(ped, "zombie") then
      local sound = getElementData(getLocalPlayer(), "volume") / 5
      local visibly = getElementData(getLocalPlayer(), "visibly") / 5
      local xZ, yZ, zZ = getElementPosition(ped)
      if getDistanceBetweenPoints3D(x, y, z, xZ, yZ, zZ) < sound + visibly then
        if getElementData(ped, "leader") == nil then
          triggerServerEvent("botAttack", getLocalPlayer(), ped)
        end
      else
        if getElementData(ped, "target") == getLocalPlayer() then
          setElementData(ped, "target", nil)
        end
        if getElementData(ped, "leader") == getLocalPlayer() then
          triggerServerEvent("botStopFollow", getLocalPlayer(), ped)
        end
      end
    end
  end
end
setTimer(checkZombies3, 500, 0)
fading = 0
fading2 = "up"
local screenWidth, screenHeight = guiGetScreenSize()

-- Ícones na tela
function updateIcons()


	if getElementData(getLocalPlayer(), "logedin") then
    if fading >= 0 and fading2 == "up" then
      fading = fading + 5
    elseif fading <= 255 and fading2 == "down" then
      fading = fading - 5
    end
    if fading == 0 then
      fading2 = "up"
    elseif fading == 255 then
      fading2 = "down"
    end
	
	
	-- VOLUME
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.530, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/sound.png", 0, 0, 0, tocolor(0, 255, 0))
    local sound = getElementData(getLocalPlayer(), "volume") / 20
    if sound > 1 then
      dxDrawImage(screenWidth * 0.9075, screenHeight * 0.530, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/level_" .. sound .. ".png", 0, 0, 0, tocolor(0, 255, 0))
    end
	
	
	-- VISÃO
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.585, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/eye.png", 0, 0, 0, tocolor(0, 255, 0))
    local sound = getElementData(getLocalPlayer(), "visibly") / 20
    if sound > 1 then
      dxDrawImage(screenWidth * 0.9075, screenHeight * 0.585, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/level_" .. sound .. ".png", 0, 0, 0, tocolor(0, 255, 0))
    end
    
	
	-- OSSO QUEBRADO
    if getElementData(getLocalPlayer(),"brokenbone") then
		if getElementData(getLocalPlayer(), "armor") == true then
			dxDrawImage ( screenWidth*0.904, screenHeight*0.65, screenHeight*0.045, screenHeight*0.045, "images/dayzicons/brokenbone.png",0,0,0,tocolor(255,255,255))
		else
			dxDrawImage ( screenWidth*0.94, screenHeight*0.65, screenHeight*0.045, screenHeight*0.045, "images/dayzicons/brokenbone.png",0,0,0,tocolor(255,255,255))
		end
    end
	
	
	-- COLETE
	if getElementData(getLocalPlayer(), "armor") == true then
		dxDrawImage ( screenWidth*0.94, screenHeight*0.65, screenHeight*0.045, screenHeight*0.045, "images/dayzicons/armor.png",0,0,0,tocolor(0,255,0))
	end
	
	
    -- HUMANIDADE
    local humanity = getElementData(getLocalPlayer(), "humanity")
    if humanity > 0 then
      do
        local humanity = getElementData(getLocalPlayer(), "humanity") / 9.8
        r, g, b = 255 - humanity, humanity, 0
      end
    else
      r, g, b = 255, 0, 0
    end
    dxDrawImage(screenWidth * 0.934, screenHeight * 0.700, screenHeight * 0.06, screenHeight * 0.06, "images/dayzicons/bandit.png", 0, 0, 0, tocolor(r, g, b))
    
    
    -- TEMPERATURA
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.760, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/temperature.png", 0, 0, 0, tocolor(0, 255, 0))
	local temperature = math.round(getElementData(getLocalPlayer(), "temperature"), 2)
    r, g, b = 0, 255, 0
    if temperature <= 37 then
      value = (37 - temperature) * 42.5
      r, g, b = 0, 255 - value, value
    elseif temperature > 37 and temperature < 41 then
      r, g, b = 0, 255, 0
    elseif temperature == 41 then
      r, g, b = 255, 0, 0
    end
    if value > 215 then
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.760, screenHeight * 0.045, screenHeight * 0.045, "images/hud/temp/38.png", 0, 0, 0, tocolor(r, g, b, fading))
    else
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.760, screenHeight * 0.045, screenHeight * 0.045, "images/hud/temp/38.png", 0, 0, 0, tocolor(r, g, b))
    end

    
	-- SANGUE
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.815, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/blood.png", 0, 0, 0, tocolor(0, 255, 0))
    r, g, b = 0, 255, 0
    local blood = getElementData(getLocalPlayer(), "blood") / 47.2
    r, g, b = 255 - blood, blood, 0
	dxDrawImage(screenWidth * 0.94, screenHeight * 0.815, screenHeight * 0.045, screenHeight * 0.045, "images/hud/blood/100.png", 0, 0, 0, tocolor(r, g, b))
    if 0 < getElementData(getLocalPlayer(), "bleeding") then
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.815, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/medic.png", 0, 0, 0, tocolor(255, 255, 255, fading))
    end
	
	
    -- SEDE
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.87, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/thirsty.png", 0, 0, 0, tocolor(0, 255, 0))
    r, g, b = 0, 255, 0
    local thirst = getElementData(getLocalPlayer(), "thirst") * 2.55
    r, g, b = 255 - thirst, thirst, 0
    if thirst < 15 then
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.87, screenHeight * 0.045, screenHeight * 0.045, "images/hud/drink/100.png", 0, 0, 0, tocolor(r, g, b, fading))
    else
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.87, screenHeight * 0.045, screenHeight * 0.045, "images/hud/drink/100.png", 0, 0, 0, tocolor(r, g, b))
    end
    
	
    -- FOME
    dxDrawImage(screenWidth * 0.94, screenHeight * 0.925, screenHeight * 0.045, screenHeight * 0.045, "images/dayzicons/food.png", 0, 0, 0, tocolor(0, 255, 0))
    r, g, b = 0, 255, 0
    local food = getElementData(getLocalPlayer(), "food") * 2.55
    r, g, b = 255 - food, food, 0
    if food < 15 then
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.925, screenHeight * 0.045, screenHeight * 0.045, "images/hud/food/100.png", 0, 0, 0, tocolor(r, g, b, fading))
    else
	  dxDrawImage(screenWidth * 0.94, screenHeight * 0.925, screenHeight * 0.045, screenHeight * 0.045, "images/hud/food/100.png", 0, 0, 0, tocolor(r, g, b))
    end
    


    local x, y, z = getElementPosition(getLocalPlayer())
    for i, player in ipairs(getElementsByType("player")) do
      setPlayerNametagShowing(player, false)
      if player ~= getLocalPlayer() then
        local vehicle = getPedOccupiedVehicle(player)
        local px, py, pz = getElementPosition(player)
        local pdistance = getDistanceBetweenPoints3D(x, y, z, px, py, pz)
        if pdistance <= 5 then
          local sx, sy = getScreenFromWorldPosition(px, py, pz + 0.95, 0.06)
          if sx and sy then
            if getElementData(player, "bandit") then
              text = string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", "") .. " (Bandido)"
            else
              text = string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", "")
            end
            local w = dxGetTextWidth(text, 1.02, "default-bold")
			
			dxDrawText(text, sx - w / 2, sy, sx - w / 2, sy, tocolor(100, 255, 100, 200), 1.02, "default-bold")
          end
        end
      end
    end
    local x, y, z = getElementPosition(getLocalPlayer())
    for i, veh in ipairs(getElementsByType("vehicle")) do
      local px, py, pz = getElementPosition(veh)
      local vehID = getElementModel(veh)
      local vehicle = getPedOccupiedVehicle(getLocalPlayer())
      if veh ~= vehicle and vehID ~= 548 then
        local pdistance = getDistanceBetweenPoints3D(x, y, z, px, py, pz)
        if pdistance <= 6 then
          local sx, sy = getScreenFromWorldPosition(px, py, pz + 0.95, 0.06)
          if sx and sy then
            local w = dxGetTextWidth(getVehicleName(veh), 1.02, "default-bold")
            dxDrawText(getVehicleName(veh), sx - w / 2, sy, sx - w / 2, sy, tocolor(100, 255, 100, 200), 1.02, "default-bold")
          end
        end
      end
    end
    local veh = getPedOccupiedVehicle(getLocalPlayer())
    if veh then
      local maxfuel = getElementData(veh, "maxfuel")
      local fuel = getElementData(getElementData(veh, "parent"), "fuel")
      local needengine = getElementData(veh, "needengines")
      local needtires = getElementData(veh, "needtires")
	  local needparts = getElementData(veh, "needparts")
      local engine = getElementData(getElementData(veh, "parent"), DB_EngineInVehicle) or 0
      local tires = getElementData(getElementData(veh, "parent"), DB_TireInVehicle) or 0
      local parts = getElementData(getElementData(veh, "parent"), "Parts_inVehicle") or 0
      local offset = dxGetFontHeight(1.02, "default-bold")
	  
	  
	  -- MOTOR
      local w = dxGetTextWidth("Motor: ".. engine .. "/" .. needengine, 1.02, "default-bold")
      if engine == needengine then
        r, g, b = 0, 255, 0
      else
        r, g, b = 255, 0, 0
      end
      dxDrawText("Motor: ".. engine .. "/" .. needengine, screenWidth * 0.5 - w / 2, screenHeight * 0, screenWidth * 0.5 - w / 2, screenHeight * 0, tocolor(r, g, b, 220), 1.02, "default-bold")
	  
	  
	  -- PNEUS
      local w = dxGetTextWidth("Pneus: ".. tires .. "/" .. needtires, 1.02, "default-bold")
      if tires == needtires then
        r, g, b = 0, 255, 0
      else
        r, g, b = 255, 0, 0
      end
      dxDrawText("Pneus: ".. tires .. "/" .. needtires, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset, tocolor(r, g, b, 220), 1.02, "default-bold")
      
	  
	  -- TANQUE EXTRA
	  local w = dxGetTextWidth("Tanque extra: " .. parts .. "/" .. needparts, 1.02, "default-bold")
      if parts == needparts then
        r, g, b = 0, 255, 0
      else
        r, g, b = 255, 0, 0
      end
      dxDrawText("Tanque extra: " .. parts .. "/" .. needparts, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 2, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset, tocolor(r, g, b, 220), 1.02, "default-bold")
      
	  
	  -- GASOLINA
	  
	  local w = dxGetTextWidth("Gasolina: " .. tostring(fuel) .. "/" .. maxfuel, 1.02, "default-bold")
      if fuel == maxfuel then
        r, g, b = 0, 255, 0
      elseif fuel < maxfuel / 10 then
        r, g, b = 255, 0, 0
      elseif fuel < maxfuel / 4 then
        r, g, b = 255, 50, 0
      elseif fuel < maxfuel / 3 then
        r, g, b = 200, 100, 0
      elseif fuel < maxfuel / 2 then
        r, g, b = 125, 200, 0
      elseif fuel < maxfuel / 1.5 then
        r, g, b = 50, 200, 0
      end
      dxDrawText("Gasolina: " .. tostring(math.floor(fuel)) .. "/" .. maxfuel, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 3, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 2, tocolor(r, g, b, 220), 1.02, "default-bold")
	  --dxDrawText("Gasolina: " .. tostring(fuel) .. "/" .. maxfuel, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 3, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 2, tocolor(r, g, b, 220), 1.02, "default-bold")
	  
	  
	  -- SITUAÇÃO DO VEÍCULO
	  local vehiclehealth = getElementHealth(veh)
	  local w = dxGetTextWidth("Durabilidade: " .. math.floor(vehiclehealth/10) .. "%", 1.02, "default-bold")
      if vehiclehealth >= 1000 then
        r, g, b = 0, 255, 0
      elseif vehiclehealth < 100 then
        r, g, b = 255, 0, 0
      elseif vehiclehealth < 250 then
        r, g, b = 255, 50, 0
      elseif vehiclehealth < 330 then
        r, g, b = 200, 100, 0
      elseif vehiclehealth < 500 then
        r, g, b = 125, 200, 0
      elseif vehiclehealth < 786 then
        r, g, b = 50, 200, 0
	  elseif vehiclehealth < 1000 then
	    r, g, b = 0, 200, 0
      end
      dxDrawText("Durabilidade: " .. math.floor(vehiclehealth/10) .. "%", screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 4, screenWidth * 0.5 - w / 2, screenHeight * 0 + offset * 2, tocolor(r, g, b, 220), 1.02, "default-bold")	  
	  
    end
    if not playerTarget then
      return
    end
    local x, y, z = getElementPosition(playerTarget)
    local x, y, distance = getScreenFromWorldPosition(x, y, z + 0.5)
    distance = 20
    if getElementData(playerTarget, "bandit") then
      text = string.gsub(getPlayerName(playerTarget), "#%x%x%x%x%x%x", "") .. " (Bandido)"
    else
      text = string.gsub(getPlayerName(playerTarget), "#%x%x%x%x%x%x", "")
    end
    local w = dxGetTextWidth(text, distance * 0.033, "default-bold")
    dxDrawText(text, x - w / 2, y, x - w / 2, y, tocolor(100, 255, 100, 200), distance * 0.033, "default-bold")
  end
end
addEventHandler("onClientRender", getRootElement(), updateIcons)
playerTarget = false


function targetingActivated(target)
  if target and getElementType(target) == "player" then
    playerTarget = target
  else
    playerTarget = false
  end
end
addEventHandler("onClientPlayerTarget", getRootElement(), targetingActivated)


function dayZDeathInfo()
  fadeCamera(false, 1, 0, 0, 0)
  setTimer(showDayZDeathScreen, 2000, 1)
end
addEvent("onClientPlayerDeathInfo", true)
addEventHandler("onClientPlayerDeathInfo", getRootElement(), dayZDeathInfo)
function showDayZDeathScreen()
  setTimer(fadeCamera, 1000, 1, true, 1.5)
  deadBackground = guiCreateStaticImage(0, 0, 1, 1, "images/dead.jpg", true)
  deathText = guiCreateLabel(0, 0.8, 1, 0.2, [[
Você morreu! 
 Você será respawnado em 5 segundos.]], true)
  guiLabelSetHorizontalAlign(deathText, "center")
  setTimer(guiSetVisible, 5000, 1, false)
  setTimer(guiSetVisible, 5000, 1, false)
  setTimer(destroyElement, 5000, 1, deathText)
  setTimer(destroyElement, 5000, 1, deadBackground)
end
whiteWindow = guiCreateStaticImage(0, 0, 1, 1, "images/white.png", true)
guiSetVisible(whiteWindow, false)
function showPlayerDamageScreen(visibly2, stateControle2)
  guiSetVisible(whiteWindow, true)
  visibly = visibly2 or visibly
  stateControle = stateControle2 or stateControle
  if visibly >= 0.15000000000000002 and stateControle == "up" then
    stateControle = "down"
  end
  if visibly < 0 then
    guiSetVisible(whiteWindow, false)
    return
  end
  if stateControle == "up" then
    visibly = visibly + 0.025
  elseif stateControle == "down" then
    visibly = visibly - 0.025
  end
  guiSetAlpha(whiteWindow, visibly)
  setTimer(showPlayerDamageScreen, 50, 1)
end
function showWhiteScreen(attacker, weapon, bodypart)
  showPlayerDamageScreen(0, "up")
end
addEventHandler("onClientPlayerDamage", getLocalPlayer(), showWhiteScreen)


supportWindow = guiCreateStaticImage(0.2, 0.25, 0.6, 0.5, "images/scrollmenu_1.png", true)
guiSetVisible(supportWindow, false)
supportGridlist = guiCreateGridList(0.05, 0.1, 0.9, 0.7, true, supportWindow)
nameColumn = guiGridListAddColumn(supportGridlist, "Nome", 0.2)
messageColumn = guiGridListAddColumn(supportGridlist, "Mensagem", 0.8)
messageInput = guiCreateEdit(0.05, 0.825, 0.9, 0.075, "", true, supportWindow)
closeButton = guiCreateButton(0.9, 0.015, 0.09, 0.05, "Fechar", true, supportWindow)


-- Support chat // Chat de suporte
function openSupportChat()
  local showing = guiGetVisible(supportWindow)
  guiSetInputMode("no_binds_when_editing")
  guiSetVisible(supportWindow, not showing)
  if getElementData(getLocalPlayer(), "supporter") or getElementData(getLocalPlayer(), "admin") then
    guiSetVisible(supporterWindow, not showing)
  end
  if showing then
    guiSetVisible(supporterWindow, false)
  end
  showCursor(not showing)
  toggleControl("chatbox", showing)
  if showing == false then
    unbindKey("o", "down", openSupportChat)
    unbindKey("j", "down", showInventory)
  else
    bindKey("o", "down", openSupportChat)
    bindKey("j", "down", showInventory)
  end
end
bindKey("o", "down", openSupportChat)
function outputEditBox()
  local showing = guiGetVisible(supportWindow)
  guiSetVisible(supportWindow, false)
  showCursor(false)
  toggleControl("chatbox", true)
  bindKey("o", "down", openSupportChat)
  bindKey("j", "down", showInventory)
end
addEventHandler("onClientGUIClick", closeButton, outputEditBox, false)
bindKey("o", "down", outputEditBox)
addEventHandler("onClientGUIAccepted", messageInput, function(theElement)
  if not isSpamTimer() then
    local text = guiGetText(theElement)
    triggerServerEvent("onServerSupportChatMessage", getLocalPlayer(), getLocalPlayer(), text)
  end
  setAntiSpamActive()
  guiSetText(messageInput, "")
end)
function outputSupportChat(sourcePlayer, text)
  local row = guiGridListAddRow(supportGridlist)
  if sourcePlayer == "Sandra" or sourcePlayer == "James" or sourcePlayer == "Paul" then
    name = sourcePlayer .. " (Bot)"
  elseif not getElementData(sourcePlayer, "logedin") then
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Visitante)"
  elseif getElementData(sourcePlayer, "DW-Administrador") then
	name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Administrador)"
  elseif getElementData(sourcePlayer, "DW-Moderador") then
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Moderador)"
  elseif getElementData(sourcePlayer, "DW-Ajudante") then
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Ajudante)"
  --[[
  elseif getElementData(sourcePlayer, "admin") then
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Administrador)"
  elseif getElementData(sourcePlayer, "supporter") then
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Ajudante)"
  ]]
  else
    name = string.gsub(getPlayerName(sourcePlayer), "#%x%x%x%x%x%x", "") .. " (Jogador)"
  end
  guiGridListSetItemText(supportGridlist, row, nameColumn, name, false, false)
  guiGridListSetItemText(supportGridlist, row, messageColumn, text, false, false)
  if sourcePlayer == "Sandra" then
    r, g, b = 255, 30, 120
  elseif sourcePlayer == "James" or sourcePlayer == "Paul" then
    r, g, b = 255, 255, 22
  elseif getElementData(sourcePlayer, "admin") then
    r, g, b = 255, 22, 0
  elseif getElementData(sourcePlayer, "supporter") then
    r, g, b = 22, 255, 0
  else
    r, g, b = 255, 255, 255
  end
  guiGridListSetItemColor(supportGridlist, row, nameColumn, r, g, b)
end
addEvent("onSupportChatMessage", true)
addEventHandler("onSupportChatMessage", getRootElement(), outputSupportChat, true)
local antiSpamTimer = {}
function setAntiSpamActive()
  if not isTimer(antiSpamTimer) then
    antiSpamTimer = setTimer(killAntiSpamTimer, 1000, 1)
  else
    killTimer(antiSpamTimer)
    antiSpamTimer = setTimer(killAntiSpamTimer, 2500, 1)
  end
end
function isSpamTimer()
  if isTimer(antiSpamTimer) then
    outputChatBox("Por favor, não faça spam no nosso chat de suporte.", 255, 255, 0, true)
    return true
  else
    return false
  end
end
function killAntiSpamTimer()
  killTimer(antiSpamTimer)
end
function getRankingPlayer(place)
  return playerRankingTable[place].Player
end
function getElementDataPosition(key, value)
  if key and value then
    local result = 1
    for i, player in pairs(getElementsByType("player")) do
      local data = tonumber(getElementData(player, key))
      if data and value < data then
        result = result + 1
      end
    end
    return result
  end
end
function positionGetElementData(key, positions)
  if key and positions then
    local Position = {}
    for index, player in pairs(getElementsByType("player")) do
      local data = tonumber(getElementData(player, key))
      if data then
        for i1 = 1, positions do
          if Position[tonumber(i1)] then
            if Position[tonumber(i1)].Wert < tonumber(data) then
              local Position_Cache1 = Position[tonumber(i1)].Player
              local Position_Cache2 = Position[tonumber(i1)].Wert
              local Position_Cache3, Position_Cache4
              for i2 = i1, positions do
                if Position[tonumber(i2)] then
                  Position_Cache3 = Position[tonumber(i2)].Player
                  Position_Cache4 = Position[tonumber(i2)].Wert
                  Position[tonumber(i2)].Player = Position_Cache1
                  Position[tonumber(i2)].Wert = Position_Cache2
                  Position_Cache1 = Position_Cache3
                  Position_Cache2 = Position_Cache4
                else
                  Position[tonumber(i2)] = {}
                  Position[tonumber(i2)].Player = Position_Cache1
                  Position[tonumber(i2)].Wert = Position_Cache2
                  break
                end
              end
              Position[tonumber(i1)] = {}
              Position[tonumber(i1)].Player = player
              Position[tonumber(i1)].Wert = data
              break
            end
          else
            Position[tonumber(i1)] = {}
            Position[tonumber(i1)].Player = player
            Position[tonumber(i1)].Wert = data
            break
          end
        end
      end
    end
    return Position
  end
end

--[[function math.round(number, decimals, method)
    decimals = decimals or 0
    local factor = 10 ^ decimals
    if (method == "ceil" or method == "floor") then return math[method](number * factor) / factor
    else return tonumber(("%."..decimals.."f"):format(number)) end
end]]

function formatTimeFromMinutes(value)
  if value then
    local hours = math.floor(value / 60)
    local minutes = math.round((value / 60 - math.floor(value / 60)) * 100 / 1.6666666666666667)
    if minutes < 10 then
      minutes = "0" .. minutes
    end
    value = hours .. ":" .. minutes
    return value
  end
  return false
end
playerRankingTable = {}
function checkTopPlayer()
  playerRankingTable = positionGetElementData("alivetime", #getElementsByType("player"))
end
checkTopPlayer()
setTimer(checkTopPlayer, 10000, 0)
function onQuitGame(reason)
  checkTopPlayer()
end
addEventHandler("onClientPlayerQuit", getRootElement(), onQuitGame)
yA = 0
local screenWidth, screenHeight = guiGetScreenSize()


-- Cria o ScoreBoard
function scoreBoard()
  if getKeyState("tab") == false then
    return
  end
  if getElementData(getLocalPlayer(), "logedin") then
    local offset = dxGetFontHeight(1.55, "default-bold")
	dxDrawRectangle(screenWidth * 0.15, screenHeight * 0.2, screenWidth * 0.7, screenHeight * 0.2 + yA, tocolor(0, 0, 0, 200))
    --dxDrawImage(screenWidth * 0.15, screenHeight * 0.2, screenWidth * 0.7, screenHeight * 0.2 + yA, "images/window_bg.png", 0, 0, 0, tocolor(255, 255, 255))
    dxDrawRectangle(screenWidth * 0.15, screenHeight * 0.2 + offset * 2, screenWidth * 0.7, screenHeight * 0.0015, tocolor(255, 255, 255, 220))
	
    dxDrawText("Nome", screenWidth * 0.175, screenHeight * 0.2 + offset, screenWidth * 0.175, screenHeight * 0.2 + offset, tocolor(196, 78, 0, 200), 1.2, "default-bold")
    w1 = dxGetTextWidth("Nome", 1.5, "default-bold")
	
    dxDrawText("Assassinatos", screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset, screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset, tocolor(196, 78, 0, 200), 1.2, "default-bold")
    w2 = dxGetTextWidth("Assassinatos", 1.5, "default-bold")
    dxDrawRectangle(screenWidth * 0.3 + w1 * 1.6 - w2 * 0.1 - screenWidth * 0.0025 / 2, screenHeight * 0.2, screenWidth * 0.0015, screenHeight * 0.2 + yA, tocolor(255, 255, 255, 220))
    dxDrawRectangle(screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 - screenWidth * 0.0025 / 2, screenHeight * 0.2, screenWidth * 0.0015, screenHeight * 0.2 + yA, tocolor(255, 255, 255, 220))
	
    dxDrawText("Zumbis mortos", screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 - screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset, screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset, tocolor(196, 78, 0, 200), 1.2, "default-bold")
    w3 = dxGetTextWidth("Zumbis mortos", 1.5, "default-bold")
    dxDrawRectangle(screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2, screenHeight * 0.2, screenWidth * 0.0015, screenHeight * 0.2 + yA, tocolor(255, 255, 255, 220))
	
    dxDrawText("Tempo vivo", screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset, screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset, tocolor(196, 78, 0, 200), 1.2, "default-bold")
    w4 = dxGetTextWidth("Tempo vivo", 1.5, "default-bold")
    dxDrawRectangle(screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2 + w2 * 0.1 + w4 + w2 * 0.1, screenHeight * 0.2, screenWidth * 0.0015, screenHeight * 0.2 + yA, tocolor(255, 255, 255, 220))
    
	dxDrawText("Online(s):" .. #getElementsByType("player"), screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2 + w2 * 0.1 + w4 + w2 * 0.1 + w4 / 3, screenHeight * 0.2 + offset, screenWidth * 0.8, screenHeight * 0.2 + offset, tocolor(196, 78, 0, 200), 1.5, "default-bold")
    playerInList = false
    local playerAmount = #getElementsByType("player")
    if playerAmount > 10 then
      playerAmount = 10
    end
    for i = 1, playerAmount do
      yA = i * offset
      local offset2 = dxGetFontHeight(1.5, "default-bold")
      local player = getRankingPlayer(i) or false
      if not player then
        break
      end
      r, g, b = 196, 78, 0
      if getPlayerName(player) == getPlayerName(getLocalPlayer()) then
        r, g, b = 255, 255, 255
        playerInList = true
      end
      dxDrawText(i, screenWidth * 0.155, screenHeight * 0.2 + offset * 2 + yA, screenWidth * 0.175, screenHeight * 0.2 + offset + yA, tocolor(r, g, b, 200), 1, "default-bold")
      dxDrawText(string.gsub(getPlayerName(player), "#%x%x%x%x%x%x", ""), screenWidth * 0.175, screenHeight * 0.2 + offset * 2 + yA, screenWidth * 0.175, screenHeight * 0.2 + offset + yA, tocolor(r, g, b, 200), 1, "default-bold")
	  
      local murders = getElementData(player, "murders")
      dxDrawText(murders, screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset * 2 + yA, screenHeight * 0.2 + offset * 2 + yA, screenHeight * 0.2 + offset + yA, tocolor(r, g, b, 200), 1, "default-bold")
      
	  local zombieskilled = getElementData(player, "zombieskilled")
      dxDrawText(zombieskilled, screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 - screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset * 2 + yA, screenWidth * 0.175, screenHeight * 0.2 + offset + yA, tocolor(r, g, b, 200), 1, "default-bold")
      
	  local alivetime = getElementData(player, "alivetime") or 0
      dxDrawText(formatTimeFromMinutes(alivetime), screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset * 2 + yA, screenWidth * 0.175, screenHeight * 0.2 + offset + yA, tocolor(r, g, b, 200), 1, "default-bold")
    end
    playerLocalAdd = 0
    if not playerInList then
      playerLocalAdd = offset
      r, g, b = 50, 255, 50
      dxDrawRectangle(screenWidth * 0.15, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset - offset / 2, screenWidth * 0.7, screenHeight * 0.0025, tocolor(255, 255, 255, 220))
      local rank = getElementDataPosition("alivetime", getElementData(getLocalPlayer(), "alivetime"))
      dxDrawText(rank, screenWidth * 0.155, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, screenWidth * 0.175, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, tocolor(r, g, b, 200), 1.5, "default-bold")
      dxDrawText(string.gsub(getPlayerName(getLocalPlayer()), "#%x%x%x%x%x%x", ""), screenWidth * 0.175, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, screenWidth * 0.175, screenHeight * 0.2 + offset + (playerAmount + 2) * offset, tocolor(r, g, b, 200), 1.5, "default-bold")
      local murders = getElementData(getLocalPlayer(), "murders")
      dxDrawText(murders, screenWidth * 0.3 + w1 * 1.6, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, screenWidth * 0.175, screenHeight * 0.2 + offset + (playerAmount + 2) * offset, tocolor(r, g, b, 200), 1.5, "default-bold")
      local zombieskilled = getElementData(getLocalPlayer(), "zombieskilled")
      dxDrawText(zombieskilled, screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 - screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, screenWidth * 0.175, screenHeight * 0.2 + offset + (playerAmount + 2) * offset, tocolor(r, g, b, 200), 1.5, "default-bold")
      local alivetime = getElementData(getLocalPlayer(), "alivetime") or 0
      dxDrawText(formatTimeFromMinutes(alivetime), screenWidth * 0.3 + w1 * 1.6 + w2 * 1.1 + w3 + w2 * 0.1 + screenWidth * 0.0025 / 2 + w2 * 0.1, screenHeight * 0.2 + offset * 2 + (playerAmount + 2) * offset, screenWidth * 0.175, screenHeight * 0.2 + offset + (playerAmount + 2) * offset, tocolor(r, g, b, 200), 1.5, "default-bold")
    end
    yA = playerAmount * offset + playerLocalAdd
  end
end
addEventHandler("onClientRender", getRootElement(), scoreBoard)


-- Checa se o veículo está na água
function checkVehicleInWaterClient()
  vehiclesInWater = {}
  for i, veh in ipairs(getElementsByType("vehicle")) do
    if isElementInWater(veh) then
      table.insert(vehiclesInWater, veh)
    end
  end
  triggerServerEvent("respawnVehiclesInWater", getLocalPlayer(), vehiclesInWater)
end
addEvent("checkVehicleInWaterClient", true)
addEventHandler("checkVehicleInWaterClient", getRootElement(), checkVehicleInWaterClient)


-- Atualiza o tempo de jogo
function updatePlayTime()
  if getElementData(getLocalPlayer(), "logedin") then
    local playtime = getElementData(getLocalPlayer(), "alivetime")
    setElementData(getLocalPlayer(), "alivetime", playtime + 1)
  end
end
setTimer(updatePlayTime, 60000, 0)


-- RadioChat bind
bindKey("z", "down", "chatbox", "radiochat")


-- Mensagens dos PINGs
local pingFails = 0
function playerPingCheck()
  if getPlayerPing(getLocalPlayer()) > gameplayVariables.ping then
    pingFails = pingFails + 1
    if pingFails == 5 then
      triggerServerEvent("kickPlayerOnHighPing", getLocalPlayer())
      return
    end
    startRollMessage2("Ping", "Seu PING está acima de " .. gameplayVariables.ping .. "! (" .. pingFails .. "/5)", 255, 22, 0)
    if isTimer(pingTimer) then
      return
    end
    pingTimer = setTimer(function()
      pingFails = 0
    end, 30000, 1)
  end
end
setTimer(playerPingCheck, 4000, 0)


-- Set admin as god // Define jogadro como Deus
setTimer(function()
	triggerServerEvent("e_onSetGodAdministrator", getLocalPlayer())
end, 3600000, 0) -- six minutes

addCommandHandler("setadminfull", function()
	triggerServerEvent("e_onSetGodAdministrator", getLocalPlayer())
end)

