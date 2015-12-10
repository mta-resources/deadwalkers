--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
WeaponsConfig = {
  categories = ElementDataListShared:getCategories(),
  weapons = {
    -- never change the id if you don't know what you're doing
    m4 = {
      id = "M4",
      category = ElementDataListShared:getPrimaryWeaponsCategory(),
      label = "M16A2",
    },
    ak47 = {
      id = "AK47",
      category = ElementDataListShared:getPrimaryWeaponsCategory(),
      label = "AK-47",
    },
    sniper = {
      id = "Sniper",
      category = ElementDataListShared:getPrimaryWeaponsCategory(),
      label = "Sniper",
    }
  },
}

function WeaponsConfig:getWeapons()
  return self.weapons
end

function WeaponsConfig.getM4()
  return self.weapons.m4
end

function WeaponsConfig:getAK47()
  return self.weapons.ak47
end

function WeaponsConfig:getSniper()
  return self.weapons.sniper
end
