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

NDefines.NGraphics.BORDER_WIDTH = 1.0
NDefines.NGraphics.ARROW_MOVEMENT_SPEED = 4

NDefines.NGraphics.MINIMAP_PLAYER_COLOR_R = 105
NDefines.NGraphics.MINIMAP_PLAYER_COLOR_G = 190
NDefines.NGraphics.MINIMAP_PLAYER_COLOR_B = 25
NDefines.NGraphics.MINIMAP_FRIENDLY_COLOR_R = 0
NDefines.NGraphics.MINIMAP_FRIENDLY_COLOR_G = 155
NDefines.NGraphics.MINIMAP_FRIENDLY_COLOR_B = 220
NDefines.NGraphics.MINIMAP_ENEMY_COLOR_R = 200
NDefines.NGraphics.MINIMAP_ENEMY_COLOR_G = 40
NDefines.NGraphics.MINIMAP_ENEMY_COLOR_B = 40

NDefines.NGraphics.MAX_TRADE_NODE_FLAGS_SHOWN = -1					-- -1 is unlimited

-- GUI

-- Engine
NDefines.NGraphics.EVENT_PROCESS_OFFSET = 1 						-- Events are checked every X day per character or province (1 is ideal, but CPU heavy)

-- Frontend
NDefines.NFrontend.CAMERA_LOOKAT_X = 1600.0							-- Rotation point in main menu
NDefines.NFrontend.CAMERA_LOOKAT_Y = 50.0
NDefines.NFrontend.CAMERA_LOOKAT_Z = 950.0
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_X = 2300.0				-- Rotation point in settings
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Y = 0.0					-- Y is height
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Z = 1519.0
NDefines.NFrontend.CAMERA_START_X = 1000.0						-- Initial position in main menu
NDefines.NFrontend.CAMERA_START_Y = 600							-- Y is height
NDefines.NFrontend.CAMERA_START_Z = 800.0
NDefines.NFrontend.CAMERA_END_X = 1200.0							-- Move to position in main menu
NDefines.NFrontend.CAMERA_END_Y = 0.0
NDefines.NFrontend.CAMERA_END_Z = 900.0

NDefines.NFrontend.CAMERA_MIN_DIST_FOR_ROTATE = 600.0				-- Controlls when rotation starts. When camera is close enought it starts
NDefines.NFrontend.CAMERA_MIN_HEIGHT = 100.0						-- Minimum camera height
NDefines.NFrontend.CAMERA_MAX_HEIGHT = 2500.0						-- Maximum camera height
NDefines.NFrontend.TIME_FROZEN = 1.0								-- Time before initial animation starts (some deylay here so it should NOT be 0, then the animation starts before you can see it)
NDefines.NFrontend.TIME_UNTIL_ROTATE = 1.5							-- Time when rotation start (from begining of time)
NDefines.NFrontend.CAMERA_SPEED_START = 0.10						-- Initial animation speed
NDefines.NFrontend.CAMERA_SPEED_ROTATE = 0.10						-- Rotation speed
NDefines.NFrontend.GUI_MOVE_SPEED = 400								-- How fast sliding gui objects move ( pixels/s )
					-- Setup at the end of the cam animation in the main menu
					-- View of the whole region
NDefines.NFrontend.FRONTEND_POS_X = 2300.0
NDefines.NFrontend.FRONTEND_POS_Y = 2000.0
NDefines.NFrontend.FRONTEND_POS_Z = 400.0
NDefines.NFrontend.FRONTEND_LOOK_X = 2300.0
NDefines.NFrontend.FRONTEND_LOOK_Y = 0.0
NDefines.NFrontend.FRONTEND_LOOK_Z = 850.0
					-- Position and PoV when in settings
					-- View of the valley of mexico
NDefines.NFrontend.SETTINGS_POS_X = 1750.0
NDefines.NFrontend.SETTINGS_POS_Y = 500.0
NDefines.NFrontend.SETTINGS_POS_Z = 800.0
NDefines.NFrontend.SETTINGS_LOOK_X = 1650.0
NDefines.NFrontend.SETTINGS_LOOK_Y = 0.0
NDefines.NFrontend.SETTINGS_LOOK_Z = 1200.0
					-- Position and PoV when in multiplayer setup
					-- same as above
NDefines.NFrontend.MP_OPTIONS_POS_X = 1600.0
NDefines.NFrontend.MP_OPTIONS_POS_Y = 500.0
NDefines.NFrontend.MP_OPTIONS_POS_Z = 900.0
NDefines.NFrontend.MP_OPTIONS_LOOK_X = 1600.0
NDefines.NFrontend.MP_OPTIONS_LOOK_Y = 0.0
NDefines.NFrontend.MP_OPTIONS_LOOK_Z = 1250.0
					-- Position and PoV when in the tutorial view
					-- zoom on oaxaca
NDefines.NFrontend.TUTORIAL_POS_X = 2300.0
NDefines.NFrontend.TUTORIAL_POS_Y = 500.0
NDefines.NFrontend.TUTORIAL_POS_Z = 400.0
NDefines.NFrontend.TUTORIAL_LOOK_X = 2000.0
NDefines.NFrontend.TUTORIAL_LOOK_Y = 0.0
NDefines.NFrontend.TUTORIAL_LOOK_Z = 650.0
					-- Position and PoV when in the content (dlc and mod) view
					-- view of aridoamerica
NDefines.NFrontend.CONTENT_POS_X = 3100.0
NDefines.NFrontend.CONTENT_POS_Y = 750.0
NDefines.NFrontend.CONTENT_POS_Z = 500.0
NDefines.NFrontend.CONTENT_LOOK_X = 2500.0
NDefines.NFrontend.CONTENT_LOOK_Y = 100.0
NDefines.NFrontend.CONTENT_LOOK_Z = 750.0
					-- Position and PoV when in the credits view
					-- view of cuba
NDefines.NFrontend.CREDITS_POS_X = 2800.0
NDefines.NFrontend.CREDITS_POS_Y = 650.0
NDefines.NFrontend.CREDITS_POS_Z = 700.0
NDefines.NFrontend.CREDITS_LOOK_X = 3500.0
NDefines.NFrontend.CREDITS_LOOK_Y = 0.0
NDefines.NFrontend.CREDITS_LOOK_Z = 800.0

-- Religion
NDefines.NReligion.MIN_HARMONIZE_DEVELOPMENT = 20
NDefines.NReligion.STARTING_HARMONY = 100.0							-- Confucian countries start with this.
NDefines.NReligion.YEARLY_HARMONY_INCREASE = 2.0
NDefines.NReligion.HARMONY_LOSS_PER_DEV_CONVERTED = 0.0
NDefines.NReligion.YEARLY_HARMONY_INCREASE_WHEN_HARMONIZING = -8.0
NDefines.NReligion.YEARLY_HARMONIZATION_PROGRESS = 0.10 			-- 3%

-- Nation Designer

-- Government

