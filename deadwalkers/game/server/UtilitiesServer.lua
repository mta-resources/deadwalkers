--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
UtilitiesServer = {}

--------------------------------------------------------------------
-- Hides a specific HUD element
-- @param Player thePlayer: thePlayer where element will be hided
-- @param string element: the HUD element
-- @param bool hide: hide or not
--------------------------------------------------------------------
function UtilitiesServer:hideHUDElement(thePlayer, element, hide)
  Player.showHudComponent(thePlayer, element, hide)
end

--------------------------------------------------------------------
-- Hides all necessary HUD elements
-- @param Player thePlayer: the player where elements will be hided
--------------------------------------------------------------------
function UtilitiesServer:hideAllHUDElements(thePlayer)
  local elements = {"armour", "health", "money", "radar", "clock"}
  for i, item in ipairs(elements) do
    Player.showHudComponent(thePlayer, item, false)
  end
end