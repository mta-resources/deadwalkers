--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
ElementDataListShared = {
  properties = {
    skin = {"skin", 15},
    max_slots = {"max_slots", 8},
    primary_weapon = {"primary_weapon", false},
    secondary_weapon = {"secondary_weapon", false},
    tertiary_weapon = {"tertiary_weapon", false},
    armor = {"armor", 0}
  },
}

--------------------------------------------------------------------
-- Returns all properties
--------------------------------------------------------------------
function ElementDataListShared:getProperties()
  return self.properties
end