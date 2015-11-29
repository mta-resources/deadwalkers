-------------------------------------------------------------
-- Loads items.xml file
-------------------------------------------------------------
addEventHandler("onClientResourceStart", resourceRoot, function()
	triggerEvent("parserXml", resourceRoot)
end)
