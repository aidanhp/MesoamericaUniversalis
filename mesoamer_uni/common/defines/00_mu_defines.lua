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
NDefines.NCountry.REVOLT_SIZE_DEVELOPMENT_MULTIPLIER = 0.25	-- Multiplied with the province's development
NDefines.NCountry.REVOLT_SIZE_BASE = 1
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_2 = 100		-- Need at least this much development to upgrade to government rank 2
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_3 = 1500		-- Need at least this much development to upgrade to government rank 3
NDefines.NCountry.PS_MAKE_PROVINCE_CORE = 4
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
NDefines.NMilitary.SIEGE_FORCE_NEEDED_MULTIPLIER = 1				-- x times garrison to be able to siege.
NDefines.NMilitary.BASE_COMBAT_WIDTH = 16.0						-- _MDEF_BASE_COMBAT_WIDTH_
NDefines.NMilitary.GARRISON_SIZE = 1500 							-- GARRISON_SIZE
NDefines.NMilitary.INFANTRY_SPEED = 3.0 							-- _MDEF_INFANTRY_SPEED = 10,
NDefines.NMilitary.CAVALRY_SPEED = 3.0 							-- _MDEF_CAVALRY_SPEED = 10,
NDefines.NMilitary.ARTILLERY_SPEED = 3.0 							-- _MDEF_ARTILLERY_SPEED = 10,
NDefines.NMilitary.FORTRESS_COST = 0.168							-- base fort cost
	
-- AI
NDefines.NAI.AI_USES_HISTORICAL_IDEA_GROUPS = 0 -- If set to 0, ai will use ai_will_do instead of historical ideagroups when picking ideagroups (ai never uses historical ideagroups in custom/random setup)
	
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
NDefines.NReligion.MIN_HARMONIZE_DEVELOPMENT = 20
NDefines.NReligion.STARTING_HARMONY = 100.0							-- Confucian countries start with this.
NDefines.NReligion.YEARLY_HARMONY_INCREASE = 2.0
NDefines.NReligion.HARMONY_LOSS_PER_DEV_CONVERTED = 0.0
NDefines.NReligion.YEARLY_HARMONY_INCREASE_WHEN_HARMONIZING = -8.0
NDefines.NReligion.YEARLY_HARMONIZATION_PROGRESS = 0.10 			-- 3%
-- Nation Designer 

-- Government

