return {
	en = {
		ui = {
			topbar = {
				button = {
					quit = 'Quit',
					resign = 'Resign',
					lobby = 'Lobby',
					settings = 'Settings',
					changes = 'Changes',
					commands = 'Commands',
					keys = 'Keys',
					scavengers = 'Scavengers',
					stats = 'Statistics',
				},
				quit = {
					quit = 'Quit',
					resign = 'Resign',
					reallyQuit = 'Are you sure you want to quit?',
					reallyQuitResign = 'Are you sure you want to resign or quit to desktop?',
					reallyResign = 'Are you sure you want to resign?',
					reallyResignSpectate = 'Are you sure you want to resign and spectate?',
				},
				catchingUp = 'Catching up',
				catchingUpTooltip = 'Displays the catch-up progress',
				catchingUpTooltipGametime = 'Game time:',
				commanderCountTooltip = '%{titleColor}Commander Counter\nDisplays the number of ally\nand enemy commanders',
				wind = {
					nowind1 = 'No',
					nowind2 = 'wind',
					tooltip = '%{titleColor}Wind Display\nDisplays current wind strength (small numbers are minimum and maximum)\n%{warnColor}It is better to build Solar Collectors when average\n%{warnColor}5wind speed is below 5 (Armada) or 6 (Cortex)',
					worth1 = 'Wind is not worth it',
					worth2 = 'Wind is viable',
					worth3 = 'Wind is okay',
					worth4 = 'Wind is good',
					worth5 = 'Wind is really good',
					worth6 = 'Wind is amazing',
				},
				resources = {
					metal = 'Metal',
					energy = 'Energy',
					overflowing = 'Overflowing',
					wastingMetal = 'Wasting metal',
					wastingEnergy = 'Wasting energy',
					shareEnergyTooltip = '%{titleColor}Energy Share Slider\nShare excess energy above this point with your team',
					shareMetalTooltip = '%{titleColor}Metal Share Slider\nShare excess metal above this point with your team',
					pullTooltip = '%{resource} spending (per second)',
					incomeTooltip = '%{resource} income (per second)',
					expenseTooltip = '%{resource} potential spending  (per second)',
					storageTooltip = '%{resource} storage',
					conversionTooltip = '%{titleColor}Energy Conversion Slider\nUse excess energy above this point\nto power your Energy Converters',
				},
			},
			playersList = {
				playerList = 'Player list',
				spectators = 'Spectators',
				enemies = 'Enemies',
				allies = 'Allies',
				hideSpecs = 'Click to hide specs',
				showSpecs = 'Click to show specs',
				trackPlayer = 'Double-click player name to track',
				takeUnits = 'Click to take abandoned units',
				requestSupport = 'Double-click to ask for support',
				shareUnits = 'Double-click to share units',
				requestEnergy = 'Click-and-drag to ask for energy',
				requestMetal = 'Click-and-drag to ask for metal',
				shareEnergy = 'Click-and-drag to share energy',
				shareMetal = 'Click-and-drag to share metal',
				becomeEnemy = 'Click to become enemy',
				becomeAlly = 'Click to become ally',
				thousands = 'k',
				milliseconds = 'ms',
				seconds = 'sec',
				minutes = 'min',
				commandDelay = 'Total command delay',
				cpu = 'CPU',
				framerate = 'FPS',
				gpuMemory = 'GPU memory',
				pointClickTooltip = 'Click to go to the last point set by the player',
			},
			playerTV = {
				playerTV = 'Player TV',
				cancelCamera = 'Turn off',
				tooltip = 'Auto camera-track the top ranked players\n(switches player every 40 seconds by default)',
			},
			teamEconomy = {
				tooltip = 'Team metal/energy income\n(Lighter portion is income from reclaiming)',
			},
			clearMapmarks = {
				tooltip = 'Clear mapmarks/drawings',
			},
			buildMenu = {
				nextPage = 'Next page',
				previousPage = 'Previous page',
			},
			orderMenu = {
				move = 'Move',
				move_tooltip = 'Move a unit towards a position or follow other units',
				stop = 'Stop',
				stop_tooltip = 'Cancel the units current actions',
				attack = 'Attack',
				attack_tooltip = 'Attack a unit or ground position',
				areaattack = 'Area Attack',
				areaattack_tooltip = 'Area attack everything within a circle (click-drag)',
				manualfire = 'D-Gun',
				manualfire_tooltip = 'Fire the powerful commander Disintegrator-gun',
				patrol = 'Patrol',
				patrol_tooltip = 'Patrol along one or more waypoints',
				fight = 'Fight',
				fight_tooltip = 'Order units to take action while moving to a position',
				resurrect = 'Resurrect',
				resurrect_tooltip = 'Revive wrecks to become units again (click-drag for area)',
				guard = 'Guard',
				guard_tooltip = 'Guard another unit against enemy units attacking it',
				wait = 'Wait',
				wait_tooltip = 'Prevents unit from processing command queue',
				repair = 'Repair',
				repair_tooltip = 'Repair a damaged unit',
				reclaim = 'Reclaim',
				reclaim_tooltip = 'Suck metal/energy from wrecks or features (trees/stones)',
				restore = 'Restore',
				restore_tooltip = 'Restore an area of the map to its original height',
				capture = 'Capture',
				capture_tooltip = 'Convert units that belong to the enemy (or ally)',
				settarget = 'Set Target',
				settarget_tooltip = 'Set a prioritized target (prioritizes targeting when target in range) ',
				canceltarget = 'Cancel Target',
				canceltarget_tooltip = 'Removes the priority target',
				areamex = 'Area Mex',
				areamex_tooltip = 'Click-drag an area to auto queue metal extractors for all available metal spots',
				upgrademex = 'Upgrade Mex',
				upgrademex_tooltip = 'Click on a tech 1 metal extractor to auto upgrade it to a tech 2 version',
				loadunits = 'Load units',
				loadunits_tooltip = 'Load unit or multiple units within an area in the transport',
				unloadunits = 'Unload units',
				unloadunits_tooltip = 'Unload unit or multiple units within an area in the transport',
				landatairbase = 'Land At Airbase',
				landatairbase_tooltip = 'Land At Airbase',
				stockpile = 'Stockpile %{stockpileStatus}',
				stockpile_tooltip = '[ stockpiled number ] / [ target stockpile number ]',
				-- Stateful orders
				['Fire at will'] = 'Fire at will',
				['Hold fire'] = 'Hold fire',
				['Return fire'] = 'Return fire',
				firestate_tooltip = 'Set under what conditions a unit should start firing at enemies (without explicit attack order)',
				['Hold pos'] = 'Hold pos',
				['Maneuver'] = 'Maneuver',
				movestate_tooltip = 'Set how far out of its way a unit should move to attack enemies',
				['Roam'] = 'Roam',
				['Repeat on'] = 'Repeat',
				['Repeat off'] = 'Repeat',
				repeat_tooltip = 'Repeat unit command queue',
				['Low Prio'] = 'Priority',
				['High Prio'] = 'Priority',
				priority_tooltip = 'Assigns resources to use for this builder when not having enough for all',
				['Decloaked'] = 'Cloaked',
				['Cloaked'] = 'Cloaked',
				wantcloak_tooltip = 'Invisibility state',
				[' On '] = 'On',
				[' Off '] = 'On',
				onoff_tooltip = 'Active state: turn a unit on/off',
				['Fighters'] = 'Fighters',
				['Bombers'] = 'Bombers',
				['No priority'] = 'No priority',
				setpriority_tooltip = 'Set target priority Fighters/Bombers/no priority',
				[' Fly '] = 'Land',
				['Land'] = 'Land',
				idlemode_tooltip = 'Sets what aircraft do when idle',
				apLandAt_tooltip = 'Sets what aircraft do when leaving air factory',
				['Low traj'] = 'High Traj',
				['High traj'] = 'High Traj',
				trajectory_tooltip = 'Sets fire mode in artillery state (firing upwards instead of forwards)',
				['LandAt 0'] = 'LandAt 0',
				['LandAt 30'] = 'LandAt 30',
				['LandAt 50'] = 'LandAt 50',
				['LandAt 80'] = 'LandAt 80',
				autorepairlevel_tooltip = 'Set at which health %% this aircraft should automatically move to and land on an air repair pad',
				apAirRepair_tooltip = 'Air factory: Set at which health %% an aircraft should automatically move to and land on an air repair pad',
				['UpgMex ON'] = 'Upgrade Mex',
				['UpgMex OFF'] = 'Upgrade Mex',
				automex_tooltip = 'When toggled: tech 1 metal extractors will automatically be upgraded to tech 2',
				customOnOff = {
					lowTrajectory = 'Low Trajectory',
					highTrajectory = 'High Trajectory',
					trajectory_tooltip = 'Switch artillery firing angle between low and high trajectory',
					gaussCannon = 'Gauss Cannon',
					heavyPlasma = 'Heavy Plasma',
					gauss_tooltip = 'Switches between Gauss Cannon and Heavy Plasma Cannon'
				}
			},
		}
	}
}
