--------------------------------------------------------------------
-- Global object which means the "class"
--------------------------------------------------------------------
VehicleServer = {}

function VehicleServer:spawnVehicles()
  local sanchez = VehiclesConfig:getSanchez()
  for _, pos in ipairs(sanchez.spawns) do
    Vehicle.create(468, pos[1], pos[2], pos[3])
  end
end

--------------------------------------------------------------------
-- Event handlers which only calls functions of this class
--------------------------------------------------------------------
addEventHandler("onResourceStart", resourceRoot, function()
  VehicleServer:spawnVehicles()
end)