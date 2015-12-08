--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
VehicleServer = {
  accountPrefix = "Veh_",
  accountPassword = "abcd"
}

function VehicleServer:createVehicleAccount(id, vehicleName)
  local account = addAccount(self.accountPrefix .. vehicleName .. "_" .. id, self.accountPassword, false)
  if not account then
    -- @toDo: print error message
    return false
  end
  return true
end

function VehicleServer:createVehicle(type)
  local name = type.name
  for n, position in pairs(type["spawns"]) do
    local veh = Vehicle.create(type.model, position[1], position[2], position[3])
    local vehCol = ColShape.Sphere(position[1], position[2], position[3], 2)
    Element.setData(veh, "parent", vehCol)
    Element.setData(vehCol, "parent", veh)
    Element.setData(vehCol, "is_vehicle", true)
    Element.attach(vehCol, veh, 0, 0, 0)
    self:createVehicleAccount(n, type.name)
  end
end

function VehicleServer:spawnVehicles()
  local allVehicles = VehiclesConfig:getAllVehicles()
  for i, veh in pairs(allVehicles) do -- ipairs() doesn't work when you're navigating through an object
    self:createVehicle(veh)
  end
end

function VehicleServer:destroyVehicles()
  local allVehicles = Element.getAllByType("vehicle")
  for _, vehicle in ipairs(allVehicles) do
    Element.destroy(vehicle)
  end
end

--------------------------------------------------------------------
-- Event handlers which only calls functions of this class
--------------------------------------------------------------------
addEventHandler("onResourceStart", resourceRoot, function()
  VehicleServer:spawnVehicles()
end)

addEventHandler("onResourceStop", resourceRoot, function()
  VehicleServer:destroyVehicles()
end)