--------------------------------------------------------------------
-- Gets the player skin
--------------------------------------------------------------------
function dwGetPlayerSkin(thePlayer)
  if not thePlayer then return end
  return getElementData(thePlayer, "skin") or 126
end