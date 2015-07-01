--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script addons.lua					*----
----* Núcleo: Marwin W., Germany, Lower Saxony, Otterndorf	*----
----* Tradutor/Desenvolvedor: Stanley Sathler				*----
----*														*----
#---------------------------------------------------------------#
]]

--[[
addons = "DayZ Addons: "
function addAddonInfo (name,description)
		addons = addons.."| "..name.."| "
		setGameType (addons)
end

--night addon
function nightAddon1 ()
if gameplayVariables["enablenight"] then 
	addAddonInfo ("night","Night time with fading effect.")
end
end

function nightAddon () 
	setTimer(nightAddon1,10000,1)
end
nightAddon () 
]]



--Load Addons
function loadAddons( res )
	setGameType("MTA:DayZ")
	for resourceKey, resourceValue in ipairs(getResources()) do
	local name = getResourceName(resourceValue)
	if string.find(name,"DWaddon_") or string.find(name, "DWbase_") then
		setTimer(startResource,2000,1,resourceValue)
	end
end
end
addEventHandler ( "onResourceStart", getResourceRootElement(getThisResource()), loadAddons )

-- This line has nothing useful, and was added just for 
-- learning purposes (teaching how to use Git)

--[[
function unloadAddons ( res )
	for resourceKey, resourceValue in ipairs(getResources()) do
	local name = getResourceName(resourceValue)
	if string.find(name,"DWaddon_") then
		stopResource(resourceValue)
	end
end
end
addEventHandler ( "onResourceStop", getResourceRootElement(getThisResource()), unloadAddons )
]]