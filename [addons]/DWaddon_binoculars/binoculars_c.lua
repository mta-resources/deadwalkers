local binocularsImage
local btnIsPressed = false

function f_onTarget()

	local sw,sh = guiGetScreenSize() -- gets screen size to make the vision fullscreen
	
	
		addEventHandler("onClientRender", root, function()
			
			if (btnIsPressed == true) then -- if right click is pressed
				binocularsImage = dxDrawImage(0,0,sw,sh,"binoculars.png")
				
				--[[
				addEventHandler("onClientKey", root, function(button, _)
					if (button == "mouse1") then
						cancelEvent()
					end
				end)
				]]
			end
			
		end)
		
end

function f_playerAims(button, pressOrRelease)

	-- button: button pressed
	-- pressOrRelease: if true, it's pressed. Otherwise, false, it's released.

	if ( button == "mouse2" ) then -- if button is equal to right click

		if ( getPedWeapon(localPlayer) == 43 ) then -- if the weapon is a camera
	
			if ( pressOrRelease == true ) then -- if the right click was pressed

				btnIsPressed = true
				f_onTarget()
				
			else

				if (binocularsImage ~= nil) then -- if the right click was released
					btnIsPressed = false -- right click is not pressed anymore
				end
				
			end
	
		end
		
	end
	
	-- This function doesn't allow the "shot" click, disarming the binoculars
	if ( button == "mouse1" ) then
		if (btnIsPressed) then
			cancelEvent()
		end
	end

end
addEventHandler("onClientKey", root, f_playerAims) -- when player press any button on their keyboard