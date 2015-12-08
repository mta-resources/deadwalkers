--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
UserDataManagerServer = {}

--------------------------------------------------------------------
-- Sets the last player position
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function UserDataManagerServer.setLastPlayerPosition(thePlayer)
  local account = getPlayerAccount(thePlayer)
  local x, y, z = getElementPosition(thePlayer)
  setAccountData(account, "last_x", x)
  setAccountData(account, "last_y", y)
  setAccountData(account, "last_z", z)
end

--------------------------------------------------------------------
-- Gets the last player position
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function UserDataManagerServer.getLastPlayerPosition(thePlayer)
  local account = getPlayerAccount(thePlayer)
  local x = getAccountData(account, "last_x")
  local y = getAccountData(account, "last_y")
  local z = getAccountData(account, "last_z")
  return x, y, z
end
