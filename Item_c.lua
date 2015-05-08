-- --------------------------------------------------------
-- Almost everything on DayZ has a mod that changes his 
-- appearance. This function has a list of all items that 
-- will receive a mod and apply the mod to them.
-- --------------------------------------------------------
function DZ_ApplyModsToAllItems()
	local skinsFolder = "mods/"
	local itemsFolder = "items/"
	
	-- Syntax: folder, fileName, modelId
	local itemsToApply = {
		{skinsFolder, "ghillie_desert", 285},
		{skinsFolder, "ghillie_forest", 284},
		{skinsFolder, "army", 287},
		{skinsFolder, "civilian", 179},
		{skinsFolder, "bandit1", 180},
		{skinsFolder, "bandit2", 288},
		{skinsFolder, "standart", 73},
		{skinsFolder, "femalestandard", 191},
		{skinsFolder, "hero", 210},
		{skinsFolder, "staff", 217},
		{itemsFolder, "armor_clothes", 1272},	
		{itemsFolder, "army_clothes", 1247},			
		{itemsFolder, "sniper_clothes", 1213},			
		{itemsFolder, "civilian_clothes", 1241},			
		{itemsFolder, "standard_clothes", 1577},			
		{itemsFolder, "beans_can", 2601},			
		{itemsFolder, "first_aid_kit", 2891},			
		{itemsFolder, "gps", 2976},			
		{itemsFolder, "heat_pack", 1576},			
		{itemsFolder, "map", 1277},			
		{itemsFolder, "pain_killers", 2709},			
		{itemsFolder, "pasta_can", 2770},			
		{itemsFolder, "pistol_ammo", 3013},			
		{itemsFolder, "shotgun_ammo", 2358},			
		{itemsFolder, "backpack_small", 3026},			
		{itemsFolder, "smg_ammo", 2041},			
		{itemsFolder, "sniper_ammo", 2358},			
		{itemsFolder, "soda_can", 2647},			
		{itemsFolder, "water_bottle", 2683},			
		{itemsFolder, "assault_ammo", 1271},			
		{itemsFolder, "backpack_alice", 1248},
		{itemsFolder, "backpack_coyote", 1252},			
		{itemsFolder, "backpack_czech", 1575},			
		{itemsFolder, "tent", 3243},
		{itemsFolder, "watch", 2710},			
		{itemsFolder, "wirefence", 983},
		{itemsFolder, "wirefence_pickup", 933},
		{itemsFolder, "camera", 367},
		{itemsFolder, "katana", 339},
	}

	for i, line in ipairs(itemsToApply) do
		local txd = engineLoadTXD(line[1] .. line[2] .. ".txd")
					engineImportTXD(txd, line[3])
		local dff = engineLoadDFF(line[1] .. line[2] .. ".dff", line[3])
					engineReplaceModel(dff, line[3])
	end
end
addEventHandler("onClientResourceStart", resourceRoot, DZ_ApplyModsToAllItems)