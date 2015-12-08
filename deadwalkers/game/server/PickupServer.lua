--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
PickupServer = {}

function PickupServer:spawnItems()
  local industrial  = PickupsConfig:getIndustrialSpawns()
  local residential = PickupsConfig:getResidentialSpawns()
  local military    = PickupsConfig:getMilitarySpawns()
  local supermarket = PickupsConfig:getSupermarketSpawns()
  local farm        = PickupsConfig:getFarmSpawns()

  for _, item in ipairs(industrial) do
    self:createItemLoot("industrial", item[1], item[2], item[3])
  end

  for _, item in ipairs(residential) do
    self:createItemLoot("residential", item[1], item[2], item[3])
  end

  for _, item in ipairs(military) do
    self:createItemLoot("military", item[1], item[2], item[3])
  end

  for _, item in ipairs(supermarket) do
    self:createItemLoot("supermarket", item[1], item[2], item[3])
  end
end

function PickupServer:createItemLoot(type, x, y, z)
  local colSphere = ColShape.Sphere(x, y, z, 1.25)
  setElementData(colSphere, "is_loot", true)
  setElementData(colSphere, "max_slots", 12)
end

--------------------------------------------------------------------
-- Event handlers which only calls functions of this class
--------------------------------------------------------------------
addEventHandler("onResourceStart", resourceRoot, function()
  PickupServer:spawnItems()
end)