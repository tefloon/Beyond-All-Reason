return {
	corjamt = {
		maxacc = 0,
		activatewhenbuilt = true,
		maxdec = 0,
		buildangle = 9821,
		energycost = 5200,
		metalcost = 115,
		buildpic = "CORJAMT.DDS",
		buildtime = 4570,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "30 37 30",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energyupkeep = 25,
		explodeas = "smallexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		health = 1070,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/CORJAMT.s3o",
		onoffable = true,
		radardistancejam = 360,
		script = "Units/CORJAMT.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 104,
		yardmap = "oooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/corjamt_aoplane.dds",
			buildinggrounddecalsizey = 3.6,
			buildinggrounddecalsizex = 3.6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'util',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			removestop = true,
			removewait = true,
			subfolder = "corbuildings/landutil",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -2 0",
				collisionvolumescales = "30 35 30",
				collisionvolumetype = "CylY",
				damage = 576,
				footprintx = 2,
				footprintz = 2,
				height = 3,
				metal = 71,
				object = "Units/corjamt_dead.s3o",
				reclaimable = true,
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "kbcormov",
			},
			select = {
				[1] = "radjam2",
			},
		},
	},
}
