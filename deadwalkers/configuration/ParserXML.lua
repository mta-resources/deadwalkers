---------------------------------------------------------------
-- Stores the items.xml file path
---------------------------------------------------------------
local ITEMS_XML_NAME = "configuration/items.xml"

---------------------------------------------------------------
-- Stores the game items which will be parsed from XML
---------------------------------------------------------------
gameItems = {}
gameItems["weapons"]  = {}
gameItems["foods"]    = {}
gameItems["medics"]   = {}
gameItems["skins"]    = {}
gameItems["items"]    = {}
gameItems["utils"]    = {}

---------------------------------------------------------------
-- Just a parser which reads the .xml and allocs it into memory.
-- We don't think you'll like to change this function code.
---------------------------------------------------------------
function allocItems()
  outputChatBox("parseando")
  local rootNode = xmlLoadFile(ITEMS_XML_NAME)
  local categoryName
  local itemName
  local itemId
  local attrName

  for _, categoryNode in ipairs(xmlNodeGetChildren(rootNode)) do
    for _, itemNode in ipairs(xmlNodeGetChildren(categoryNode)) do
      categoryName = xmlNodeGetName(categoryNode)
      itemId = xmlNodeGetAttribute(itemNode, "id")
      gameItems[categoryName][itemId] = {}
      for _, attrNode in ipairs(xmlNodeGetChildren(itemNode)) do
        attrName = xmlNodeGetName(attrNode)
        gameItems[categoryName][itemId][attrName] = xmlNodeGetValue(attrNode)
      end
    end
  end
end
addEvent("parserXml", true)
addEventHandler("parserXml", resourceRoot, allocItems)

---------------------------------------------------------------
--
---------------------------------------------------------------
