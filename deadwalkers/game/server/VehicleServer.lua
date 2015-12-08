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

function VehicleServer:spawnVehicles()
  local sanchez     = VehiclesConfig:getSanchez()
  local vehicleName = sanchez.name
  for n, pos in ipairs(sanchez.spawns) do
    local vehicle     = Vehicle.create(468, pos[1], pos[2], pos[3])
    local vehColShape = ColShape.Sphere(pos[1], pos[2], pos[3], 2)
    Element.attach(vehColShape, vehicle, 0, 0, 0)
    self:createVehicleAccount(n, vehicleName)
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