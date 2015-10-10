--[[
	# ------------------------------------------------------------------------- #
	----* Items list - Translate here if you want to change item's names *-------
	# ------------------------------------------------------------------------- #
]]

	-- Primary Weapons
	Weapon_Shotgun 		= "Escopeta"
	Weapon_ShotgunAmmo 	= "Munição p/ Escopeta"
	Weapon_SawnOff 		= "Sawn-Off"
	Weapon_SawnOffAmmo 	= "Munição p/ Sawn-Off"
	Weapon_Spas			= "SPAS-12"
	Weapon_SpasAmmo 	= "Munição p/ SPAS-12"
	
	Weapon_M4 		= "M16A2"
	Weapon_M4Ammo	= "Munição p/ M16A2"
	Weapon_AK 		= "AK-47"
	Weapon_AKAmmo	= "Munição p/ AK-47"
	
	Weapon_Sniper 		= "Sniper"
	Weapon_SniperAmmo 	= "Munição p/ Sniper"
	Weapon_Country 		= "Country Rifle"
	Weapon_CountryAmmo 	= "Munição p/ Country"
	
	-- Secondary Weapons
	Weapon_Pistol		= "Pistola"
	Weapon_PistolAmmo 	= "Munição p/ Pistola"
	Weapon_Silenced 	= "Pistola Silenciosa"
	Weapon_SilencedAmmo = "Munição p/ P. Silenciosa"
	Weapon_Desert		= "Desert Eagle"
	Weapon_DesertAmmo 	= "Munição p/ Desert"
	
	Weapon_Uzi		= "Micro-Uzi"
	Weapon_UziAmmo	= "Munição p/ Micro-Uzi"
	Weapon_MP5		= "MP5"
	Weapon_MP5Ammo	= "Munição p/ MP5"
	
	Weapon_Knife	= "Faca"
	Weapon_Katana	= "Machado"
	Weapon_Baseball = "Taco de Beisebol"
	Weapon_Crowbar	= "Pé-de-Cabra"
	Weapon_Shovel	= "Pá"
	
	-- Special Weapons
	Weapon_Binoculars 	= "Binóculos"
	Weapon_Grenade		= "Granada"
	Weapon_TearGas		= "Gás Lacrimogêneo"
	Weapon_Parachute	= "Paraquedas"
	
	-- Food
	Item_Burger 	= "Hambúrguer"
	Item_Pizza		= "Pizza"
	Item_RawMeat	= "Carne Crua"
	Item_CookedMeat = "Carne Cozida"
	Item_PastaCan	= "Comida Enlatada"
	Item_BeansCan	= "Feijão Enlatado"
	
	Item_FullWaterBottle 	= "Garrafa D'água"
	Item_EmptyWaterBottle 	= "Garrafa D'água [vazia]"
	Item_SodaBottle 		= "Lata de Suco"
	Item_EmptySodaCan		= "Lata de Suco [vazia]"
	Item_Milk				= "Leite"
	
	-- Medics
	Item_MedicKit	= "Kit Médico"
	Item_Bandage	= "Curativo"
	Item_BloodBag	= "Bolsa de Sangue"
	Item_HeatPack	= "Bolsa c/ Água Quente"
	Item_Morphine	= "Morfina"
	Item_Painkiller = "Analgésico"
	
	-- Skins
	Skin_Survivor	= "Roupa de Sobrevivente"
	Skin_Civilian	= "Roupa de Civil"
	Skin_GhillieDesert	= "Ghillie Suit (Deserto)"
	Skin_GhillieForest	= "Ghillie Suit (Floresta)"
	Skin_Military	= "Roupa Militar"
	
	-- Items
	Item_RoadFlare		= "Sinalizador"
	Item_WoodPile		= "Lenha"
	Item_ScruffyBurger 	= "Comida Estragada"
	Item_EmptyPatrol 	= "Gasolina [vazio]"
	Item_FullPatrol		= "Gasolina [cheio]"
	Item_WireFence		= "Cerca de Arame"
	Item_Tent			= "Tenda"
	Item_Tire			= "Pneu"
	Item_Armor			= "Colete"
	Item_CDKRose		= "CD: K-Rose"
	
	-- Utils
	Item_Watch		= "Relógio"
	Item_GPS		= "GPS"
	Item_Map		= "Mapa"
	Item_Toolbox	= "Ferramentas"
	Item_BoxOfMatches	= "Caixa de Fósforo"
	Item_Radio		= "Rádio"
	Item_NightVision	= "Visão Noturna"
	Item_InfraredVision = "Visão de Calor"
	
	-- Database keys
	DB_TireInVehicle	= "Pneu_inVehicle" -- Must be the SAME, SAME value of "Item_Tire". SAME value
	DB_EngineInVehicle	= "Motor_inVehicle" -- Must be the SAME, SAME value of "Item_Engine". SAME value
		--[[ What does this do? Simple ... in some parts of the code, the code reuses the name of the item to reference the database. 
		So the name of the item must be the name in the database. ]]
	



ZombiePedSkins = {13,22,56,67,68,69,70,92,97,105,107,108,126,127,128,152,162,167,188,195,206,209,212,229,230,258,264,277,280 } --ALTERNATE SKIN LISTS FOR ZOMBIES (SHORTER LIST IS TEXTURED ZOMBIES ONLY)

setElementData(getRootElement(),"zombiestotal",0)
setElementData(getRootElement(),"zombiesalive",0)
createTeam("Zombies")

itemTableZombies = {
{Item_BoxOfMatches,328,0.4,90,5},
{Item_WoodPile,1463,0.4,0,5},
{Weapon_Pistol,346,1,90,0.4},
{Weapon_Silenced,347,1,90,0.4},
{Weapon_Shotgun,349,1,90,0.4},
{Weapon_Uzi,352,1,90,0.3},
{Weapon_Knife,335,1,90,7},
{Weapon_Hatchet,339,1,90,7},
{Item_Pizza,1582,1,0,7},
{Item_SodaBottle,2647,1,0,7},
{Item_EmptyPatrol,1650,1,0,5},
{Item_Roadflare,324,1,90,9},
{Item_Milk,2856,1,0,5},
{"Assault Pack (ACU)",3026,0.5,0,6},
{Item_Painkiller,2709,0.5,0,7},
{Item_EmptySodaCan,2673,0.5,0,6},
{Item_ScruffyBurger,2675,0.5,0,6},
{Weapon_Grenade,342,1,0,0.5},
{Weapon_Desert,348,1,90,0.3},
{Weapon_SawnOff,350,1,90,0.2},
{Weapon_Spas,351,1,90,0.2},
{Weapon_MP5,353,1,90,0.1},
{Item_Watch,2710,1,0,3},
{Item_HeatPack,1576,1,0,6},
{Item_WireFence,933,0.25,0,1},
{Weapon_Country,357,1,90,0.2},
{"Alice Pack",3026,1,0,0.5},
{Item_Tire,1073,1,0,1},
{Item_Morphine,1579,1,0,2},
{Skin_Civilian,1577,1,0,12},
{Item_Map,1277,0.8,90,4},
{Item_GPS,2976,0.15,0,1},
{Item_PastaCan,2770,0.1,0,5},
{Item_BeansCan,2601,1,0,5},
{Item_Burger,2768,1,0,2},
{Item_Radio,2966,0.5,0,3},
{Weapon_Crowbar,333,1,90,0.5},
{Weapon_Baseball,336,1,90,0.5},
{Weapon_Shovel,337,1,90,0.5},
}


function createZombieTable (player)
		--createtabel
		setElementData(player,"playerZombies",{"no","no","no","no","no","no","no","no","no"})
		setElementData(player,"spawnedzombies",0)
end


-- Creates zombie on map // Cria zumbi no mapa
function createZomieForPlayer (x,y,z)
	x,y,z = getElementPosition(source)
	counter = 0
	if getElementData(source,"lastzombiespawnposition") then
		local xL,yL,zL = getElementData(source,"lastzombiespawnposition")[1] or false,getElementData(source,"lastzombiespawnposition")[2] or false,getElementData(source,"lastzombiespawnposition")[3] or false
		if xL then
			if getDistanceBetweenPoints3D (x,y,z,xL,yL,zL) < 50 then
				--outputChatBox("Server: canceled zombie create (reason: is near old position)")
				return
			end
		end
	end	
	if getElementData(source,"spawnedzombies")+3 <= gameplayVariables["playerzombies"] then -- If spawned zombies + 3 lower or equal to 9 -> Create zombies -> Increase digit (default: 9) to let more zombies spawn. WARNING: THE HIGHER THE VALUE, THE MORE LAG CAN OCCUR!
	for i = 1, gameplayVariables["amountzombies"] do --Amount of zombies to be spawned (default: 3) WARNING: THE HIGHER THE VALUE, THE MORE LAG CAN OCCUR!
		counter = counter+1
		local number1 = math.random(-50,50)
		local number2 = math.random(-50,50)
		if number1 < 18 and number1 > -18 then
			number1 = 20
		end
		if number2 < 18 and number2 > -18 then
			number2 = -20
		end
		randomZskin = math.random ( 1, table.getn ( ZombiePedSkins ) )	
		zombie = call (getResourceFromName("slothbot"),"spawnBot",x+number1,y+number2,z,math.random(0,360),ZombiePedSkins[randomZskin],0,0,getTeamFromName("Zombies"))
		setElementData(zombie,"zombie",true)
		setElementData(zombie,"blood",gameplayVariables["zombieblood"]) -- [ID:0000009 - Zombie menace] //L
		setElementData(zombie,"owner",source)
		call ( getResourceFromName ( "slothbot" ), "setBotGuard", zombie, x+number1,y+number2,z, false)
		--outputChatBox("Server: zombie created (reason: )")
		-------------------
	end
	setElementData(source,"lastzombiespawnposition",{x,y,z})
	setElementData(source,"spawnedzombies",getElementData(source,"spawnedzombies")+3)
	end
end
addEvent("createZomieForPlayer",true)
addEventHandler("createZomieForPlayer",getRootElement(),createZomieForPlayer)


function zombieCheck1 ()
for i,ped in ipairs(getElementsByType("ped")) do
	if getElementData(ped,"zombie") then 
		goReturn = false
		local zombieCreator = getElementData(ped,"owner")
		if not isElement(zombieCreator) then 
			outputDebugString("test")
			setElementData ( ped, "status", "dead" )	
			setElementData ( ped, "target", nil )
			setElementData ( ped, "leader", nil )
			destroyElement(ped)
			goReturn = true
		end
		if not goReturn then
		local xZ,yZ,zZ = getElementPosition(getElementData(ped,"owner"))
		local x,y,z = getElementPosition(ped)
		if getDistanceBetweenPoints3D (x,y,z,xZ,yZ,zZ) > 60 then
			if getElementData(zombieCreator,"spawnedzombies")-1 >= 0 then
				setElementData(zombieCreator,"spawnedzombies",getElementData(zombieCreator,"spawnedzombies")-1)
			end	
			setElementData ( ped, "status", "dead" )	
			setElementData ( ped, "target", nil )
			setElementData ( ped, "leader", nil )
			destroyElement(ped)
		end
		end
	end				
end		
end
setTimer(zombieCheck1,20000,0)

function botAttack (ped)
	call ( getResourceFromName ( "slothbot" ), "setBotFollow", ped, source)
end
addEvent("botAttack",true)
addEventHandler("botAttack",getRootElement(),botAttack)

function botStopFollow (ped)
	local x,y,z = getElementPositon(ped)
	call ( getResourceFromName ( "slothbot" ), "setBotGuard", ped, x, y, z, false)
end
addEvent("botStopFollow",true)
addEventHandler("botStopFollow",getRootElement(),botStopFollow)

function outputChange(dataName,oldValue)
	if getElementType(source) == "player" then -- check if the element is a player
		if dataName == "spawnedzombies" then
			local newValue = getElementData(source,dataName) -- find the new value
			outputChatBox(oldValue.." to "..newValue) -- output the change for the affected player
		end
	end
end
--addEventHandler("onElementDataChange",getRootElement(),outputChange)

function destroyTable ()
for i,ped in ipairs(getElementsByType("ped")) do
	if getElementData(ped,"zombie") then 
		if getElementData(ped,"owner") == source then
			setElementData(getElementData(ped,"owner"),"spawnedzombies",getElementData(getElementData(ped,"owner"),"spawnedzombies")-1)
			setElementData ( ped, "status", "dead" )
			setElementData ( ped, "target", nil )
			setElementData ( ped, "leader", nil )
			destroyElement(ped)
		end
	end				
end
end
--addEventHandler("kilLDayZPlayer",getRootElement(),destroyTable)
--addEventHandler("onPlayerQuit",getRootElement(),destroyTable)

function destroyDeadZombie (ped,pedCol)
	destroyElement(ped)
	destroyElement(pedCol)
end


-- When zombie dies // Quando zumbi morre
function zombieKilled (killer,headshot)
--outputChatBox("Server: destroyed zombie (reason: zombie died)")
	if killer then
		setElementData(killer,"zombieskilled",getElementData(killer,"zombieskilled")+1)
	end	
		local skin = getElementModel(source)
		local x,y,z = getElementPosition(source)
		local ped = createPed(skin,x,y,z)
		local pedCol = createColSphere(x,y,z,1.5)
		killPed(ped)
		setTimer(destroyDeadZombie,360000 ,1,ped,pedCol)
		attachElements (pedCol,ped,0,0,0)
		setElementData(pedCol,"parent",ped)
		-- setElementData(pedCol,"playername","Zombie")
		setElementData(pedCol,"playername","Zumbi")
		setElementData(pedCol,"deadman",true)
		setElementData(ped,"deadzombie",true)
		setElementData(pedCol,"deadman",true)
		
		local hours, minutes = getTime()
		if minutes < 10 then
			minutes = "0"..tostring(minutes)
		end
		setElementData(pedCol,"deadreason","Parece que está finalmente morto! Morreu aproximadamente às "..hours..":"..minutes..".")
		
		for i, item in ipairs(itemTableZombies) do
			local value =  math.percentChance (item[5]/2.5,1)
			setElementData(pedCol,tostring(item[1]),value)
			--weapon Ammo
			local ammoData,weapID = getWeaponAmmoType (item[1],true)
			if ammoData and value > 0 then
				setElementData(pedCol,ammoData,1)
			end
		end
		local zombieCreator = getElementData(source,"owner")
		setElementData(zombieCreator,"spawnedzombies",getElementData(zombieCreator,"spawnedzombies")-1)
		destroyElement(source)
		if headshot == true then
			setElementData(killer,"headshots",getElementData(killer,"headshots")+1)
		end	
end
addEvent("onZombieGetsKilled",true)


-- If you don't want your zombies walking like a drunk man, you should remove those functions below.

-- What zombies do when following players // Como se comporta o zumbi enquanto persegue jogadores
function Zomb_chase (ped, Zx, Zy, Zz )
    if isElement(ped) then
        if (getElementData ( ped, "status" ) == "chasing") and (getElementData (ped, "zombie") == true) then
        
        
            local x, y, z = getElementPosition( ped )
            if (getElementData ( ped, "target" ) == nil) and getElementData ( ped, "Tx" ) ~= false then         
                local Px = getElementData ( ped, "Tx" )
                local Py = getElementData ( ped, "Ty" )
                local Pz = getElementData ( ped, "Tz" )
                local Pdistance = (getDistanceBetweenPoints3D( Px, Py, Pz, x, y, z ))
                if (Pdistance < 1.5 ) then
                    setTimer ( function (ped) if ( isElement ( ped ) ) then setElementData ( ped, "status", "idle" ) end end, 2000, 1, ped )
                end
            end
            
            
            local distance = (getDistanceBetweenPoints3D( x, y, z, Zx, Zy, Zz ))            
            if (distance < 1 ) then -- IF THE PED HASNT MOVED
                if (getElementData ( ped, "target" ) == nil) then
                    local giveup = math.random( 1, 15 )
                    if giveup == 1 then
                        setElementData ( ped, "status", "idle" )
                    else
                        local action = math.random( 1, 2 )
                        if action == 1 then
                            setPedAnimation ( ped )
                            --triggerClientEvent ( "Zomb_Punch", getRootElement(), ped )
                            setTimer ( function (ped) if ( isElement ( ped ) ) then setPedAnimation ( ped, "ped", "WALK_drunk", -1, true, true, true ) end end, 800, 1, ped )
                            setTimer ( Zomb_chase, 2000, 1, ped, x, y, z )
                        elseif action == 2 then
                            setPedAnimation ( ped )
                           -- triggerClientEvent ( "Zomb_Jump", getRootElement(), ped )
                            setTimer ( Zomb_chase, 3500, 1, ped, x, y, z )
                        end
                    end
                else 
                    local Ptarget = (getElementData ( ped, "target" ))
                    if isElement(Ptarget) then
                        local Px, Py, Pz = getElementPosition( Ptarget )
                        local Pdistance = (getDistanceBetweenPoints3D( Px, Py, Pz, Zx, Zy, Zz ))
                        if (Pdistance < 1.2 ) then -- Atacar jogadores se eles estão perto
                         if ( isPedDead ( Ptarget ) ) then --Comer o jogador morto
                                setPedAnimation ( ped )
                                setPedAnimation ( ped, "MEDIC", "cpr", -1, false, true, false)
                                setTimer ( function (ped) if ( isElement ( ped ) ) then setElementData ( ped, "status", "idle" ) end end, 10000, 1, ped )
                                setTimer ( function (ped) if ( isElement ( ped ) ) then setPedRotation ( ped, getPedRotation(ped)-180) end end, 10000, 1, ped )
                         else
                               
                            
                            
                             if (Pdistance < .8 )then
                                local action = math.random( 1, 6 )
                                if action == 1 then
                                    setPedAnimation ( ped)
                                    --triggerClientEvent ( "Zomb_Jump", getRootElement(), ped )
                                    setTimer ( Zomb_chase, 2000, 1, ped, x, y, z )
                                else
                                    setPedAnimation ( ped)

                                    --triggerClientEvent ( "Zomb_Punch", getRootElement(), ped )
                                    --triggerClientEvent ( "zumbihit", Ptarget)
                                    --randdamagee = math.random(600,800) -- DEFAULT: math.random(2000,5000)
                                    --setElementData(Ptarget, "blood", getElementData(Ptarget, "blood") - randdamagee)
                                    
                                    
                                    setTimer ( function (ped) if ( isElement ( ped ) ) then setPedAnimation ( ped, "ped", "WALK_drunk", -1, true, true, true ) end end, 800, 1, ped )
                                    setTimer ( Zomb_chase, 1000, 1, ped, x, y, z )
                                end
                             end
                                
                                
                                
                                
                                
                         end
                        else
                            if ( isPedDead (Ptarget) ) then
                            setTimer ( function (ped) if ( isElement ( ped ) ) then setElementData ( ped, "status", "idle" ) end end, 2000, 1, ped )
                            setTimer ( function (ped) if ( isElement ( ped ) ) then setPedRotation ( ped, getPedRotation(ped)-180) end end, 1800, 1, ped )
                            else
                                local action = math.random( 1, 2 )
                                if action == 1 then
                                    setPedAnimation ( ped)
                                    --triggerClientEvent ( "Zomb_Punch", getRootElement(), ped )
                                    setTimer ( function (ped) if ( isElement ( ped ) ) then setPedAnimation ( ped, "ped", "WALK_drunk", -1, true, true, true ) end end, 800, 1, ped )
                                    setTimer ( Zomb_chase, 2000, 1, ped, x, y, z )
                                elseif action == 2 then
                                    setPedAnimation ( ped)
                                    --triggerClientEvent ( "Zomb_Jump", getRootElement(), ped )
                                    setTimer ( Zomb_chase, 2000, 1, ped, x, y, z )
                                end
                            end
                        end
                    else
                        setElementData ( ped, "status", "idle" )
                    end
                end
            else
                setPedAnimation ( ped, "ped", "WALK_drunk", -1, true, true, true) --KEEP WALKING
                setTimer ( Zomb_chase, 2000, 1, ped, x, y, z ) --CHECK AGAIN
            end
        end
    end
end
addEventHandler("onZombieGetsKilled",getRootElement(),zombieKilled)


-- When data changes // Quando muda o data
addEventHandler ( "onElementDataChange", getRootElement(),
function ( dataName )
    if getElementType ( source ) == "ped" and dataName == "status" then
        if (getElementData (source, "zombie") == true) then
            if ( isPedDead ( source ) == false ) then
                if (getElementData ( source, "status" ) ==  "chasing" ) then
                    local Zx, Zy, Zz = getElementPosition( source )
                    setTimer ( Zomb_chase, 1000, 1, source, Zx, Zy, Zz )
                    local newtarget = (getElementData ( source, "target" ))
                    if isElement (newtarget) then
                        if getElementType ( newtarget ) == "player" then
                            setElementSyncer ( source, newtarget )
                        end
                    end
                elseif (getElementData ( source, "status" ) ==  "idle" ) then
                   -- setTimer ( Zomb_Idle, 1000, 1, source)
                elseif (getElementData ( source, "status" ) ==  "throatslashing" ) then
                    local tx,ty,tz = getElementPosition( source )
                    local ptarget = getElementData ( source, "target" )
                    if isElement(ptarget) then
                        local vx,vy,vz = getElementPosition( ptarget )
                        local zombdistance = (getDistanceBetweenPoints3D (tx, ty, tz, vx, vy, vz))
                        
                        if (zombdistance < .8) then
                        
                        --if getElementData(ptarget, "Helmet") >= 1 then
                            --outputChatBox ( "Tem ocapacete, não leva Mordida", player, 0, 238, 0, true )  
                            --setElementData ( source, "status", "idle" )                          
                            --else
                            --outputChatBox ( "Não tem o capacete, entao leva Mordida", player, 0, 238, 0, true )
                            randdamagee = math.random(4000,7500) -- DEFAULT: math.random(2000,5000)
                            setElementData(ptarget, "blood", getElementData(ptarget, "blood") - randdamagee)
                            setElementData(ptarget, "bleeding", 50)

                            

                            if randdamagee > 5500 then
                            setElementData(ptarget, "pain", true)
                            setPedAnimation ( source, "knife", "KILL_Knife_Player", -1, false, false, true)
                            setPedAnimation(ptarget, "knife", "KILL_Knife_Ped_Damage", nil, false, false, nil, false)
                            --triggerClientEvent ( "zumbihit", ptarget)
                            setTimer ( Playerthroatbitten, 2300, 1, ptarget, source)
                            end
                                
                            if randdamagee < 4499 then
                            setPedAnimation ( source, "knife", "KILL_Knife_Player", -1, false, false, true)
                            setPedAnimation(ptarget, "knife", "KILL_Knife_Ped_Damage", nil, false, false, nil, false) 
                            --triggerClientEvent ( "zumbihit", ptarget)
                            --setPedAnimation(ptarget, "BOMBER", "BOM_Plant", nil, false, false, nil, false) 
                            setTimer ( Playerthroatbitten, 2300, 1, ptarget, source)
                            
                            end
                            
                            if getElementData(ptarget, "blood") <= 3000 and getElementData(ptarget, "blood") > 0 and not getElementData(ptarget, "isDead") == true then
                            --outputChatBox("Desmaiado por zumbi!", ptarget, 27, 89, 224, true)
                            timeinComa = "14000" -- 15 segundos
                            triggerEvent("putPlayerInComa", ptarget, timeinComa)
                            
                            end
                            
                            
                            if getElementData(ptarget, "blood") <= 0 and not getElementData(ptarget, "isDead") == true then 
                            --outputChatBox ( "Player Morreu", player, 0, 238, 0, true )
                            setTimer ( function (source) if ( isElement ( source ) ) then setElementData ( source, "status", "idle" ) end end, 5000, 1, source )
                            
                            else
                            --outputChatBox ( "Player Não Morre", player, 0, 238, 0, true )
                            setElementData ( source, "status", "idle" )  
                            --setElementData ( source, "status", "chasing" )
                            end
                            --end
                            
                            
                            
                        else
                            setElementData ( source, "status", "idle" )
                        end
                    else
                        setElementData ( source, "status", "idle" )
                    end
                end
            elseif (getElementData ( source, "status" ) ==  "dead" ) then
            --setTimer ( Zomb_delete, 10000, 1, source)
            end
        end
    end
end)