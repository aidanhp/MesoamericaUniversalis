-- Format for overwriting define values:
--
-- NDefines.NDiplomacy.MAX_CLIENT_STATES = 20

-- Game
NDefines.NGame.START_DATE = "1428.1.1"

-- Diplomacy
NDefines.NDiplomacy.AE_OTHER_CONTINENT = 10
NDefines.NDiplomacy.AE_SAME_CULTURE = 0.5
NDefines.NDiplomacy.AE_SAME_CULTURE_GROUP = 0.25
NDefines.NDiplomacy.AE_INFIDEL_CONQUEST = 0.25		-- different religion group conquered same religion province
NDefines.NDiplomacy.AE_SAME_RELIGION = 0.5
NDefines.NDiplomacy.AE_SAME_RELIGION_GROUP = 0.0
NDefines.NDiplomacy.AE_DIFFERENT_RELIGION = -0.5
NDefines.NDiplomacy.AE_HRE_INTERNAL = 0.5
NDefines.NDiplomacy.AE_ATTACKER_DEVELOPMENT = 0.01	-- +50% cap (at 1000 development)
NDefines.NDiplomacy.AE_DEFENDER_DEVELOPMENT = 0.01	-- -50% cap (at 1000 development)
NDefines.NDiplomacy.AE_DISTANCE_BASE = 0.50
NDefines.NDiplomacy.AE_SAME_OVERLORD = 0.5	
NDefines.NDiplomacy.AE_PROVINCE_CAP = 50				-- Province development above this will not count for AE (also used for warscore cost cap)
NDefines.NDiplomacy.AE_THREATEN_WAR = 1.0
NDefines.NDiplomacy.PO_DEMAND_PROVINCES_AE = 0.15 				-- _DDEF_PO_DEMAND_PROVINCES_AE = 10, (Per development)
NDefines.NDiplomacy.PO_RETURN_CORES_AE = 0.5 					-- (Per core, only applied if returning cores to vassals of winner)
NDefines.NDiplomacy.PO_FORM_PU_AE = 0.075 							-- _DDEF_PO_FORM_PU_AE = 10, (Per development)
NDefines.NDiplomacy.PO_CONCEDE_COLONIAL_AE = 0.25
NDefines.NDiplomacy.PO_BECOME_VASSAL_AE = 0.075 					-- _DDEF_PO_BECOME_VASSAL_AE = 10, (Per development)

-- Country
NDefines.NCountry.ALLOW_ZERO_BASE_VALUES = 1						-- Affects base tax, base manpower, and base production

-- Economy

-- Military
NDefines.NMilitary.BASE_MP_TO_MANPOWER = 1.0		-- 1000 men per manpower
NDefines.NMilitary.MIN_MONTHLY_MANPOWER = 0.05						-- 100 men/month is minimum
NDefines.NMilitary.STACKWIPE_MANPOWER_RETURN_FRACTION = 0.8	-- Fraction of manpower that returns to pool when a stack is wiped.
NDefines.NMilitary.SIEGE_DISEASE_IMPACT = 0.025						-- Fraction of besieging soldiers lost in a disease outbreak
NDefines.NMilitary.MERCENARY_SUPPORT_LIMIT_BASE = 2				-- Base (and thus minimum) value for mercenary support limit.
NDefines.NMilitary.MERCENARY_SUPPORT_LIMIT_FRACTION = 0.1			-- Fraction of regular army support/force limit that goes into mercenary support limit.
NDefines.NMilitary.DAYS_PER_PHASE = 2								-- How many days each fire and shock phase lasts
NDefines.NMilitary.DAYS_PER_SIEGE_PHASE = 8						-- How many days each siege phase lasts

-- AI

-- Graphics
NDefines.NGraphics.CITY_SPRAWL_SHRINK_DISTANCE = 150.0 			-- Start shrinking at this distance
NDefines.NGraphics.CITY_SPRAWL_DRAW_DISTANCE = 200.0				-- Remove at this distance
NDefines.NGraphics.CITY_SPRAWL_AMOUNT = 3.0 						-- Size of cities, higher gives larger cities

-- GUI

-- Engine 

-- Frontend
NDefines.NFrontend.CAMERA_LOOKAT_X = 1586.0 						-- Rotation point in main menu
NDefines.NFrontend.CAMERA_LOOKAT_Y = 0.0
NDefines.NFrontend.CAMERA_LOOKAT_Z = 1100.0
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_X = 1586.0 				-- Rotation point in settings
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Y = 0.0					-- Y is height
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Z = 1000.0
NDefines.NFrontend.CAMERA_START_X = 1586.0						-- Initial position in main menu
NDefines.NFrontend.CAMERA_START_Y = 6000							-- Y is height
NDefines.NFrontend.CAMERA_START_Z = 900.0
NDefines.NFrontend.CAMERA_END_X = 1586.0							-- Move to position in main menu
NDefines.NFrontend.CAMERA_END_Y = 1150.0
NDefines.NFrontend.CAMERA_END_Z = 600.0

NDefines.NFrontend.FRONTEND_POS_X = 1586.0
NDefines.NFrontend.FRONTEND_POS_Y = 3000.0
NDefines.NFrontend.FRONTEND_POS_Z = 1000.0
NDefines.NFrontend.FRONTEND_LOOK_X = 1586.0
NDefines.NFrontend.FRONTEND_LOOK_Y = 0.0
NDefines.NFrontend.FRONTEND_LOOK_Z = 1000.0

NDefines.NFrontend.MP_OPTIONS_POS_X = 1586.0
NDefines.NFrontend.MP_OPTIONS_POS_Y = 922.0
NDefines.NFrontend.MP_OPTIONS_POS_Z = 1048.0
NDefines.NFrontend.MP_OPTIONS_LOOK_X = 1586.0
NDefines.NFrontend.MP_OPTIONS_LOOK_Y = 0.0
NDefines.NFrontend.MP_OPTIONS_LOOK_Z = 1159.0

NDefines.NFrontend.CONTENT_POS_X = 1586.0
NDefines.NFrontend.CONTENT_POS_Y = 922.0
NDefines.NFrontend.CONTENT_POS_Z = 1308.0
NDefines.NFrontend.CONTENT_LOOK_X = 1586.0
NDefines.NFrontend.CONTENT_LOOK_Y = 0.0
NDefines.NFrontend.CONTENT_LOOK_Z = 1519.0
	
-- Religion 

-- Nation Designer 

-- Government

