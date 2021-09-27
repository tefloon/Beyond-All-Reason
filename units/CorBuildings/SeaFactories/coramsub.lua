local unitName = Spring.I18N('units.names.coramsub')

return {
	coramsub = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 5600,
		buildcostmetal = 1200,
		builder = true,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 11,
		buildinggrounddecalsizey = 11,
		buildinggrounddecaltype = "decals/coramsub_aoplane.dds",
		buildpic = "CORAMSUB.PNG",
		buildtime = 11402,
		canmove = true,
		category = "ALL NOWEAPON NOTSUB NOTAIR NOTHOVER SURFACE UNDERWATER EMPABLE",
		collisionvolumeoffsets = "0 0 -2",
		collisionvolumescales = "115 36 112",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.coramsub'),
		energystorage = 160,
		explodeas = "largeBuildingExplosionGeneric",
		footprintx = 8,
		footprintz = 8,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2500,
		maxslope = 10,
		metalmake = 1,
		metalstorage = 160,
		minwaterdepth = 25,
		name = unitName,
		objectname = "Units/CORAMSUB.s3o",
		script = "Units/CORAMSUB.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 240,
		terraformspeed = 750,
		usebuildinggrounddecal = true,
		workertime = 150,
		yardmap = "oooooooooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCooCCCCCCo",
		buildoptions = {
			[1] = "cormuskrat",
			[2] = "corgarp",
			[3] = "corseal",
			[4] = "corparrow",
			[5] = "corcrash",
			[6] = "coraak",
			[7] = "cordecom",
			[8] = "corintr",
		},
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 0 -15",
				collisionvolumescales = "111 34 86",
				collisionvolumetype = "Box",
				damage = 1500,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 7,
				footprintz = 7,
				height = 5,
				hitdensity = 100,
				metal = 800,
				object = "Units/coramsub_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
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
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pvehactv",
			},
		},
	},
}
