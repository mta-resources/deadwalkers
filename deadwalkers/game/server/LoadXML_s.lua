-------------------------------------------------------------
-- Loads items.xml file
-------------------------------------------------------------
addEventHandler("onResourceStart", resourceRoot, function()
	triggerEvent("parserXml", resourceRoot)
end)