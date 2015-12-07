--------------------------------------------------------------------
-- Gets the last player positions
--------------------------------------------------------------------
function dwGetLastPlayerPosition(thePlayer)
  if not thePlayer then return end

  -- Gets the player account
  local account = getPlayerAccount(thePlayer)
  if not account then return end

  -- Gets positions and returns them
  local x = getAccountData(account, "last_x")
  local y = getAccountData(account, "last_y")
  local z = getAccountData(account, "last_z")
  return x, y, z
end

--------------------------------------------------------------------
-- Gets the player skin
--------------------------------------------------------------------
function dwGetPlayerSkin(thePlayer)
  if not thePlayer then return end
  return getElementData(thePlayer, "skin") or 126
end