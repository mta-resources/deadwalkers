--------------------------------------------------------------------
-- Gamemode's name, which is named as deadwalkers by default
--------------------------------------------------------------------
local DEADWALKERS_GAMEMODE_NAME = "deadwalkers"

--------------------------------------------------------------------
-- Calls deadwalkers' login() function
-- @param Player player:  player that is trying to login
-- @param string user:    player's username
-- @param string pass:    player's password
--------------------------------------------------------------------
function login(player, user, pass)
  exports[DEADWALKERS_GAMEMODE_NAME]:login(player, user, pass, getResourceName(getThisResource()), "loginResponse")
end
addEvent("dwLoginServerEvent", true)
addEventHandler("dwLoginServerEvent", resourceRoot, login)

--------------------------------------------------------------------
-- Gets the response from Deadwalkers after try to login
-- This function needs to be exported in meta.xml
-- @param bool logged:      indicates if user was successfully logged or not
-- @param string response:  text containing a response
-- @param string type:      error type (e.g. successful or error)
--------------------------------------------------------------------
function loginResponse(logged, response, type)
  triggerClientEvent("dwLoginClientEvent", resourceRoot, logged, response, type)
end