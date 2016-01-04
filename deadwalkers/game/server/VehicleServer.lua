--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
VehicleServer = {
  accountPrefix = "Veh_",
  accountPassword = "abcd"
}

--------------------------------------------------------------------
-- Creates a vehicle account, so, things can be saved (like their 
-- positions) when resource is stopped
-- @param integer index:        just and index for create sequencial vehicles
-- @param string vehicleName:   name of the vehicle (e.g. Sanchez, Patriot) 
--------------------------------------------------------------------
function VehicleServer:createVehicleAccount(index, vehicleName)
  local account = addAccount(self.accountPrefix .. vehicleName .. "_" .. index, self.accountPassword, false)
  if not account then
    -- @toDo: print error message
    return false
  end
  return true
end

--------------------------------------------------------------------
-- Creates a vehicle itself and its colshape on map
-- @param VehiclesConfig.vehicles type: the vehicle (e.g. Sanchez, Patriot)
--------------------------------------------------------------------
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

--------------------------------------------------------------------
-- Gets all vehicles and creates them, one by one
--------------------------------------------------------------------
function VehicleServer:spawnVehicles()
  local allVehicles = VehiclesConfig:getAllVehicles()
  for i, veh in pairs(allVehicles) do -- ipairs() doesn't work when you're navigating through an object
    self:createVehicle(veh)
  end
end

--------------------------------------------------------------------
-- Saves all vehicles information
--------------------------------------------------------------------
function VehicleServer:saveAllVehicles()
  -- to be implemented
end

--------------------------------------------------------------------
-- 
--------------------------------------------------------------------
function VehicleServer:destroyVehicles()
  local allVehicles = Element.getAllByType("vehicle")
  for _, vehicle in ipairs(allVehicles) do
    Element.destroy(vehicle)
  end
end

--------------------------------------------------------------------
-- Turns off vehicle's engine
--------------------------------------------------------------------
function VehicleServer:engineOff(vehicle)
  Vehicle.setEngineState(vehicle, false)
end

--------------------------------------------------------------------
-- Turns on vehicle's engine
--------------------------------------------------------------------
function VehicleServer:engineOn(vehicle)
  Vehicle.setEngineState(vehicle, true)
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