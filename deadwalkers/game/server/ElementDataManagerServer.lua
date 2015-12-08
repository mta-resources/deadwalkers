--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
ElementDataManagerServer = {}

--------------------------------------------------------------------
-- Saves all properties into element
-- @param Element element:  the element where data will be saved in
--------------------------------------------------------------------
function ElementDataManagerServer:saveAllPropertiesInElement(element)
  for i, prop in pairs(ElementDataListShared:getProperties()) do
    setElementData(element, prop[1], prop[2])
  end
end

--------------------------------------------------------------------
-- Gets element's max_slots
-- @param Element element:  element where data will be got from
--------------------------------------------------------------------
function ElementDataManagerServer:getMaxSlots(element)
  return getElementData(element, self.properties.max_slots)
end

--------------------------------------------------------------------
-- Sets element's max_slots
-- @param Element element:  element where data will be saved in
-- @param all value:        value which will be saved
--------------------------------------------------------------------
function ElementDataManagerServer:setMaxSlots(element, value)
  setElementData(element, self.properties.max_slots, value)
end