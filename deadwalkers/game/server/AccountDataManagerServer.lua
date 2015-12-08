--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
AccountDataManagerServer = {
  lastX   = "last_x",
  lastY   = "last_y",
  lastZ   = "last_z",
  skin    = "skin"
}

--------------------------------------------------------------------
-- A custom "self", since, in some cases, self isn't available
--------------------------------------------------------------------
local obj = AccountDataManagerServer

--------------------------------------------------------------------
-- Saves all element data into an account
-- @param Player thePlayer:     the player whose account will be saved
-- @param table allElementData: table with values that will be saved
--------------------------------------------------------------------
function AccountDataManagerServer:saveAllElementDataInAccount(thePlayer, allElementData)
  local account = getPlayerAccount(thePlayer)
  for i, data in pairs(allElementData) do
    setAccountData(account, data[1], data[2])
  end
end

--------------------------------------------------------------------
-- Sets the last player position
-- @param Player thePlayer: the player
--------------------------------------------------------------------
function AccountDataManagerServer:setLastPosition(thePlayer)
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
function AccountDataManagerServer:getLastPosition(thePlayer)
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
function AccountDataManagerServer:getSkin(thePlayer)
  local skin = getAccountData(getPlayerAccount(thePlayer), self.skin) or 133
  return skin
end
