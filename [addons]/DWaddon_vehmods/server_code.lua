for i, v in ipairs ( getElementsByType ( "player" ) ) do
	setElementData ( v, "PlayerIpAddress", getPlayerIP ( v ) )
end

addEventHandler ( "onPlayerJoin", root, function ( )
	setElementData ( source, "PlayerIpAddress", getPlayerIP ( source ) )
end )




-- Check for update
callRemote("http://community.mtasa.com/mta/resources.php", function(name, version) 
	local thisVer = tonumber(string.sub(getResourceInfo(getThisResource(),"version"),1,3))
	local itVer = tonumber(string.sub(version,1,3))
	if ( itVer > thisVer ) then
		outputChatBox(getResourceName(getThisResource()).." is outdated. Your version: "..thisVer.." | Current: "..version)
		outputChatBox("Please download the update @ http://community.multitheftauto.com/index.php?p=resources&s=details&id=8249")
	end
end, "version", "modsys")