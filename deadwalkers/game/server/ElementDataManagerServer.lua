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
    Element.setData(element, prop[1], prop[2])
  end
end

--------------------------------------------------------------------
-- Gets all properties from account data and saves them into element
-- @param Account account:  element's account
-- @param Element account:  element itself
--------------------------------------------------------------------
function ElementDataManagerServer:saveAllPropertiesFromAccountData(account, element)
  for i, property in pairs(ElementDataListShared:getProperties()) do
    local value = getAccountData(account, property[1]) or property[2]
    Element.setData(element, property[1], value)
  end
end

--------------------------------------------------------------------
-- Gets element's max_slots
-- @param Element element:  element where data will be got from
--------------------------------------------------------------------
function ElementDataManagerServer:getMaxSlots(element)
  return Element.getData(element, self.properties.max_slots)
end

--------------------------------------------------------------------
-- Sets element's max_slots
-- @param Element element:  element where data will be saved in
-- @param all value:        value which will be saved
--------------------------------------------------------------------
function ElementDataManagerServer:setMaxSlots(element, value)
  Element.setData(element, self.properties.max_slots, value)
end