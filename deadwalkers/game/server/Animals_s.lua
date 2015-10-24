--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script animals.lua					*----
----* Núcleo: Marwin W., Germany, Lower Saxony, Otterndorf	*----
----* Tradutor/Desenvolvedor: Stanley Sathler				*----
----*														*----
#---------------------------------------------------------------#
]]


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


animals = {
{-1350.775390625,-1070.8291015625,160.71176147461},
{-1369.1123046875,-1094.70703125,163.45556640625},
{-1431.8876953125,-1093.189453125,162.88122558594},
{-1456.1787109375,-1064.6630859375,168.23822021484},
{-1483.6357421875,-1024.376953125,170.4222869873},
{-1468.3408203125,-988.3291015625,192.51156616211},
{-1431.3173828125,-934.0478515625,201.39248657227},
{-1577.904296875,-1020.0693359375,143.08142089844},
{-1587.375,-1018.236328125,141.72036743164},
{-1590.380859375,-1040.8505859375,134.61396789551},
{-1581.958984375,-1072.4111328125,133.2043762207},
{-1584.595703125,-1106.2001953125,138.63221740723},
{-1550.591796875,-1137.1181640625,136.79585266113},
{-1498.1083984375,-1180.9814453125,125.67600250244},
{-1428.4541015625,-1225.892578125,106.43696594238},
{-411.271484375,-1338.080078125,25.689184188843},
{-373.59375,-1307.2568359375,26.628273010254},
{-372.1689453125,-1259.75,31.759468078613},
{-393.7333984375,-1195.427734375,60.393005371094},
{-417.9150390625,-1180.4599609375,63.334930419922},
{-433.0888671875,-1156.3349609375,61.920516967773},
{-336.744140625,-1267.5693359375,23.735641479492},
{-303.19140625,-1275.9599609375,10.24838924408},
{-233.025390625,-1235.2373046875,6.5470447540283},
{-193.0166015625,-1232.7568359375,10.130974769592},
{-176.25,-1223.6298828125,8.0039596557617},
{-166.5498046875,-1286.111328125,3.5691347122192},
{-969.5048828125,-1738.703125,77.557479858398},
{-966.748046875,-1776.2470703125,80.165809631348},
{-976.7177734375,-1808.9462890625,90.694877624512},
{-978.0849609375,-1827.4521484375,93.413543701172},
{-986.23046875,-1855.9130859375,85.224227905273},
{-1095.68359375,-1869.5302734375,86.347923278809},
{-1168.853515625,-1864.869140625,79.263336181641},
{-1221.1416015625,-1859.6591796875,76.356552124023},
{-650.044921875,-2077.580078125,28.14298248291},
{-632.34765625,-2062.50390625,32.527751922607},
{-537.833984375,-1992.03515625,47.49878692627},
{-498.4375,-1957.61328125,38.346961975098},
}

function spawnDayZAnimals()
	for i,animal in ipairs(animals) do
		local x,y,z = animal[1],animal[2],animal[3]
		ped = createPed(math.random(12,14),x,y,z)
		setElementData(ped,"animal",true)
	end
end	

spawnDayZAnimals()

function destroyDeadAnimalAndRespawn (ped,pedCol,x,y,z)
	destroyElement(ped)
	destroyElement(pedCol)
	ped = createPed(math.random(12,14),x,y,z)
	setElementData(ped,"animal",true)
end

function createDeadAnimal()
		local x,y,z = getElementPosition(source)
		local skin = getElementModel(source)
		local ped = createPed(skin,x,y,z)
		local pedCol = createColSphere(x,y,z,1.5)
		killPed(ped)
		setElementData(pedCol,"parent",ped)
		setElementData(pedCol,"playername","Animal")
		setElementData(pedCol,"deadman",true)
		setElementData(pedCol,"MAX_Slots",8)
		local hours, minutes = getTime()
		setElementData(pedCol,"deadreason","Este animal foi morto às "..hours..":"..minutes..".")
		if getElementModel(source) == 12 then
			setElementData(pedCol,Item_RawMeat,math.random(3,8))
		elseif getElementModel(source) == 13 then
			setElementData(pedCol,Item_RawMeat,math.random(1,4))
		elseif getElementModel(source) == 14 then
			setElementData(pedCol,Item_RawMeat,math.random(1,2))	
		end
		destroyElement(source)
		setTimer(destroyDeadAnimalAndRespawn,1800000,1,ped,pedCol,x,y,z)
end
addEvent("createDeadAnimal",true)
addEventHandler ( "createDeadAnimal",getRootElement(),createDeadAnimal)