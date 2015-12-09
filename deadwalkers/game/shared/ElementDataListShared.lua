--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
ElementDataListShared = {
  categories = {
    primary_weapons = "Primary Weapons",
    secondary_weapons = "Secondary Weapons",
    special_weapons = "Special Weapons",
    ammo = "Ammo",
    items = "Items",
    food = "Food",
    others = "Others"
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
  return self.categories
end

function ElementDataListShared:getMaxSlotsProperty()
  return self.properties.max_slots[1]
end