-- ---------------------------
-- Load all Addons
-- ---------------------------
function loadAddons( res )
	for resourceKey, resourceValue in ipairs(getResources()) do
		local name = getResourceName(resourceValue)
		if string.find(name,gameGlobals['addon_prefix']) or string.find(name, gameGlobals['base_prefix']) then
			setTimer(startResource, 2000, 1, resourceValue)
		end
	end
end
addEventHandler ( "onResourceStart", getResourceRootElement(getThisResource()), loadAddons )

-- ---------------------------
-- Unload all Addons
-- ---------------------------
function unloadAddons ( res )
	for resourceKey, resourceValue in ipairs(getResources()) do
		local name = getResourceName(resourceValue)
		if string.find(name,"DWaddon_") then
			stopResource(resourceValue)
		end
	end
end
addEventHandler("onResourceStop", getResourceRootElement(getThisResource()), unloadAddons)
