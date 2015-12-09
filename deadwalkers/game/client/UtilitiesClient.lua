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

--------------------------------------------------------------------
-- This function is our best friend. It looks through all GUI elements 
-- in our resource, and changes cursor visibility, hiding only when 
-- there aren't any other GUI as visible.
--------------------------------------------------------------------
function UtilitiesClient:hideCursorIfNotGui()
  local state = false
  for _, gui in ipairs(getElementChildren(getResourceGUIElement())) do
    if isElement(gui) then
      if GuiElement.getVisible(gui) then 
        state = true
        break 
      end
    end
  end
  showCursor(state)
end