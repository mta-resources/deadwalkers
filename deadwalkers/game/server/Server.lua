--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
Server = {}

addEventHandler("onResourceStart", resourceRoot, function()
  ElementDataListShared:addWeaponsToProperties()
end)