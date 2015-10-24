function pedGetDamageDayZ(attacker, weapon, bodypart, loss, zombie)

	if attacker and attacker == getPedOccupiedVehicle(getLocalPlayer()) and not getElementData(source, "isDead") == true then
		attacker2 = getLocalPlayer()
		morloggg = false 
		if (bodypart == 9  or bodypart == 3 or bodypart == 4 or bodypart == 5 or bodypart == 6 or bodypart == 7 or bodypart == 8) then
			damagedd = math.random(550, 850)
		end 
    
		setElementData(source, "blood", getElementData(source, "blood") - damagedd) 
		
		local healthss = math.floor(getElementHealth(source))
		
		if healthss <= 35 then
			setElementData(source, "blood",0)
			morloggg = true 
			triggerServerEvent("onZombieGetsKilled", source, attacker2, headshot, zombie, weapon)
		end
		  
	  
		if getElementData(source, "blood") <= 0 and morloggg == false then
			triggerServerEvent("onZombieGetsKilled", source, attacker2, headshot, zombie, weapon)
		end    
    
	end
  
  
	if attacker and attacker == getLocalPlayer() then
		damage = 100
		morlog = false 
		if weapon == 37 then
			return
		end
		
		if weapon == 63 or weapon == 51 or weapon == 19 then
			setElementData(source, "blood", 0)
			if 0 >= getElementData(source, "blood") then
				triggerServerEvent("onZombieGetsKilled", source, attacker, zombie, weapon)
			end
			
		elseif weapon and weapon > 1 and attacker and getElementType(attacker) == "player" and getElementData(source, "animal") == false then
			damage = getWeaponDamage(weapon)
      
			-- if it was headshot
			if bodypart == 9 then
				headshot = true
  
				if (weapon == 24) or (weapon == 34) or  (weapon == 25) or (weapon == 26) or (weapon == 27) or (weapon == 339) then
					setPedHeadless(source, true)		   
					damage = damage * 1.5
				else
					damage = damage * 1.2 
				end   
        
			-- if it was on dorso
			elseif ( bodypart == 3 or bodypart == 4) then

				damage = damage * 0.2         
				headshot = false
				local idroupa = getElementModel ( source )		
				
			-- if it was on arms or legs
			elseif ( bodypart == 5 or bodypart == 6 or bodypart == 7 or bodypart == 8) then
				damage = damage * 0.1
				headshot = false
			   --outputChatBox ( "HIT no Braços ou Pernas", 255, 0, 0 ) -- We output a warning to him.
			end 
      

			setElementData(source, "blood", getElementData(source, "blood") - math.random(damage * 0.75, damage * 1.25))       --tira o dano de acordo com a variavel dano
      


			if getElementData(source, "blood") <= 0 and morlog == false and getElementData(source, "animal") == false then
				--outputChatBox ( "Zumbi Morreu ... ", 255, 255, 0 ) 
				triggerServerEvent("onZombieGetsKilled", source, attacker, headshot, zombie, weapon)
			end
		end
	end
end
addEventHandler("onClientPedDamage", getRootElement(), pedGetDamageDayZ)