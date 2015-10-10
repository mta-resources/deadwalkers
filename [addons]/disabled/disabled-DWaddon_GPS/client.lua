--[[
    # Resource Name
	  Grand Theft Auto V | Radar
	# Author
	  Rage
	# Date created
	  25.04.2014
	# Last update
      17.07.2014	
	# Copyright (c)
	  If you edit it, then please respect me and keep
	  the credits.
--]]

local screenW,screenH = guiGetScreenSize()
local resW,resH = 1280,720
local sW,sH =  (screenW/resW), (screenH/resH)


    function drawRadar()
		
		--# Minimap		
        dxDrawImage(-9*sW, 533*sH, 301*sW, 180*sH, "img/radar_cover.png", 0, 0, 0)

	end
addEventHandler( "onClientRender", root, drawRadar)

addEventHandler( "onClientResourceStop", resourceRoot,
	function()
	    setPlayerHudComponentVisible ( "radar", true )
	end)