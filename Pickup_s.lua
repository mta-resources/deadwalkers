getResourceRootElement(getThisResource())

--[[ table structure:
	[1] item name
	[2] item model
	[3] item scale
	[4] item rx position
	[5] percentage of spawn
]]
local itemTable = {
  farm = {
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      13
    },
    {
      Item_Bandage,
      1578,
      0.5,
      0,
      4
    },
    {
      Item_FullWaterBottle,
      2683,
      1,
      0,
      6
    },
    {
      Item_PastaCan,
      2770,
      1,
      0,
      6
    },
    {
      Item_BeansCan,
      2601,
      1,
      0,
      6
    },
    {
      Item_Burger,
      2768,
      1,
      0,
      6
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      9
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      10
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      4
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      8
    },
    {
      Weapon_Desert,
      348,
      1,
      90,
      0.2
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      4
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      0.5
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      4
    },
    {
      Item_Painkiller,
      2709,
      3,
      0,
      3.5
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      0.3
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      0.3
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      2.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      6
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      2
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  6
	}
  },
  residential = {
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  3
	},
    {
      Weapon_Pistol,
      346,
      1,
      90,
      1.5
    },
    {
      Weapon_Silenced,
      347,
      1,
      90,
      1.9
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      0.1
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      1
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      3
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      1
    },
    {
      Item_Pizza,
      1582,
      1,
      0,
      7
    },
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      9
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      9
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      7
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      Item_Painkiller,
      2709,
      3,
      0,
      7
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      Weapon_Grenade,
      342,
      1,
      0,
      0.01
    },
    {
      Weapon_Desert,
      348,
      1,
      90,
      0.4
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      0.3
    },
    {
      Weapon_Spas,
      351,
      1,
      90,
      0.4
    },
    {
      Weapon_MP5,
      353,
      1,
      90,
      0.4
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      Item_HeatPack,
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      0.3
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      1.5
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      9
    },
    {
      Item_Map,
      1277,
      1,
      0,
      10
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      3
    },
    {
      Item_PastaCan,
      2770,
      1,
      0,
      7
    },
    {
      Item_BeansCan,
      2601,
      1,
      0,
      7
    },
    {
      Item_Burger,
      2768,
      1,
      0,
      7
    },
    {
      Weapon_Crowbar,
      333,
      1,
      90,
      3
    },
    {
      Weapon_Baseball,
      336,
      1,
      90,
      3
    },
    {
      Weapon_Shovel,
      337,
      1,
      90,
      3
    }
  },
  military = {
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      2
    },
	{
	  Item_Armor,
	  1272,
	  2,
	  0,
	  1
	},
    {
      Weapon_Pistol,
      346,
      1,
      90,
      5
    },
    {
      Weapon_Silenced,
      347,
      1,
      90,
      4
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      3
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      4
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      2.4
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      2.1
    },
	--[[
    {
      Item_Pizza,
      1582,
      1,
      0,
      2
    },
	]]
	--[[
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      2
    },
	]]
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      4
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      4
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      1
    },
    {
      Item_Painkiller,
      2709,
      3,
      0,
      4
    },
	--[[
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
	]]
	--[[
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
	]]
    {
      Weapon_Grenade,
      342,
      1,
      0,
      0.5
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      2.3
    },
    {
      Weapon_Spas,
      351,
      1,
      90,
      2.3
    },
    {
      Weapon_MP5,
      353,
      1,
      90,
      4
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      4
    },
    {
      Item_HeatPack,
      1576,
      5,
      0,
      3
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      3.5
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      4
    },
    {
      Item_NightVision,
      368,
      1,
      90,
      4
    },
    {
      Weapon_Binoculars,
      369,
      1,
      0,
      4
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      2
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      4
    },
    {
      Skin_Military,
      1247,
      2,
      0,
      4.5
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3
    },
    {
      Weapon_AK,
      355,
      1,
      90,
      4.8
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      3
    },
    {
      Item_Map,
      1277,
      1,
      0,
      7
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      2
    },
    {
      "Motor",
      929,
      0.3,
      0,
      2
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      4.5
    },
    {
      Skin_GhillieDesert,
      1213,
      2,
      0,
      0.3
    },
	{
	  Skin_GhillieForest,
	  1213,
	  2,
	  0,
	  0.3
	},
    {
      Weapon_M4,
      356,
      1,
      90,
      3.8
    },
    {
      Weapon_Sniper,
      358,
      1,
      90,
      3.3
    },
    {
      Item_InfraredVision,
      369,
      1,
      90,
      3
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      5
    },
    {
      "Czech Backpack",
      1239,
      1,
      0,
      3
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      2
    },
    {
      Weapon_Shovel,
      337,
      1,
      90,
      1
    }
  },
  industrial = {
    {
      Item_WireFence,
      933,
      1,
      0,
      7
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      6
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      4
    },
    {
      "Motor",
      929,
      0.3,
      0,
      3.5
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      3
    },
    {
      Item_FullWaterBottle,
      2683,
      1,
      0,
      4
    },
    {
      Item_PastaCan,
      2770,
      1,
      0,
      4
    },
    {
      Item_BeansCan,
      2601,
      1,
      0,
      4
    },
    {
      Item_Burger,
      2768,
      1,
      0,
      4
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
	--[[
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      10
    },
	]]
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      4
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      6
    },
    {
      Item_FullPatrol,
      1650,
      1,
      0,
      1.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      3
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      2
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      2
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      1.5
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      2
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      2
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      1.5
    },
    {
      Item_Pizza,
      1582,
      1,
      0,
      4
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      5
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      4
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      1.1
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      Weapon_Crowbar,
      333,
      1,
      90,
      1.5
    },
    {
      Weapon_Baseball,
      336,
      1,
      90,
      1.5
    },
    {
      Weapon_Shovel,
      337,
      1,
      90,
      1.5
    },
    {
      Item_NightVision,
      368,
      1,
      90,
      1.5
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  3
	}
  },
  supermarket = {
    {
      Item_RawMeat,
      2804,
      0.5,
      90,
      8
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      3.5
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      2
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      3
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      2.1
    },
    {
      Item_Pizza,
      1582,
      1,
      0,
      7
    },
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      5
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      6
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      7
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      Item_PastaCan,
      2770,
      1,
      0,
      7
    },
    {
      Item_BeansCan,
      2601,
      1,
      0,
      7
    },
    {
      Item_Burger,
      2768,
      1,
      0,
      7
    },
    {
      Item_Painkiller,
      2709,
      3,
      0,
      7
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      Weapon_MP5,
      353,
      1,
      90,
      0.5
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      Item_HeatPack,
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      0.2
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      3
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      4
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      1
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      Weapon_Crowbar,
      333,
      1,
      90,
      1.9
    },
    {
      Weapon_Baseball,
      336,
      1,
      90,
      1.4
    },
    {
      Weapon_Shovel,
      337,
      1,
      90,
      0.3
    }
  },
  other = {
    {
      Item_RawMeat,
      2804,
      0.5,
      90
    },
    {
      Item_CookedMeat,
      2806,
      0.5,
      90
    },
    {
      Item_FullPatrol,
      1650,
      1,
      0
    },
    {
      Item_EmptyWaterBottle,
      2683,
      1,
      0
    },
    {
      Skin_Survivor,
      1577,
      2,
      0
    },
    {
      Item_NightVision,
      368,
      1,
      90
    },
    {
      Item_InfraredVision,
      369,
      1,
      90
    },
    {
      Weapon_ShotgunAmmo,
      2358,
      2,
      0
    },
    {
      Weapon_SawnOffAmmo,
      2358,
      2,
      0
    },
    {
      Weapon_SpasAmmo,
      2358,
      2,
      0
    },
    {
      Weapon_MP5Ammo,
      2358,
      2,
      0
    },
    {
      Weapon_AKAmmo,
      1271,
      2,
      0
    },
    {
      Weapon_M4Ammo,
      1271,
      2,
      0
    },
    {
      Weapon_PistolAmmo,
      3013,
      2,
      0
    },
    {
      Weapon_SilencedAmmo,
      3013,
      2,
      0
    },
    {
      Weapon_DesertAmmo,
      3013,
      2,
      0
    },
    {
      Weapon_SniperAmmo,
      2358,
      2,
      0
    },
    {
      Weapon_CountryAmmo,
      2358,
      2,
      0
    },
    {
      Weapon_UziAmmo,
      2041,
      2,
      0
    },
    {
      Weapon_MP5Ammo,
      2041,
      2,
      0
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      3.5
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      2
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      2.5
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      1.8
    },
    {
      Item_Pizza,
      1582,
      1,
      0,
      7
    },
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      5
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      6
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      5
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      Item_Painkiller,
      2709,
      3,
      0,
      7
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      Weapon_MP5,
      353,
      1,
      90,
      1.5
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      Item_HeatPack,
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      1.5
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      1.5
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      0.7
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      4
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      3
    },
    {
      "Motor",
      929,
      0.3,
      0,
      3.5
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      2
    },
    {
      Item_FullWaterBottle,
      2683,
      1,
      0,
      4
    },
    {
      Weapon_Silenced,
      347,
      1,
      90,
      5
    },
    {
      Weapon_Grenade,
      342,
      1,
      0,
      0.5
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      2
    },
    {
      Weapon_Spas,
      351,
      1,
      90,
      1.9
    },
    {
      Weapon_Binoculars,
      369,
      1,
      0,
      4
    },
    {
      Skin_Military,
      1247,
      2,
      0,
      4.5
    },
    {
      Weapon_AK,
      355,
      1,
      90,
      0.9
    },
    {
      Skin_GhillieDesert,
      1213,
      2,
      0,
      0.01
    },
	{
      Skin_GhillieForest,
      1213,
      2,
      0,
      0.01
    },
    {
      Weapon_M4,
      356,
      1,
      90,
      0.9
    },
    {
      Weapon_Sniper,
      358,
      1,
      90,
      0.3
    },
    {
      Item_Bandage,
      1578,
      0.5,
      0,
      4
    },
    {
      Item_PastaCan,
      2770,
      1,
      0,
      5
    },
    {
      Item_BeansCan,
      2601,
      1,
      0,
      6
    },
    {
      Item_Burger,
      2768,
      1,
      0,
      2
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      0.5
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      3
    },
    {
      Weapon_Desert,
      348,
      1,
      90,
      3
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      1
    },
    {
      Item_MedicKit,
      2891,
      2.2,
      0
    },
    {
      Item_BloodBag,
      1580,
      1,
      0
    },
    {
      Item_Radio,
      2966,
      0.5,
      0,
      5
    },
    {
      Weapon_Crowbar,
      333,
      1,
      90,
      1.9
    },
    {
      Weapon_Baseball,
      336,
      1,
      90,
      1.4
    },
    {
      Weapon_Shovel,
      337,
      1,
      90,
      1.5
    }
  }
}
weaponAmmoTable = {
  [Weapon_PistolAmmo] = {
    {Weapon_Pistol, 22}
  },
  [Weapon_SilencedAmmo] = {
    {Weapon_Silenced, 23}
  },
  [Weapon_DesertAmmo] = {
    {
      Weapon_Desert,
      24
    }
  },
  [Weapon_UziAmmo] = {
    {Weapon_Uzi, 28}
  },
  [Weapon_MP5Ammo] = {
    {Weapon_MP5, 29}
  },
  [Weapon_AKAmmo] = {
    {Weapon_AK, 30}
  },
  [Weapon_M4Ammo] = {
    {Weapon_M4, 31}
  },
  [Weapon_ShotgunAmmo] = {
    {
      Weapon_Shotgun,
      25
    }
  },
  [Weapon_SawnOffAmmo] = {
    {
      Weapon_SawnOff,
      26
    }
  },
  [Weapon_SpasAmmo] = {
    {
      Weapon_Spas,
      27
    }
  },
  [Weapon_SniperAmmo] = {
    {Weapon_Sniper, 34}
  },
  [Weapon_CountryAmmo] = {
    {
      Weapon_Country,
      33
    }
  },
  ["others"] = {
    {Weapon_Parachute, 46},
    {Weapon_TearGas, 17},
    {Weapon_Grenade, 16},
    {
      Weapon_Knife,
      4
    },
    {Weapon_Katana, 8},
    {Weapon_Binoculars, 43},
    {Weapon_Baseball,5},
    {Weapon_Crowbar, 2},
    {Weapon_Shovel, 6},
    {Item_Radio,1}
  }
}
function getWeaponAmmoType(weaponName, notOthers)
  if not notOthers then
    for i, weaponData in ipairs(weaponAmmoTable.others) do
      if weaponName == weaponData[1] then
        return weaponData[1], weaponData[2]
      end
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_PistolAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_PistolAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SilencedAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SilencedAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_DesertAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_DesertAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_UziAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_UziAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_MP5Ammo]) do
    if weaponName == weaponData[1] then
      return Weapon_MP5Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_AKAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_AKAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_M4Ammo]) do
    if weaponName == weaponData[1] then
      return Weapon_M4Ammo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_ShotgunAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_ShotgunAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SawnOffAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SawnOffAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SpasAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SpasAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_SniperAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_SniperAmmo, weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[Weapon_CountryAmmo]) do
    if weaponName == weaponData[1] then
      return Weapon_CountryAmmo, weaponData[2]
    end
  end
  return false
end


-- Creates pickup // Cria os itens
function createItemPickup(item, x, y, z, tableStringName)
  if item and x and y and z then
    do
      local object = createObject(itemTable[tostring(tableStringName)][item][2], x, y, z - 0.875, itemTable[tostring(tableStringName)][item][4], 0, math.random(0, 360))
      setObjectScale(object, itemTable[tostring(tableStringName)][item][3])
      setElementCollisionsEnabled(object, false)
      setElementFrozen(object, true)
      local col = createColSphere(x, y, z, 0.75)
      setElementData(col, "item", itemTable[tostring(tableStringName)][item][1])
      setElementData(col, "parent", object)
      setTimer(function()
        if isElement(col) then
          destroyElement(col)
          destroyElement(object)
        end
      end, 900000, 1)
      return object
    end
  end
end


function table.size(tab)
  local length = 0
  for _ in pairs(tab) do
    length = length + 1
  end
  return length
end


function math.percentChance(percent, repeatTime)
  local hits = 0
  for i = 1, repeatTime do
    local number = math.random(0, 200) / 2
    if percent >= number then
      hits = hits + 1
    end
  end
  return hits
end


function createItemLoot(lootPlace, x, y, z, id)
  col = createColSphere(x, y, z, 1.25)
  setElementData(col, "itemloot", true)
  setElementData(col, "parent", lootPlace)
  setElementData(col, "MAX_Slots", 12)
  for i, item in ipairs(itemTable[lootPlace]) do
    local value = math.percentChance(item[5], math.random(1, 2))
    setElementData(col, item[1], value)
    local ammoData, weapID = getWeaponAmmoType(item[1], true)
    if ammoData and value > 0 then
      setElementData(col, ammoData, math.random(1, 2))
    end
  end
  refreshItemLoot(col, lootPlace)
  return col
end


function refreshItemLoot(col, place)
  local objects = getElementData(col, "objectsINloot")
  if objects then
    if objects[1] ~= nil then
      destroyElement(objects[1])
    end
    if objects[2] ~= nil then
      destroyElement(objects[2])
    end
    if objects[3] ~= nil then
      destroyElement(objects[3])
    end
  end
  local counter = 0
  local obejctItem = {}
  for i, item in ipairs(itemTable.other) do
    if getElementData(col, item[1]) and getElementData(col, item[1]) > 0 then
      if counter == 3 then
        break
      end
      counter = counter + 1
      local x, y, z = getElementPosition(col)
      obejctItem[counter] = createObject(item[2], x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, item[4])
      setObjectScale(obejctItem[counter], item[3])
      setElementCollisionsEnabled(obejctItem[counter], false)
      setElementFrozen(obejctItem[counter], true)
    end
  end
  if obejctItem[1] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[1] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[1], 0)
    setElementCollisionsEnabled(obejctItem[1], false)
    setElementFrozen(obejctItem[1], true)
  end
  if obejctItem[2] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[2] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[2], 0)
    setElementCollisionsEnabled(obejctItem[2], false)
    setElementFrozen(obejctItem[2], true)
  end
  if obejctItem[3] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[3] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[3], 0)
    setElementCollisionsEnabled(obejctItem[3], false)
    setElementFrozen(obejctItem[3], true)
  end
  setElementData(col, "objectsINloot", {
    obejctItem[1],
    obejctItem[2],
    obejctItem[3]
  })
end
addEvent("refreshItemLoot", true)
addEventHandler("refreshItemLoot", getRootElement(), refreshItemLoot)


function createPickupsOnServerStart()
  iPickup = 0
  for i, pos in ipairs(pickupPositions.residential) do
    iPickup = iPickup + 1
    createItemLoot("residential", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart2, 5000, 1)
end


function createPickupsOnServerStart2()
  for i, pos in ipairs(pickupPositions.industrial) do
    iPickup = iPickup + 1
    createItemLoot("industrial", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart3, 5000, 1)
end


function createPickupsOnServerStart3()
  for i, pos in ipairs(pickupPositions.farm) do
    iPickup = iPickup + 1
    createItemLoot("farm", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart4, 5000, 1)
end


function createPickupsOnServerStart4()
  for i, pos in ipairs(pickupPositions.supermarket) do
    iPickup = iPickup + 1
    createItemLoot("supermarket", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart5, 5000, 1)
end


function createPickupsOnServerStart5()
  for i, pos in ipairs(pickupPositions.military) do
    iPickup = iPickup + 1
    createItemLoot("military", pos[1], pos[2], pos[3], iPickup)
  end
end
createPickupsOnServerStart()


vehicleFuelTable = {
  {489, 100},
  {500, 60},
  {445, 80},
  {422, 80},
  {470, 100},
  {468, 30},
  {433, 140},
  {437, 140},
  {509, 0},
  {487, 60},
  {497, 60},
  {453, 60}
}

function getVehicleMaxFuel(loot)
  local modelID = getElementModel(getElementData(loot, "parent"))
  for i, vehicle in ipairs(vehicleFuelTable) do
    if modelID == vehicle[1] then
      return vehicle[2]
    end
  end
  return false
end


function onPlayerTakeItemFromGround(itemName, col)
  itemPlus = 1
  if itemName == Weapon_PistolAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SilencedAmmo then
    itemPlus = 15
  elseif itemName == Weapon_DesertAmmo then
    itemPlus = 7
  elseif itemName == Weapon_UziAmmo then
    itemPlus = 30
  elseif itemName == Weapon_MP5Ammo then
    itemPlus = 20
  elseif itemName == Weapon_AKAmmo then
    itemPlus = 30
  elseif itemName == Weapon_M4Ammo then
    itemPlus = 20
  elseif itemName == Weapon_ShotgunAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SawnOffAmmo then
    itemPlus = 6
  elseif itemName == Weapon_SpasAmmo then
    itemPlus = 7
  elseif itemName == Weapon_SniperAmmo then
    itemPlus = 5
  elseif itemName == Weapon_CountryAmmo then
    itemPlus = 10
  elseif itemName == Weapon_M4 or itemName == Weapon_AK or itemName == Weapon_Sniper or itemName == Weapon_Shotgun or itemName == Weapon_Spas or itemName == Weapon_SawnOff or itemName == Weapon_Country then
    removeBackWeaponOnDrop()
  end
  local x, y, z = getElementPosition(source)
  local id, ItemType = getItemTablePosition(itemName)
  setElementData(source, itemName, (getElementData(source, itemName) or 0) + itemPlus)
  destroyElement(getElementData(col, "parent"))
  destroyElement(col)
end
addEvent("onPlayerTakeItemFromGround", true)
addEventHandler("onPlayerTakeItemFromGround", getRootElement(), onPlayerTakeItemFromGround)


function onPlayerChangeLoot(loot)
  local players = getElementsWithinColShape(loot, "player")
  for theKey, player in ipairs(players) do
    triggerClientEvent(player, "refreshLootManual", player, loot)
  end
end
addEvent("onPlayerChangeLoot", true)
addEventHandler("onPlayerChangeLoot", getRootElement(), onPlayerChangeLoot)


function playerDropAItem(itemName)
  local x, y, z = getElementPosition(source)
  local item, itemString = getItemTablePosition(itemName)
  local itemPickup = createItemPickup(item, x + math.random(-1.25, 1.25), y + math.random(-1.25, 1.25), z, itemString)
end
addEvent("playerDropAItem", true)
addEventHandler("playerDropAItem", getRootElement(), playerDropAItem)


function getItemTablePosition(itema)
  for id, item in ipairs(itemTable[tostring("other")]) do
    if itema == item[1] then
      return id, "other"
    end
  end
  return item, itemString
end


function refreshItemLoots()
  outputChatBox("#ffaa00[ATENÇÃO] #ffffff OS ÍTENS ESTÃO SENDO RESPAWNADOS. AGUARDE, EM BREVE O LAG SUMIRÁ.", getRootElement(), 255, 255, 255, true)
  for i, loots in ipairs(getElementsByType("colshape")) do
    local itemloot = getElementData(loots, "itemloot")
    if itemloot then
      local objects = getElementData(loots, "objectsINloot")
      if objects then
        if objects[1] ~= nil then
          destroyElement(objects[1])
        end
        if objects[2] ~= nil then
          destroyElement(objects[2])
        end
        if objects[3] ~= nil then
          destroyElement(objects[3])
        end
      end
      destroyElement(loots)
    end
  end
  createPickupsOnServerStart()
  setTimer(refreshItemLootPoints, gameplayVariables.itemrespawntimer, 1)
end


function refreshItemLootPoints()
  local time = getRealTime()
  local hour = time.hour
  outputChatBox("#ff2200[ATENÇÃO] #ffffff OS ÍTENS SERÃO RESPAWNADOS EM 1 MINUTO. UM LAG OCORRERÁ, NÃO SE DESESPERE!", getRootElement(), 255, 255, 255, true)
  setTimer(refreshItemLoots, 30000, 1)
end
setTimer(refreshItemLootPoints, gameplayVariables.itemrespawntimer, 1)
