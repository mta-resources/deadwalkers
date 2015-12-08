--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
UserDataManagerServer = {
  lastX   = "last_x",
  lastY   = "last_y",
  lastZ   = "last_z",
  skin    = "skin"
}

--------------------------------------------------------------------
-- Sets the last player position
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function UserDataManagerServer:setLastPosition(thePlayer)
  local account = getPlayerAccount(thePlayer)
  local x, y, z = getElementPosition(thePlayer)
  setAccountData(account, self.lastX, x)
  setAccountData(account, self.lastY, y)
  setAccountData(account, self.lastZ, z)
end

--------------------------------------------------------------------
-- Gets the last player position
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function UserDataManagerServer:getLastPosition(thePlayer)
  local account = getPlayerAccount(thePlayer)
  local x = getAccountData(account, self.lastX)
  local y = getAccountData(account, self.lastY)
  local z = getAccountData(account, self.lastZ)
  return x, y, z
end

--------------------------------------------------------------------
-- Gets the player current skin
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function UserDataManagerServer:getSkin(thePlayer)
  local skin = getAccountData(getPlayerAccount(thePlayer), self.skin) or 133
  return skin
end
