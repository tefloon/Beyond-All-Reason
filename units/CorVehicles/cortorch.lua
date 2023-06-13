return {
	cortorch = {
		acceleration = 0.03226,
		activatewhenbuilt = true,
		brakerate = 0.06453,
		buildcostenergy = 2600,
		buildcostmetal = 220,
		buildpic = "CORGARP.DDS",
		buildtime = 3101,
		canmove = true,
		category = "ALL TANK PHIB WEAPON NOTSUB NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "30 21 36",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		explodeas = "smallexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 1420,
		maxslope = 12,
		maxvelocity = 1.95,
		maxwaterdepth = 200,
		movementclass = "ATANK3",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/CORTORCH.s3o",
		script = "Units/CORTORCH.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-phib",
		sightdistance = 305,
		sonardistance = 175.5,
		trackoffset = 0,
		trackstrength = 6,
		tracktype = "corparrowtracks",
		trackwidth = 22,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.386,
		turnrate = 387,
		customparams = {
			unitgroup = 'weapon',
			basename = "base",
			cannon1name = "barrel",
			driftratio = "0.5",
			firingceg = "barrelshot-tiny",
			flare1name = "emit",
			kickback = "-2.4",
			model_author = "Flaka",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.125,
			restoretime = "3000",
			rockstrength = "5",
			sleevename = "sleeve",
			subfolder = "corvehicles",
			turretname = "turret",
			wpn1turretx = "90",
			wpn1turrety = "90",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -0.580979279785 -0.621788024902",
				collisionvolumescales = "30.1485290527 10.4821014404 33.694442749",
				collisionvolumetype = "Box",
				damage = 731,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 9,
				hitdensity = 100,
				metal = 134,
				object = "Units/corgarp_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "all",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 488,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 67,
				object = "Units/cor2X2E.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
			},
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			flame_thrower = {
				--burst = 16,
				--burstrate = 0.05,
				projectiles = 9,
				fixedLauncher = true,
				areaofeffect = 32,
				avoidfeature = false,
				cameraShake = 0,
				cegtag = "burnflame-anim-x2",
				colormap = "1 0.95 0.9 0.032   0.55 0.55 0.40 0.028   0.40 0.28 0.19 0.024   0.033 0.018 0.011 0.04   0.0 0.0 0.0 0.01",
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:blank",
				firestarter = 70,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 1.0,
				metalpershot = 0,
				--model = "cormissile2.s3o",
				name = "FlameThrowerVolume",
				noselfdamage = true,
				noExplode = true,
				range = 410,
				reloadtime = 1.6,
				rgbcolor = "1 0.94 0.88",
				rgbcolor2 = "0.9 0.84 0.8",
				--smoketrail = true,
				--smokePeriod = 11,
				--smoketime = 28,
				--smokesize = 3.3,
				--smokecolor = 1.0,
				smokeTrailCastShadow = false,
				castshadow = true, --projectile
				soundhitdry = "flamhit1",
				soundhitwet = "sizzle",
				soundstart = "flamhvy1",
				soundhitvolume = 7.5,
				soundstartvolume = 5.3,
				startvelocity = 150,
				texture1 = "null",
				texture2 = "smoketraildark",
				turret = true,
				--weaponacceleration = 120,
				flightTime = 2.7,
				burnblow = true,
				weapontype = "MissileLauncher",
				weaponvelocity = 150,
				customparams = {
					fire_volume = "true",
					noexplosionlight = 1,
				},
				damage = {
					default = 157,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "flame_thrower",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
