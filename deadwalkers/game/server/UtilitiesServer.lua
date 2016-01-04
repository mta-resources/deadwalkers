--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
UtilitiesServer = {}

function UtilitiesServer:hideHUDElement(thePlayer, element, hide)
  Player.showHudComponent(thePlayer, element, hide)
end

function UtilitiesServer:hideAllHUDElements(thePlayer)
  local elements = {"armour", "health", "money", "radar", "clock"}
  for i, item in ipairs(elements) do
    Player.showHudComponent(thePlayer, item, false)
  end
end