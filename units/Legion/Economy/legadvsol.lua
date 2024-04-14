return {
	legadvsol = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 33000,
		energycost = 3500,
		metalcost = 480,
		buildpic = "LEGADVSOL.DDS",
		buildtime = 12000,
		canrepeat = false,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "60 44 60",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energystorage = 150,
		energymake = 100,
		explodeas = "mediumBuildingexplosiongeneric",
		footprintx = 5,
		footprintz = 5,
		idleautoheal = 5,
		idletime = 1800,
		health = 800,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/LEGADVSOL.s3o",
		script = "Units/LEGADVSOL.cob",
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 280,
		yardmap = "ooooo ooooo ooooo ooooo ooooo",
		customparams = {
			unitgroup = 'energy',
			model_author = "EnderRobo",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			solar = true,
			subfolder = "legion/economy",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -9 0",
				collisionvolumescales = "70 36 70",
				collisionvolumetype = "Ell",
				damage = 450,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				metal = 320,
				object = "Units/legadvsol_dead.s3o",
				reclaimable = true,
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 225,
				footprintx = 5,
				footprintz = 5,
				height = 4,
				metal = 140,
				object = "Units/cor5X5C.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			activate = "solar2",
			canceldestruct = "cancel2",
			deactivate = "solar2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "solar2",
			},
		},
	},
}
