--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
InventoryClient = {
  mainWindow,
  lootHeadline,
  lootGrid,
  lootGridColumn,
  lootGridAmount,
  lootButtonOne,
  lootButtonAll,
  lootSlots,
  playerHeadline,
  playerGrid,
  playerGridColumn,
  playerGridAmount,
  playerButtonOne,
  playerButtonAll,
  playerSlots
}

--------------------------------------------------------------------
-- A custom "self", since, in some cases, self isn't available
--------------------------------------------------------------------
local obj = InventoryClient

--------------------------------------------------------------------
-- Creates the inventory main GUI
--------------------------------------------------------------------
function InventoryClient:createWindow()
  self.mainWindow       = GuiWindow.create(0.15, 0.28, 0.72, 0.63, "", true)

  self.lootHeadline     = UtilitiesClient:createLabelCenteredAndBold(0.03, 0.06, 0.39, 0.09, "Loot", true, self.mainWindow)
  self.lootGrid         = guiCreateGridList(0.03, 0.1, 0.39, 0.83, true, self.mainWindow) -- GuiGridlist.create() isn't working yet
  self.lootGridColumn   = guiGridListAddColumn(self.lootGrid, "Loot", 0.7)
  self.lootGridAmount   = guiGridListAddColumn(self.lootGrid, "", 0.2)
  self.lootButtonOne    = GuiButton.create(0.42, 0.17, 0.04, 0.35, ">", true, self.mainWindow)
  self.lootButtonAll    = GuiButton.create(0.42, 0.52, 0.04, 0.35, ">>", true, self.mainWindow)
  self.lootSlots        = UtilitiesClient:createLabelCenteredAndBold(0.07, 0.94, 0.29, 0.04, "", true, self.mainWindow)
  self:createCategoriesTitles(self.lootGrid, self.lootGridColumn)

  self.playerHeadline   = UtilitiesClient:createLabelCenteredAndBold(0.6, 0.06, 0.34, 0.09, "Player's inventory", true, self.mainWindow)
  self.playerGrid       = guiCreateGridList(0.57, 0.1, 0.39, 0.83, true, self.mainWindow) -- GuiGridlist.create() isn't working yet
  self.playerGridColumn = guiGridListAddColumn(self.playerGrid, "Inventory", 0.7)
  self.playerGridAmount = guiGridListAddColumn(self.playerGrid, "", 0.2)
  self.playerButtonOne  = GuiButton.create(0.53, 0.17, 0.04, 0.35, "<", true, self.mainWindow)
  self.playerButtonAll  = GuiButton.create(0.53, 0.52, 0.04, 0.35, "<<", true, self.mainWindow)
  self.playerSlots      = UtilitiesClient:createLabelCenteredAndBold(0.62, 0.94, 0.29, 0.04, "", true, self.mainWindow)
  self:createCategoriesTitles(self.playerGrid, self.playerGridColumn)

  GuiElement.setVisible(self.mainWindow, false)
end

function InventoryClient:createCategoriesTitles(gridlist, column)
  for i, category in pairs(ElementDataListShared:getCategories()) do
    UtilitiesClient:createGridListRow(gridlist, column, category, true, false)
  end
end

function InventoryClient:refreshLoot(gridlist, column)
  
end

function InventoryClient:changeSlotsText(loot, label)
  GuiElement.setText(label, self:createSlotsText(loot))
end

function InventoryClient:createSlotsText(loot)
  return "Total spaces: " .. "0/" .. Element.getData(loot, ElementDataListShared:getMaxSlotsProperty())
end

--------------------------------------------------------------------
-- Changes inventory GUI visibility
--------------------------------------------------------------------
function InventoryClient:changeWindowVisibility()
  if GuiElement.getVisible(self.mainWindow) then 
    self:hideWindow()
  else 
    self:showWindow()
  end
end

--------------------------------------------------------------------
-- Shows the inventory GUI
--------------------------------------------------------------------
function InventoryClient:showWindow()
  self:changeSlotsText(getLocalPlayer(), self.playerSlots)
  self:refreshLoot(self.playerGrid, self.playerGridColumn)
  GuiElement.setVisible(self.mainWindow, true)
  showCursor(true)
end

--------------------------------------------------------------------
-- Hides the inventory GUI
--------------------------------------------------------------------
function InventoryClient:hideWindow()
  GuiElement.setVisible(self.mainWindow, false)
  UtilitiesClient:hideCursorIfNotGui()
end

--------------------------------------------------------------------
-- Event handlers which only calls functions of this class
--------------------------------------------------------------------
addEventHandler("onClientResourceStart", resourceRoot, function()
  obj:createWindow()
end)

addEventHandler("onClientColShapeHit", resourceRoot, function()
  -- to implement
end)

bindKey("j", "down", function()
  obj:changeWindowVisibility()
end)