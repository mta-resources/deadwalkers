--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
ElementDataListShared = {
  categories = {
    -- pairs() doesn't order this object as should be, 
    -- so, this second value in each item is really needed
    primary_weapons = {"Primary Weapons", 1},
    secondary_weapons = {"Secondary Weapons", 2},
    special_weapons = {"Special Weapons", 3},
    ammo = {"Ammo", 4},
    items = {"Items", 5},
    food = {"Food", 6},
    others = {"Others", 7},
  },
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

function ElementDataListShared:getCategories()
  local reordered = {}
  for i, item in pairs(self.categories) do
    table.insert(reordered, item[2], item[1])
  end
  return reordered
end

function ElementDataListShared:getMaxSlotsProperty()
  return self.properties.max_slots[1]
end