--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
InventoryClient = {
  mainWindow,
  lootGrid,
  lootGridColumn,
  lootGridAmount,
  lootButtonOne,
  lootButtonAll,
  playerGrid,
  playerGridColumn,
  playerGridAmount,
  playerButtonOne,
  playerButtonAll
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

  self.lootGrid         = guiCreateGridList(0.03, 0.1, 0.39, 0.83, true, self.mainWindow) -- GuiGridlist.create() isn't working yet
  self.lootGridColumn   = guiGridListAddColumn(self.lootGrid, "Loot", 0.7)
  self.lootGridAmount   = guiGridListAddColumn(self.lootGrid, "", 0.2)
  self.lootButtonOne    = GuiButton.create(0.42, 0.17, 0.04, 0.35, ">", true, self.mainWindow)
  self.lootButtonAll    = GuiButton.create(0.42, 0.52, 0.04, 0.35, ">>", true, self.mainWindow)

  self.playerGrid       = guiCreateGridList(0.57, 0.11, 0.39, 0.83, true, self.mainWindow) -- GuiGridlist.create() isn't working yet
  self.playerGridColumn = guiGridListAddColumn(self.playerGrid, "Inventory", 0.7)
  self.playerGridAmount = guiGridListAddColumn(self.playerGrid, "", 0.2)
  self.playerButtonOne  = GuiButton.create(0.53, 0.17, 0.04, 0.35, "<", true, self.mainWindow)
  self.playerButtonAll  = GuiButton.create(0.53, 0.52, 0.04, 0.35, "<<", true, self.mainWindow)

  GuiElement.setVisible(self.mainWindow, false)
end

function InventoryClient:refreshPlayerItems()

end

--------------------------------------------------------------------
-- Changes inventory GUI visibility
--------------------------------------------------------------------
function InventoryClient:changeWindowVisibility()
  if GuiElement.getVisible(self.mainWindow) then self:hideWindow()
  else self:showWindow()
  end
end

--------------------------------------------------------------------
-- Shows the inventory GUI
--------------------------------------------------------------------
function InventoryClient:showWindow()
  GuiElement.setVisible(self.mainWindow, true)
  showCursor(true) -- to be removed
end

--------------------------------------------------------------------
-- Hides the inventory GUI
--------------------------------------------------------------------
function InventoryClient:hideWindow()
  GuiElement.setVisible(self.mainWindow, false)
  showCursor(false) -- to be removed
end

--------------------------------------------------------------------
-- Event handlers which only calls functions of this class
--------------------------------------------------------------------
addEventHandler("onClientResourceStart", resourceRoot, function()
  obj:createWindow()
end)

bindKey("j", "down", function()
  obj:changeWindowVisibility()
end)