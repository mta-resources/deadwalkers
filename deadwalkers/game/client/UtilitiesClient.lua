--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
UtilitiesClient = {}

--------------------------------------------------------------------
-- Sets label as bold and centered aligned
-- @param Label label: the label that will be modified
--------------------------------------------------------------------
function UtilitiesClient:createLabelCenteredAndBold(x, y, width, height, text, relative, parent)
  local label = GuiLabel.create(x, y, width, height, text, relative, parent)
  GuiElement.setProperty(label, "HorzFormatting", "HorzCentred")
  GuiElement.setFont(label, "default-bold-small")
  return label
end