--[[ ****************************************************** ]]--
--[[              BASE PARA CLÃS - DEAD WALKERS             ]]--
--[[ ****************************************************** ]]--


function createBaseObjects()
	local base = createObject(8253, 931.5, 1876.69995, 13.6, 0, 0, 180)
	local gate = createObject(10841, 919.20001, 1876.5, 13.3, 0, 0, 90)
	local gx, gy, gz = getElementPosition(gate)
	setElementData(gate, "state", "closed")
	
	
	addCommandHandler("clanpro964", function(thePlayer)
	
		local px, py, pz = getElementPosition(thePlayer)
		local distance = getDistanceBetweenPoints3D(gx, gy, gz, px, py, pz)
	
		if distance < 15 then
			if getElementData(gate, "state") == "closed" then
				moveObject(gate, 2000, gx, gy, 7.4)
				setElementData(gate, "state", "open")
			elseif getElementData(gate, "state") == "open" then
				moveObject(gate, 2000, gx, gy, 13.3)
				setElementData(gate, "state", "closed")
			end
		else
			outputChatBox("Você está longe demais do portão e, portanto, não pode abrir/fechar a base.", thePlayer)
		end
	end)
	
end
addEventHandler("onResourceStart", resourceRoot, createBaseObjects)