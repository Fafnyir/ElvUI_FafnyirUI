--Don't worry about this
local addon, ns = ...
local Version = GetAddOnMetadata(addon, "Version")

--Cache Lua / WoW API
local format = string.format
local GetCVarBool = GetCVarBool
local ReloadUI = ReloadUI
local StopMusic = StopMusic

-- These are things we do not cache
-- GLOBALS: PluginInstallStepComplete, PluginInstallFrame

--Change this line and use a unique name for your plugin.
local MyPluginName = "FafnyirUI"

--Create references to ElvUI internals
local E, L, V, P, G = unpack(ElvUI)

--Create reference to LibElvUIPlugin
local EP = LibStub("LibElvUIPlugin-1.0")

--Create a new ElvUI module so ElvUI can handle initialization when ready
local mod = E:NewModule(MyPluginName, "AceHook-3.0", "AceEvent-3.0", "AceTimer-3.0");

--This function will hold your layout settings
local function SetupLayout(layout)
	
if not E.db.movers then E.db.movers = {} end
	--[[
	--	PUT YOUR EXPORTED PROFILE/SETTINGS BELOW HERE
	--]]

	--LAYOUT GOES HERE
-- Private Settings
E.private["bags"]["enable"] = false
E.private["general"]["chatBubbleFont"] = "-FafnyirUI"
E.private["general"]["chatBubbles"] = "nobackdrop"
E.private["general"]["dmgfont"] = "- BOLTZZ"
E.private["general"]["glossTex"] = "- FafnyirUI Clean"
E.private["general"]["namefont"] = "-FafnyirUI"
E.private["general"]["nameplateFont"] = "-FafnyirUI"
E.private["general"]["nameplateLargeFont"] = "-FafnyirUI_Bold"
E.private["general"]["normTex"] = "- FafnyirUI Clean"
E.private["general"]["totemTracker"] = false
E.private["nameplates"]["enable"] = false
E.private["skins"]["checkBoxSkin"] = false
E.private["skins"]["parchmentRemoverEnable"] = true


-- Actionbar Settings
E.db["actionbar"]["rightClickSelfCast"] = true
E.db["actionbar"]["bar1"]["backdrop"] = true
E.db["actionbar"]["bar1"]["heightMult"] = 2
E.db["actionbar"]["bar1"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar1"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar1"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar1"]["macroFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar2"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar2"]["enabled"] = true
E.db["actionbar"]["bar2"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar2"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar2"]["macroFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar3"]["backdrop"] = true
E.db["actionbar"]["bar3"]["enabled"] = true
E.db["actionbar"]["bar3"]["buttonSize"] = 28
E.db["actionbar"]["bar3"]["buttons"] = 12
E.db["actionbar"]["bar3"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar3"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar3"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar3"]["macroFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar4"]["backdrop"] = true
E.db["actionbar"]["bar4"]["enabled"] = true
E.db["actionbar"]["bar4"]["backdrop"] = false
E.db["actionbar"]["bar4"]["buttonSize"] = 28
E.db["actionbar"]["bar4"]["buttonsPerRow"] = 6
E.db["actionbar"]["bar4"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar4"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar4"]["inheritGlobalFade"] = true
E.db["actionbar"]["bar4"]["macroFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar5"]["enabled"] = true
E.db["actionbar"]["bar5"]["buttons"] = 12
E.db["actionbar"]["bar5"]["buttonsPerRow"] = 12
E.db["actionbar"]["bar5"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar5"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar5"]["macroFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["bar5"]["mouseover"] = true
E.db["actionbar"]["bar6"]["enabled"] = false
E.db["actionbar"]["bar7"]["enabled"] = false
E.db["actionbar"]["bar8"]["enabled"] = false
E.db["actionbar"]["bar9"]["enabled"] = false
E.db["actionbar"]["bar10"]["enabled"] = false
E.db["actionbar"]["barPet"]["backdrop"] = false
E.db["actionbar"]["barPet"]["buttonSize"] = 18
E.db["actionbar"]["barPet"]["buttonsPerRow"] = 10
E.db["actionbar"]["barPet"]["countFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["barPet"]["countFontOutline"] = "OUTLINE"
E.db["actionbar"]["barPet"]["countFontSize"] = 12
E.db["actionbar"]["barPet"]["frameStrata"] = "BACKGROUND"
E.db["actionbar"]["barPet"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["barPet"]["hotkeyFontOutline"] = "OUTLINE"
E.db["actionbar"]["barPet"]["hotkeyFontSize"] = 12
E.db["actionbar"]["barPet"]["inheritGlobalFade"] = true
E.db["actionbar"]["cooldown"]["checkSeconds"] = true
E.db["actionbar"]["cooldown"]["fonts"]["enable"] = true
E.db["actionbar"]["cooldown"]["fonts"]["font"] = "-FafnyirUI_Bold"
E.db["actionbar"]["cooldown"]["fonts"]["fontSize"] = 14
E.db["actionbar"]["cooldown"]["threshold"] = -1
E.db["actionbar"]["extraActionButton"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["extraActionButton"]["hotkeyFontOutline"] = "NONE"
E.db["actionbar"]["extraActionButton"]["hotkeyFontSize"] = 12
E.db["actionbar"]["font"] = "-FafnyirUI_Bold"
E.db["actionbar"]["fontOutline"] = "OUTLINE"
E.db["actionbar"]["fontSize"] = 12
E.db["actionbar"]["globalFadeAlpha"] = 1
E.db["actionbar"]["microbar"]["mouseover"] = true
E.db["actionbar"]["stanceBar"]["buttonSize"] = 30
E.db["actionbar"]["stanceBar"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["stanceBar"]["hotkeyFontOutline"] = "OUTLINE"
E.db["actionbar"]["stanceBar"]["hotkeyFontSize"] = 12
E.db["actionbar"]["stanceBar"]["mouseover"] = true
E.db["actionbar"]["useDrawSwipeOnCharges"] = true
E.db["actionbar"]["vehicleExitButton"]["hotkeyFont"] = "-FafnyirUI_Bold"
E.db["actionbar"]["vehicleExitButton"]["hotkeyFontOutline"] = "OUTLINE"
E.db["actionbar"]["vehicleExitButton"]["hotkeyFontSize"] = 12
E.db["actionbar"]["zoneActionButton"]["inheritGlobalFade"] = true

-- Aura Settings
E.db["auras"]["buffs"]["countFont"] = "-FafnyirUI"
E.db["auras"]["buffs"]["countFontOutline"] = "OUTLINE"
E.db["auras"]["buffs"]["countFontSize"] = 14
E.db["auras"]["buffs"]["countXOffset"] = -8
E.db["auras"]["buffs"]["countYOffset"] = 24
E.db["auras"]["buffs"]["horizontalSpacing"] = 3
E.db["auras"]["buffs"]["timeFont"] = "-FafnyirUI"
E.db["auras"]["buffs"]["timeFontOutline"] = "OUTLINE"
E.db["auras"]["buffs"]["timeFontSize"] = 14
E.db["auras"]["buffs"]["timeYOffset"] = 8
E.db["auras"]["cooldown"]["checkSeconds"] = true
E.db["auras"]["cooldown"]["threshold"] = -1
E.db["auras"]["debuffs"]["countFont"] = "-FafnyirUI"
E.db["auras"]["debuffs"]["countFontOutline"] = "OUTLINE"
E.db["auras"]["debuffs"]["countFontSize"] = 14
E.db["auras"]["debuffs"]["countXOffset"] = -8
E.db["auras"]["debuffs"]["countYOffset"] = 24
E.db["auras"]["debuffs"]["horizontalSpacing"] = 3
E.db["auras"]["debuffs"]["timeFont"] = "-FafnyirUI"
E.db["auras"]["debuffs"]["timeFontOutline"] = "OUTLINE"
E.db["auras"]["debuffs"]["timeFontSize"] = 14
E.db["auras"]["debuffs"]["timeYOffset"] = 8

-- bag Settings
E.db["bags"]["bagSize"] = 33
E.db["bags"]["cooldown"]["fonts"]["enable"] = true
E.db["bags"]["cooldown"]["fonts"]["font"] = "-FafnyirUI"
E.db["bags"]["countFont"] = "-FafnyirUI"
E.db["bags"]["countFontOutline"] = "OUTLINE"
E.db["bags"]["countFontSize"] = 12
E.db["bags"]["itemInfoFont"] = "-FafnyirUI"
E.db["bags"]["itemInfoFontOutline"] = "OUTLINE"
E.db["bags"]["itemLevelFont"] = "-FafnyirUI"
E.db["bags"]["itemLevelFontOutline"] = "OUTLINE"
E.db["bags"]["itemLevelFontSize"] = 12
E.db["bags"]["moneyFormat"] = "BLIZZARD"
E.db["bags"]["vendorGrays"]["enable"] = true

-- Chat Settings
E.db["chat"]["chatHistory"] = false
E.db["chat"]["editBoxPosition"] = "ABOVE_CHAT"
E.db["chat"]["emotionIcons"] = false
E.db["chat"]["font"] = "-FafnyirUI"
E.db["chat"]["fontSize"] = 12
E.db["chat"]["hideCopyButton"] = true
E.db["chat"]["hideVoiceButtons"] = true
E.db["chat"]["lfgIcons"] = false
E.db["chat"]["panelBackdrop"] = "HIDEBOTH"
E.db["chat"]["panelHeight"] = 210
E.db["chat"]["panelHeightRight"] = 266
E.db["chat"]["panelWidth"] = 450
E.db["chat"]["panelWidthRight"] = 230
E.db["chat"]["separateSizes"] = true
E.db["chat"]["tabFont"] = "-FafnyirUI"
E.db["chat"]["tabFontOutline"] = "OUTLINE"
E.db["chat"]["tabFontSize"] = 11
E.db["convertPages"] = true

-- Cooldown Settings
E.db["cooldown"]["checkSeconds"] = true
E.db["cooldown"]["fonts"]["enable"] = true
E.db["cooldown"]["fonts"]["font"] = "-FafnyirUI_Bold"
E.db["cooldown"]["secondsColor"]["b"] = 1
E.db["cooldown"]["threshold"] = -1

-- Databars
E.db["databars"]["azerite"]["enable"] = false
E.db["databars"]["azerite"]["font"] = "-FafnyirUI"
E.db["databars"]["azerite"]["fontOutline"] = "OUTLINE"
E.db["databars"]["azerite"]["fontSize"] = 16
E.db["databars"]["azerite"]["height"] = 5
E.db["databars"]["azerite"]["textFormat"] = "PERCENT"
E.db["databars"]["azerite"]["width"] = 340
E.db["databars"]["colors"]["experience"]["a"] = 1
E.db["databars"]["experience"]["font"] = "-FafnyirUI_Bold"
E.db["databars"]["experience"]["fontOutline"] = "OUTLINE"
E.db["databars"]["experience"]["height"] = 5
E.db["databars"]["experience"]["hideInCombat"] = true
E.db["databars"]["experience"]["showLevel"] = true
E.db["databars"]["experience"]["textFormat"] = "CURPERCREM"
E.db["databars"]["experience"]["width"] = 395
E.db["databars"]["honor"]["enable"] = false
E.db["databars"]["honor"]["font"] = "-FafnyirUI"
E.db["databars"]["honor"]["fontOutline"] = "OUTLINE"
E.db["databars"]["reputation"]["font"] = "-FafnyirUI"
E.db["databars"]["reputation"]["fontOutline"] = "OUTLINE"
E.db["databars"]["reputation"]["fontSize"] = 16
E.db["databars"]["reputation"]["height"] = 5
E.db["databars"]["reputation"]["width"] = 340
E.db["databars"]["statusbar"] = "Melli"
E.db["databars"]["threat"]["enable"] = false

-- Datatexts
E.db["datatexts"]["font"] = "-FafnyirUI"
E.db["datatexts"]["fontOutline"] = "OUTLINE"
E.db["datatexts"]["fontSize"] = 14
E.db["datatexts"]["panels"]["LeftChatDataPanel"][2] = "System"
E.db["datatexts"]["panels"]["LeftChatDataPanel"]["enable"] = false
E.db["datatexts"]["panels"]["LeftMiniPanel"] = "Time"
E.db["datatexts"]["panels"]["MinimapPanel"][1] = "Time"
E.db["datatexts"]["panels"]["MinimapPanel"][2] = "Time"
E.db["datatexts"]["panels"]["MinimapPanel"]["backdrop"] = false
E.db["datatexts"]["panels"]["MinimapPanel"]["border"] = false
E.db["datatexts"]["panels"]["MinimapPanel"]["enable"] = false
E.db["datatexts"]["panels"]["MinimapPanel"]["numPoints"] = 1
E.db["datatexts"]["panels"]["MinimapPanel"]["panelTransparency"] = true
E.db["datatexts"]["panels"]["RightChatDataPanel"]["enable"] = false
E.db["datatexts"]["panels"]["RightMiniPanel"] = "ElvUI Config"

-- General
E.db["general"]["afk"] = true
E.db["general"]["altPowerBar"]["font"] = "-FafnyirUI"
E.db["general"]["altPowerBar"]["fontSize"] = 14
E.db["general"]["altPowerBar"]["statusBar"] = "- FafnyirUI Clean"
E.db["general"]["autoAcceptInvite"] = false
E.db["general"]["backdropcolor"]["b"] = 0.18039215686275
E.db["general"]["backdropcolor"]["g"] = 0.18039215686275
E.db["general"]["backdropcolor"]["r"] = 0.18039215686275
E.db["general"]["backdropfadecolor"]["a"] = 0.80000001192093
E.db["general"]["backdropfadecolor"]["b"] = 0.13333333333333
E.db["general"]["backdropfadecolor"]["g"] = 0.13333333333333
E.db["general"]["backdropfadecolor"]["r"] = 0.13333333333333
E.db["general"]["bottomPanel"] = false
E.db["general"]["decimalLength"] = 0
E.db["general"]["font"] = "-FafnyirUI"
E.db["general"]["itemLevel"]["itemLevelFont"] = "-FafnyirUI"
E.db["general"]["loginmessage"] = false
E.db["general"]["lootRoll"]["nameFont"] = "-FafnyirUI"
E.db["general"]["minimap"]["icons"]["queueStatus"]["font"] = "-FafnyirUI"
E.db["general"]["minimap"]["icons"]["queueStatus"]["fontSize"] = 12
E.db["general"]["minimap"]["locationFont"] = "-FafnyirUI"
E.db["general"]["objectiveFrameHeight"] = 450
E.db["general"]["totems"]["growthDirection"] = "HORIZONTAL"
E.db["general"]["totems"]["spacing"] = 1
E.db["general"]["valuecolor"]["b"] = 0.99
E.db["general"]["valuecolor"]["g"] = 0.99
E.db["general"]["valuecolor"]["r"] = 0.99

-- Movers
E.db["movers"]["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,49,-35"
E.db["movers"]["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,120"
E.db["movers"]["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-457,-373"
E.db["movers"]["ArtifactBarMover"] = "TOP,ElvUIParent,TOP,0,-4"
E.db["movers"]["AzeriteBarMover"] = "TOP,ElvUIParent,TOP,0,-7"
E.db["movers"]["BNETMover"] = "TOPRIGHT,UIParent,TOPRIGHT,-5,-205"
E.db["movers"]["BelowMinimapContainerMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-366,-346"
E.db["movers"]["BossButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-536,33"
E.db["movers"]["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-390,393"
E.db["movers"]["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-215,-5"
E.db["movers"]["ClassBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,381"
E.db["movers"]["ComboBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,325"
E.db["movers"]["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-215,-148"
E.db["movers"]["DurabilityFrameMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,457,34"
E.db["movers"]["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,14"
E.db["movers"]["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,49"
E.db["movers"]["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,300,18"
E.db["movers"]["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,-300,18"
E.db["movers"]["ElvAB_5"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,4"
E.db["movers"]["ElvAB_6"] = "BOTTOM,UIParent,BOTTOM,0,239"
E.db["movers"]["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,69,1014"
E.db["movers"]["ElvUF_BodyGuardMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,478,251"
E.db["movers"]["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,0,-323"
E.db["movers"]["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,550,380"
E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,505,500"
E.db["movers"]["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,141,-4"
E.db["movers"]["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,550,394"
E.db["movers"]["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-299,353"
E.db["movers"]["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-299,380"
E.db["movers"]["ElvUF_Raid40Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,12,354"
E.db["movers"]["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,101,354"
E.db["movers"]["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,764"
E.db["movers"]["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1076"
E.db["movers"]["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,299,353"
E.db["movers"]["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,299,380"
E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-555,380"
E.db["movers"]["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,6"
E.db["movers"]["LeftChatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,34"
E.db["movers"]["LootFrameMover"] = "TOP,ElvUIParent,TOP,-192,-448"
E.db["movers"]["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-491"
E.db["movers"]["MawBuffsBelowMinimapMover"] = "TOP,UIParent,TOP,0,-4"
E.db["movers"]["MicrobarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-379,4"
E.db["movers"]["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-5,-5"
E.db["movers"]["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-193,-198"
E.db["movers"]["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,-300,357"
E.db["movers"]["PlayerPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,370"
E.db["movers"]["ReputationBarMover"] = "TOP,ElvUIParent,TOP,0,-35"
E.db["movers"]["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,53"
E.db["movers"]["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,677,81"
E.db["movers"]["TalkingHeadFrameMover"] = "TOP,UIParent,TOP,0,-4"
E.db["movers"]["TargetPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,305,370"
E.db["movers"]["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-339,67"
E.db["movers"]["TopCenterContainerMover"] = "TOP,ElvUIParent,TOP,0,-55"
E.db["movers"]["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,216"
E.db["movers"]["VehicleLeaveButton"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-674,78"
E.db["movers"]["VehicleSeatMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,457,34"
E.db["movers"]["ZoneAbility"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-536,102"

-- Tooltip
E.db["tooltip"]["font"] = "-FafnyirUI"
E.db["tooltip"]["fontOutline"] = "OUTLINE"
E.db["tooltip"]["headerFont"] = "-FafnyirUI_Bold"
E.db["tooltip"]["headerFontOutline"] = "OUTLINE"
E.db["tooltip"]["healthBar"]["font"] = "-FafnyirUI"
E.db["tooltip"]["healthBar"]["statusPosition"] = "TOP"
E.db["tooltip"]["role"] = false
E.db["tooltip"]["targetInfo"] = false
E.db["tooltip"]["visibility"]["combatOverride"] = "HIDE"

-- Unit Frames
E.db["unitframe"]["colors"]["auraBarBuff"]["b"] = 0.94
E.db["unitframe"]["colors"]["auraBarBuff"]["g"] = 0.8
E.db["unitframe"]["colors"]["auraBarBuff"]["r"] = 0.41
E.db["unitframe"]["colors"]["auraBarByType"] = false
E.db["unitframe"]["colors"]["castColor"]["b"] = 0
E.db["unitframe"]["colors"]["castColor"]["g"] = 0.70196078431373
E.db["unitframe"]["colors"]["castColor"]["r"] = 1
E.db["unitframe"]["colors"]["castbar_backdrop"]["a"] = 0.60000002384186
E.db["unitframe"]["colors"]["castbar_backdrop"]["b"] = 0.14901960784314
E.db["unitframe"]["colors"]["castbar_backdrop"]["g"] = 0.14901960784314
E.db["unitframe"]["colors"]["castbar_backdrop"]["r"] = 0.14901960784314
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["b"] = 0
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["g"] = 1
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][1]["r"] = 1
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["b"] = 0
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["g"] = 1
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][2]["r"] = 1
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["b"] = 0
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["g"] = 1
E.db["unitframe"]["colors"]["classResources"]["comboPoints"][3]["r"] = 1
E.db["unitframe"]["colors"]["colorhealthbyvalue"] = false
E.db["unitframe"]["colors"]["customcastbarbackdrop"] = true
E.db["unitframe"]["colors"]["customhealthbackdrop"] = true
E.db["unitframe"]["colors"]["custompowerbackdrop"] = true
E.db["unitframe"]["colors"]["frameGlow"]["mouseoverGlow"]["enable"] = false
E.db["unitframe"]["colors"]["healPrediction"]["absorbs"]["a"] = 0.40000003576279
E.db["unitframe"]["colors"]["healPrediction"]["overabsorbs"]["a"] = 0.40000003576279
E.db["unitframe"]["colors"]["health"]["b"] = 0.070588235294118
E.db["unitframe"]["colors"]["health"]["g"] = 0.070588235294118
E.db["unitframe"]["colors"]["health"]["r"] = 0.062745098039216
E.db["unitframe"]["colors"]["health_backdrop"]["b"] = 0.070588235294118
E.db["unitframe"]["colors"]["health_backdrop"]["g"] = 0.070588235294118
E.db["unitframe"]["colors"]["health_backdrop"]["r"] = 0.070588235294118
E.db["unitframe"]["colors"]["healthclass"] = true
E.db["unitframe"]["colors"]["power"]["ALT_POWER"]["b"] = 1
E.db["unitframe"]["colors"]["power"]["ALT_POWER"]["g"] = 0.63921568627451
E.db["unitframe"]["colors"]["power"]["ALT_POWER"]["r"] = 0
E.db["unitframe"]["colors"]["power"]["INSANITY"]["b"] = 0.69019607843137
E.db["unitframe"]["colors"]["power"]["INSANITY"]["g"] = 0.14117647058823
E.db["unitframe"]["colors"]["power"]["INSANITY"]["r"] = 0.54901960784314
E.db["unitframe"]["colors"]["power"]["MAELSTROM"]["g"] = 0.63921568627451
E.db["unitframe"]["colors"]["power"]["MANA"]["b"] = 1
E.db["unitframe"]["colors"]["power"]["MANA"]["g"] = 0.63921568627451
E.db["unitframe"]["colors"]["power"]["MANA"]["r"] = 0
E.db["unitframe"]["colors"]["power_backdrop"]["b"] = 0.10196078431373
E.db["unitframe"]["colors"]["power_backdrop"]["g"] = 0.10196078431373
E.db["unitframe"]["colors"]["power_backdrop"]["r"] = 0.10196078431373
E.db["unitframe"]["colors"]["tapped"]["b"] = 0.61176470588235
E.db["unitframe"]["colors"]["tapped"]["g"] = 0.56862745098039
E.db["unitframe"]["colors"]["tapped"]["r"] = 0.54901960784314
E.db["unitframe"]["cooldown"]["fonts"]["enable"] = true
E.db["unitframe"]["cooldown"]["fonts"]["font"] = "-FafnyirUI_Bold"
E.db["unitframe"]["cooldown"]["threshold"] = -1
E.db["unitframe"]["font"] = "- Big Noodle"
E.db["unitframe"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["fontSize"] = 18
E.db["unitframe"]["smartRaidFilter"] = false
E.db["unitframe"]["statusbar"] = "- FafnyirUI Clean"
E.db["unitframe"]["targetOnMouseDown"] = true
E.db["unitframe"]["units"]["arena"]["buffs"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["arena"]["buffs"]["maxDuration"] = 0
E.db["unitframe"]["units"]["arena"]["buffs"]["sizeOverride"] = 20
E.db["unitframe"]["units"]["arena"]["buffs"]["xOffset"] = 2
E.db["unitframe"]["units"]["arena"]["buffs"]["yOffset"] = -10
E.db["unitframe"]["units"]["arena"]["castbar"]["height"] = 12
E.db["unitframe"]["units"]["arena"]["castbar"]["width"] = 180
E.db["unitframe"]["units"]["arena"]["debuffs"]["anchorPoint"] = "RIGHT"
E.db["unitframe"]["units"]["arena"]["debuffs"]["maxDuration"] = 0
E.db["unitframe"]["units"]["arena"]["debuffs"]["perrow"] = 2
E.db["unitframe"]["units"]["arena"]["debuffs"]["sizeOverride"] = 36
E.db["unitframe"]["units"]["arena"]["debuffs"]["xOffset"] = 1
E.db["unitframe"]["units"]["arena"]["debuffs"]["yOffset"] = 0
E.db["unitframe"]["units"]["arena"]["disableMouseoverGlow"] = true
E.db["unitframe"]["units"]["arena"]["disableTargetGlow"] = true
E.db["unitframe"]["units"]["arena"]["enable"] = false
E.db["unitframe"]["units"]["arena"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["arena"]["health"]["text_format"] = "[health:current] || [perhp]%"
E.db["unitframe"]["units"]["arena"]["health"]["xOffset"] = -2
E.db["unitframe"]["units"]["arena"]["height"] = 36
E.db["unitframe"]["units"]["arena"]["infoPanel"]["height"] = 16
E.db["unitframe"]["units"]["arena"]["name"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["arena"]["name"]["text_format"] = "[name:veryshort]"
E.db["unitframe"]["units"]["arena"]["name"]["yOffset"] = 16
E.db["unitframe"]["units"]["arena"]["portrait"]["camDistanceScale"] = 1
E.db["unitframe"]["units"]["arena"]["portrait"]["width"] = 35
E.db["unitframe"]["units"]["arena"]["power"]["height"] = 4
E.db["unitframe"]["units"]["arena"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["arena"]["power"]["xOffset"] = 2
E.db["unitframe"]["units"]["arena"]["spacing"] = 17
E.db["unitframe"]["units"]["arena"]["width"] = 180
E.db["unitframe"]["units"]["assist"]["enable"] = false
E.db["unitframe"]["units"]["boss"]["buffs"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["boss"]["buffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["boss"]["buffs"]["countPosition"] = "BOTTOM"
E.db["unitframe"]["units"]["boss"]["buffs"]["countXOffset"] = 2
E.db["unitframe"]["units"]["boss"]["buffs"]["countYOffset"] = -4
E.db["unitframe"]["units"]["boss"]["buffs"]["priority"] = "Boss,Blacklist"
E.db["unitframe"]["units"]["boss"]["buffs"]["sizeOverride"] = 20
E.db["unitframe"]["units"]["boss"]["buffs"]["xOffset"] = 2
E.db["unitframe"]["units"]["boss"]["buffs"]["yOffset"] = -15
E.db["unitframe"]["units"]["boss"]["castbar"]["height"] = 12
E.db["unitframe"]["units"]["boss"]["castbar"]["width"] = 160
E.db["unitframe"]["units"]["boss"]["customTexts"] = E.db["unitframe"]["units"]["boss"]["customTexts"] or {}
E.db["unitframe"]["units"]["boss"]["customTexts"]["Power text"] = {
            ["attachTextTo"] = "Health",
            ["enable"] = true,
            ["font"] = "-FafnyirUI",
            ["fontOutline"] = "OUTLINE",
            ["justifyH"] = "RIGHT",
            ["size"] = 14,
            ["text_format"] = "[powercolor][power:percent]",
            ["xOffset"] = 1,
            ["yOffset"] = -14
        }
E.db["unitframe"]["units"]["boss"]["debuffs"]["anchorPoint"] = "RIGHT"
E.db["unitframe"]["units"]["boss"]["debuffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["boss"]["debuffs"]["countPosition"] = "BOTTOM"
E.db["unitframe"]["units"]["boss"]["debuffs"]["countYOffset"] = -4
E.db["unitframe"]["units"]["boss"]["debuffs"]["perrow"] = 2
E.db["unitframe"]["units"]["boss"]["debuffs"]["sizeOverride"] = 28
E.db["unitframe"]["units"]["boss"]["debuffs"]["xOffset"] = 1
E.db["unitframe"]["units"]["boss"]["debuffs"]["yOffset"] = -1
E.db["unitframe"]["units"]["boss"]["disableMouseoverGlow"] = true
E.db["unitframe"]["units"]["boss"]["disableTargetGlow"] = true
E.db["unitframe"]["units"]["boss"]["growthDirection"] = "UP"
E.db["unitframe"]["units"]["boss"]["health"]["position"] = "BOTTOMLEFT"
E.db["unitframe"]["units"]["boss"]["health"]["text_format"] = "[health:current:shortvalue] || [perhp]%"
E.db["unitframe"]["units"]["boss"]["health"]["yOffset"] = -8
E.db["unitframe"]["units"]["boss"]["height"] = 28
E.db["unitframe"]["units"]["boss"]["name"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["boss"]["name"]["text_format"] = ""
E.db["unitframe"]["units"]["boss"]["name"]["yOffset"] = 8
E.db["unitframe"]["units"]["boss"]["power"]["enable"] = false
E.db["unitframe"]["units"]["boss"]["power"]["height"] = 4
E.db["unitframe"]["units"]["boss"]["power"]["position"] = "LEFT"
E.db["unitframe"]["units"]["boss"]["power"]["text_format"] = "[powercolor][power:percent]"
E.db["unitframe"]["units"]["boss"]["power"]["xOffset"] = 2
E.db["unitframe"]["units"]["boss"]["spacing"] = 17
E.db["unitframe"]["units"]["boss"]["width"] = 160
E.db["unitframe"]["units"]["focus"]["castbar"]["enable"] = false
E.db["unitframe"]["units"]["focus"]["castbar"]["height"] = 28
E.db["unitframe"]["units"]["focus"]["castbar"]["width"] = 340
E.db["unitframe"]["units"]["focus"]["debuffs"]["anchorPoint"] = "BOTTOMRIGHT"
E.db["unitframe"]["units"]["focus"]["debuffs"]["enable"] = false
E.db["unitframe"]["units"]["focus"]["disableTargetGlow"] = true
E.db["unitframe"]["units"]["focus"]["height"] = 12
E.db["unitframe"]["units"]["focus"]["name"]["attachTextTo"] = "Frame"
E.db["unitframe"]["units"]["focus"]["name"]["text_format"] = "[name:abbrev:medium]"
E.db["unitframe"]["units"]["focus"]["name"]["yOffset"] = -4
E.db["unitframe"]["units"]["focus"]["power"]["enable"] = false
E.db["unitframe"]["units"]["focus"]["power"]["height"] = 5
E.db["unitframe"]["units"]["focus"]["raidicon"]["enable"] = false
E.db["unitframe"]["units"]["focus"]["threatStyle"] = "NONE"
E.db["unitframe"]["units"]["focus"]["width"] = 100
E.db["unitframe"]["units"]["party"]["ROLE1"] = "HEALER"
E.db["unitframe"]["units"]["party"]["ROLE2"] = "TANK"
E.db["unitframe"]["units"]["party"]["buffIndicator"]["size"] = 10
E.db["unitframe"]["units"]["party"]["buffs"]["anchorPoint"] = "TOPRIGHT"
E.db["unitframe"]["units"]["party"]["buffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["party"]["buffs"]["countPosition"] = "BOTTOM"
E.db["unitframe"]["units"]["party"]["buffs"]["countYOffset"] = -4
E.db["unitframe"]["units"]["party"]["buffs"]["enable"] = true
E.db["unitframe"]["units"]["party"]["buffs"]["growthX"] = "LEFT"
E.db["unitframe"]["units"]["party"]["buffs"]["perrow"] = 2
E.db["unitframe"]["units"]["party"]["buffs"]["sizeOverride"] = 20
E.db["unitframe"]["units"]["party"]["buffs"]["xOffset"] = -2
E.db["unitframe"]["units"]["party"]["buffs"]["yOffset"] = -15
E.db["unitframe"]["units"]["party"]["classbar"]["enable"] = false
E.db["unitframe"]["units"]["party"]["debuffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["party"]["debuffs"]["clickThrough"] = true
E.db["unitframe"]["units"]["party"]["debuffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["party"]["debuffs"]["countPosition"] = "BOTTOM"
E.db["unitframe"]["units"]["party"]["debuffs"]["countYOffset"] = -4
E.db["unitframe"]["units"]["party"]["debuffs"]["perrow"] = 2
E.db["unitframe"]["units"]["party"]["debuffs"]["priority"] = "Blacklist,Personal,nonPersonal"
E.db["unitframe"]["units"]["party"]["debuffs"]["sizeOverride"] = 28
E.db["unitframe"]["units"]["party"]["debuffs"]["xOffset"] = -1
E.db["unitframe"]["units"]["party"]["debuffs"]["yOffset"] = -1
E.db["unitframe"]["units"]["party"]["disableMouseoverGlow"] = true
E.db["unitframe"]["units"]["party"]["disableTargetGlow"] = true
E.db["unitframe"]["units"]["party"]["groupBy"] = "ROLE"
E.db["unitframe"]["units"]["party"]["healPrediction"]["enable"] = false
E.db["unitframe"]["units"]["party"]["health"]["position"] = "BOTTOM"
E.db["unitframe"]["units"]["party"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["party"]["health"]["yOffset"] = 4
E.db["unitframe"]["units"]["party"]["height"] = 28
E.db["unitframe"]["units"]["party"]["horizontalSpacing"] = 1
E.db["unitframe"]["units"]["party"]["infoPanel"]["height"] = 12
E.db["unitframe"]["units"]["party"]["name"]["position"] = "TOPLEFT"
E.db["unitframe"]["units"]["party"]["name"]["text_format"] = "[name]"
E.db["unitframe"]["units"]["party"]["name"]["yOffset"] = 8
E.db["unitframe"]["units"]["party"]["orientation"] = "MIDDLE"
E.db["unitframe"]["units"]["party"]["petsGroup"]["xOffset"] = 0
E.db["unitframe"]["units"]["party"]["power"]["enable"] = false
E.db["unitframe"]["units"]["party"]["power"]["height"] = 3
E.db["unitframe"]["units"]["party"]["power"]["position"] = "BOTTOMRIGHT"
E.db["unitframe"]["units"]["party"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["party"]["power"]["yOffset"] = 2
E.db["unitframe"]["units"]["party"]["raidRoleIcons"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["party"]["raidicon"]["attachTo"] = "RIGHT"
E.db["unitframe"]["units"]["party"]["raidicon"]["size"] = 12
E.db["unitframe"]["units"]["party"]["raidicon"]["xOffset"] = -3
E.db["unitframe"]["units"]["party"]["raidicon"]["yOffset"] = -10
E.db["unitframe"]["units"]["party"]["rdebuffs"]["enable"] = false
E.db["unitframe"]["units"]["party"]["rdebuffs"]["font"] = "vixar"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["fontOutline"] = "OUTLINE"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["size"] = 18
E.db["unitframe"]["units"]["party"]["rdebuffs"]["stack"]["position"] = "RIGHT"
E.db["unitframe"]["units"]["party"]["rdebuffs"]["stack"]["xOffset"] = 4
E.db["unitframe"]["units"]["party"]["rdebuffs"]["stack"]["yOffset"] = -5
E.db["unitframe"]["units"]["party"]["rdebuffs"]["xOffset"] = 28
E.db["unitframe"]["units"]["party"]["rdebuffs"]["yOffset"] = 12
E.db["unitframe"]["units"]["party"]["readycheckIcon"]["size"] = 14
E.db["unitframe"]["units"]["party"]["readycheckIcon"]["yOffset"] = 4
E.db["unitframe"]["units"]["party"]["roleIcon"]["enable"] = false
E.db["unitframe"]["units"]["party"]["roleIcon"]["xOffset"] = 1
E.db["unitframe"]["units"]["party"]["roleIcon"]["yOffset"] = -1
E.db["unitframe"]["units"]["party"]["showPlayer"] = false
E.db["unitframe"]["units"]["party"]["threatStyle"] = "NONE"
E.db["unitframe"]["units"]["party"]["verticalSpacing"] = 10
E.db["unitframe"]["units"]["party"]["width"] = 160
E.db["unitframe"]["units"]["pet"]["buffs"]["priority"] = "CastByNPC"
E.db["unitframe"]["units"]["pet"]["buffs"]["sizeOverride"] = 46
E.db["unitframe"]["units"]["pet"]["castbar"]["enable"] = false
E.db["unitframe"]["units"]["pet"]["castbar"]["height"] = 24
E.db["unitframe"]["units"]["pet"]["castbar"]["iconSize"] = 32
E.db["unitframe"]["units"]["pet"]["castbar"]["width"] = 340
E.db["unitframe"]["units"]["pet"]["debuffs"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["pet"]["debuffs"]["perrow"] = 1
E.db["unitframe"]["units"]["pet"]["debuffs"]["priority"] = "Blacklist,Personal"
E.db["unitframe"]["units"]["pet"]["debuffs"]["sizeOverride"] = 36
E.db["unitframe"]["units"]["pet"]["debuffs"]["xOffset"] = -1
E.db["unitframe"]["units"]["pet"]["debuffs"]["yOffset"] = 10
E.db["unitframe"]["units"]["pet"]["fader"]["enable"] = false
E.db["unitframe"]["units"]["pet"]["fader"]["casting"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["combat"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["health"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["hover"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["minAlpha"] = 0
E.db["unitframe"]["units"]["pet"]["fader"]["playertarget"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["power"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["range"] = false
E.db["unitframe"]["units"]["pet"]["fader"]["unittarget"] = true
E.db["unitframe"]["units"]["pet"]["fader"]["vehicle"] = true
E.db["unitframe"]["units"]["pet"]["height"] = 12
E.db["unitframe"]["units"]["pet"]["infoPanel"]["height"] = 14
E.db["unitframe"]["units"]["pet"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["pet"]["name"]["xOffset"] = 2
E.db["unitframe"]["units"]["pet"]["name"]["yOffset"] = 4
E.db["unitframe"]["units"]["pet"]["power"]["enable"] = false
E.db["unitframe"]["units"]["pet"]["power"]["height"] = 5
E.db["unitframe"]["units"]["pet"]["threatStyle"] = "NONE"
E.db["unitframe"]["units"]["pet"]["width"] = 100
E.db["unitframe"]["units"]["player"]["RestIcon"]["hideAtMaxLevel"] = true
E.db["unitframe"]["units"]["player"]["RestIcon"]["anchorPoint"] = "LEFT"
E.db["unitframe"]["units"]["player"]["RestIcon"]["texture"] = "Resting0"
E.db["unitframe"]["units"]["player"]["RestIcon"]["xOffset"] = 13
E.db["unitframe"]["units"]["player"]["RestIcon"]["yOffset"] = -1
E.db["unitframe"]["units"]["player"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["player"]["castbar"]["customTextFont"]["enable"] = true
E.db["unitframe"]["units"]["player"]["castbar"]["customTextFont"]["font"] = "- Big Noodle"
E.db["unitframe"]["units"]["player"]["castbar"]["customTextFont"]["fontSize"] = 18
E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["enable"] = true
E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["font"] = "- Big Noodle"
E.db["unitframe"]["units"]["player"]["castbar"]["customTimeFont"]["fontSize"] = 18
E.db["unitframe"]["units"]["player"]["castbar"]["height"] = 24
E.db["unitframe"]["units"]["player"]["castbar"]["icon"] = false
E.db["unitframe"]["units"]["player"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["player"]["castbar"]["iconSize"] = 24
E.db["unitframe"]["units"]["player"]["castbar"]["iconXOffset"] = 0
E.db["unitframe"]["units"]["player"]["castbar"]["strataAndLevel"]["frameStrata"] = "TOOLTIP"
E.db["unitframe"]["units"]["player"]["castbar"]["strataAndLevel"]["useCustomStrata"] = true
E.db["unitframe"]["units"]["player"]["castbar"]["textColor"]["b"] = 1
E.db["unitframe"]["units"]["player"]["castbar"]["textColor"]["g"] = 1
E.db["unitframe"]["units"]["player"]["castbar"]["textColor"]["r"] = 1
E.db["unitframe"]["units"]["player"]["castbar"]["width"] = 220
E.db["unitframe"]["units"]["player"]["classbar"]["detachFromFrame"] = true
E.db["unitframe"]["units"]["player"]["classbar"]["enable"] = false
E.db["unitframe"]["units"]["player"]["classbar"]["height"] = 15
E.db["unitframe"]["units"]["player"]["customTexts"] = E.db["unitframe"]["units"]["player"]["customTexts"] or {}
E.db["unitframe"]["units"]["player"]["customTexts"]["!Health"] = {
		["attachTextTo"] = "Health",
		["enable"] = true,
		["font"] = "- Big Noodle",
		["fontOutline"] = "OUTLINE",
		["justifyH"] = "LEFT",
		["size"] = 14,
		["text_format"] = "[health:current:shortvalue] | [perhp]%",
		["xOffset"] = 0,
		["yOffset"] = 20
}
E.db["unitframe"]["units"]["player"]["debuffs"]["enable"] = false
E.db["unitframe"]["units"]["player"]["debuffs"]["perrow"] = 6
E.db["unitframe"]["units"]["player"]["debuffs"]["yOffset"] = 3
E.db["unitframe"]["units"]["player"]["fader"]["enable"] = false
E.db["unitframe"]["units"]["player"]["fader"]["minAlpha"] = 0
E.db["unitframe"]["units"]["player"]["health"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["player"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["health"]["xOffset"] = 0
E.db["unitframe"]["units"]["player"]["health"]["yOffset"] = 8
E.db["unitframe"]["units"]["player"]["height"] = 26
E.db["unitframe"]["units"]["player"]["name"]["position"] = "TOPLEFT"
E.db["unitframe"]["units"]["player"]["name"]["text_format"] = "[name]"
E.db["unitframe"]["units"]["player"]["name"]["xOffset"] = 2
E.db["unitframe"]["units"]["player"]["name"]["yOffset"] = 35
E.db["unitframe"]["units"]["player"]["portrait"]["overlay"] = true
E.db["unitframe"]["units"]["player"]["power"]["detachFromFrame"] = true
E.db["unitframe"]["units"]["player"]["power"]["enable"] = false
E.db["unitframe"]["units"]["player"]["power"]["height"] = 12
E.db["unitframe"]["units"]["player"]["power"]["hideonnpc"] = true
E.db["unitframe"]["units"]["player"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["player"]["raidicon"]["attachTo"] = "CENTER"
E.db["unitframe"]["units"]["player"]["raidicon"]["enable"] = false
E.db["unitframe"]["units"]["player"]["raidicon"]["yOffset"] = 2
E.db["unitframe"]["units"]["player"]["threatStyle"] = "NONE"
E.db["unitframe"]["units"]["player"]["width"] = 220
E.db["unitframe"]["units"]["raid1"]["growthDirection"] = "UP_LEFT"
E.db["unitframe"]["units"]["raid1"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid1"]["height"] = 46
E.db["unitframe"]["units"]["raid1"]["horizontalSpacing"] = -1
E.db["unitframe"]["units"]["raid1"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["raid1"]["power"]["enable"] = false
E.db["unitframe"]["units"]["raid1"]["verticalSpacing"] = -1
E.db["unitframe"]["units"]["raid1"]["width"] = 90
E.db["unitframe"]["units"]["raid2"]["growthDirection"] = "UP_LEFT"
E.db["unitframe"]["units"]["raid2"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid2"]["height"] = 46
E.db["unitframe"]["units"]["raid2"]["horizontalSpacing"] = -1
E.db["unitframe"]["units"]["raid2"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["raid2"]["verticalSpacing"] = -1
E.db["unitframe"]["units"]["raid2"]["width"] = 90
E.db["unitframe"]["units"]["raid3"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["raid3"]["height"] = 23
E.db["unitframe"]["units"]["raid3"]["horizontalSpacing"] = -1
E.db["unitframe"]["units"]["raid3"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["raid3"]["verticalSpacing"] = -1
E.db["unitframe"]["units"]["raid3"]["width"] = 90
E.db["unitframe"]["units"]["tank"]["enable"] = false
E.db["unitframe"]["units"]["target"]["aurabar"]["enable"] = false
E.db["unitframe"]["units"]["target"]["buffs"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["target"]["buffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["target"]["buffs"]["countPosition"] = "TOP"
E.db["unitframe"]["units"]["target"]["buffs"]["countYOffset"] = 6
E.db["unitframe"]["units"]["target"]["buffs"]["enable"] = false
E.db["unitframe"]["units"]["target"]["buffs"]["growthX"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["buffs"]["perrow"] = 6
E.db["unitframe"]["units"]["target"]["buffs"]["priority"] = "Blacklist,Personal,Boss,nonPersonal"
E.db["unitframe"]["units"]["target"]["buffs"]["sizeOverride"] = 24
E.db["unitframe"]["units"]["target"]["buffs"]["yOffset"] = 18
E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["enable"] = true
E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["font"] = "- Big Noodle"
E.db["unitframe"]["units"]["target"]["castbar"]["customTextFont"]["fontSize"] = 18
E.db["unitframe"]["units"]["target"]["castbar"]["customTimeFont"]["enable"] = true
E.db["unitframe"]["units"]["target"]["castbar"]["customTimeFont"]["font"] = "- Big Noodle"
E.db["unitframe"]["units"]["target"]["castbar"]["customTimeFont"]["fontSize"] = 18
E.db["unitframe"]["units"]["target"]["castbar"]["height"] = 24
E.db["unitframe"]["units"]["target"]["castbar"]["icon"] = false
E.db["unitframe"]["units"]["target"]["castbar"]["iconAttached"] = false
E.db["unitframe"]["units"]["target"]["castbar"]["iconAttachedTo"] = "Castbar"
E.db["unitframe"]["units"]["target"]["castbar"]["iconSize"] = 20
E.db["unitframe"]["units"]["target"]["castbar"]["iconXOffset"] = 0
E.db["unitframe"]["units"]["target"]["castbar"]["strataAndLevel"]["frameStrata"] = "TOOLTIP"
E.db["unitframe"]["units"]["target"]["castbar"]["strataAndLevel"]["useCustomStrata"] = true
E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["b"] = 1
E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["g"] = 1
E.db["unitframe"]["units"]["target"]["castbar"]["textColor"]["r"] = 1
E.db["unitframe"]["units"]["target"]["castbar"]["width"] = 220
E.db["unitframe"]["units"]["target"]["customTexts"] = E.db["unitframe"]["units"]["target"]["customTexts"] or {}
E.db["unitframe"]["units"]["target"]["customTexts"]["!Health"] = {
		["attachTextTo"] = "Health",
		["enable"] = true,
		["font"] = "- Big Noodle",
		["fontOutline"] = "OUTLINE",
		["justifyH"] = "RIGHT",
		["size"] = 14,
		["text_format"] = "[perhp]% | [health:current:shortvalue]",
		["xOffset"] = 0,
		["yOffset"] = 20
}
E.db["unitframe"]["units"]["target"]["debuffs"]["anchorPoint"] = "TOPLEFT"
E.db["unitframe"]["units"]["target"]["debuffs"]["attachTo"] = "FRAME"
E.db["unitframe"]["units"]["target"]["debuffs"]["countFont"] = "-FafnyirUI"
E.db["unitframe"]["units"]["target"]["debuffs"]["countPosition"] = "TOP"
E.db["unitframe"]["units"]["target"]["debuffs"]["countYOffset"] = 6
E.db["unitframe"]["units"]["target"]["debuffs"]["growthX"] = "RIGHT"
E.db["unitframe"]["units"]["target"]["debuffs"]["perrow"] = 6
E.db["unitframe"]["units"]["target"]["debuffs"]["priority"] = "Blacklist,Personal,CastByNPC"
E.db["unitframe"]["units"]["target"]["debuffs"]["sizeOverride"] = 24
E.db["unitframe"]["units"]["target"]["debuffs"]["yOffset"] = 20
E.db["unitframe"]["units"]["target"]["health"]["position"] = "TOPLEFT"
E.db["unitframe"]["units"]["target"]["health"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["health"]["xOffset"] = 2
E.db["unitframe"]["units"]["target"]["health"]["yOffset"] = 8
E.db["unitframe"]["units"]["target"]["height"] = 26
E.db["unitframe"]["units"]["target"]["name"]["position"] = "TOPRIGHT"
E.db["unitframe"]["units"]["target"]["name"]["text_format"] = "[name:abbrev:medium]"
E.db["unitframe"]["units"]["target"]["name"]["yOffset"] = 35
E.db["unitframe"]["units"]["target"]["portrait"]["overlay"] = true
E.db["unitframe"]["units"]["target"]["power"]["detachFromFrame"] = true
E.db["unitframe"]["units"]["target"]["power"]["detachedWidth"] = 72
E.db["unitframe"]["units"]["target"]["power"]["enable"] = false
E.db["unitframe"]["units"]["target"]["power"]["height"] = 4
E.db["unitframe"]["units"]["target"]["power"]["offset"] = 3
E.db["unitframe"]["units"]["target"]["power"]["position"] = "BOTTOMLEFT"
E.db["unitframe"]["units"]["target"]["power"]["text_format"] = ""
E.db["unitframe"]["units"]["target"]["power"]["width"] = "spaced"
E.db["unitframe"]["units"]["target"]["power"]["xOffset"] = -7
E.db["unitframe"]["units"]["target"]["raidicon"]["attachTo"] = "CENTER"
E.db["unitframe"]["units"]["target"]["raidicon"]["enable"] = false
E.db["unitframe"]["units"]["target"]["raidicon"]["yOffset"] = 2
E.db["unitframe"]["units"]["target"]["threatStyle"] = "NONE"
E.db["unitframe"]["units"]["target"]["width"] = 220
E.db["unitframe"]["units"]["targettarget"]["debuffs"]["enable"] = false
E.db["unitframe"]["units"]["targettarget"]["height"] = 16
E.db["unitframe"]["units"]["targettarget"]["name"]["position"] = "CENTER"
E.db["unitframe"]["units"]["targettarget"]["name"]["text_format"] = "[name:short]"
E.db["unitframe"]["units"]["targettarget"]["name"]["yOffset"] = 15
E.db["unitframe"]["units"]["targettarget"]["power"]["enable"] = false
E.db["unitframe"]["units"]["targettarget"]["power"]["height"] = 5
E.db["unitframe"]["units"]["targettarget"]["raidicon"]["enable"] = false
E.db["unitframe"]["units"]["targettarget"]["width"] = 100



	
		--If you want to modify the base layout according to
		-- certain conditions then this is how you could do it
		if layout == "tank" then
-- Tank Layout --
		elseif layout == "dps" then
-- DPS Layout --
		elseif layout == "healer" then
-- UltraWide Layout --

-- E.db["movers"]["ElvUF_FocusCastbarMover"] = "TOP,ElvUIParent,TOP,0,-323"
-- E.db["movers"]["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,-460,382"
-- E.db["movers"]["ElvUF_PartyMover"] = "BOTTOMLEFT,UIParent,BOTTOMLEFT,870,500"
-- E.db["movers"]["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,460,382"

		end



	--[[
	--	This section at the bottom is just to update ElvUI and display a message
	--]]
	--Update ElvUI
	E:UpdateAll(true)
	--Show message about layout being set
	PluginInstallStepComplete.message = "Layout Set"
	PluginInstallStepComplete:Show()
end

--This function is executed when you press "Skip Process" or "Finished" in the installer.
local function InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	--Set a variable tracking the version of the addon when layout was installed
	E.db[MyPluginName].install_version = Version

	ReloadUI()
end

--This is the data we pass on to the ElvUI Plugin Installer.
--The Plugin Installer is reponsible for displaying the install guide for this layout.
local InstallerData = {
	Title = format("|cFFDA70D6%s %s|r", MyPluginName, "Installation"),
	Name = MyPluginName,
	tutorialImage = "Interface\\AddOns\\ElvUI_FafnyirUI\\logo.tga", --If you have a logo you want to use, otherwise it uses the one from ElvUI
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText("Welcome to the installation for %s.", MyPluginName)
			PluginInstallFrame.Desc1:SetText("This installation process will guide you through the steps, and apply settings to your current ElvUI profile. If you want to be able to go back to your original settings then create a new profile before going through this installation process.")
			PluginInstallFrame.Desc2:SetText("Please press the continue button if you wish to go through the installation process, otherwise click the 'Skip Process' button.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Skip Process")
		end,
[2] = function()
			PluginInstallFrame.SubTitle:SetText("Layouts")
			PluginInstallFrame.Desc1:SetText("Please click a button below to apply the layout.")
			PluginInstallFrame.Desc1:SetText("FafnyirUI is built for |cFFDA70D62560 x 1440|r Resolution")
			PluginInstallFrame.Desc2:SetText("Importance: |cff07D400High|r")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupLayout("tank") end)
			PluginInstallFrame.Option1:SetText("Install")
			-- PluginInstallFrame.Option2:Show()
			-- PluginInstallFrame.Option2:SetScript("OnClick", function() SetupLayout("healer") end)
			-- PluginInstallFrame.Option2:SetText("UltraWide")


		end,
		--[[ [3] = function()
			PluginInstallFrame.SubTitle:SetText("Addons Profiles")
			PluginInstallFrame.Desc1:SetText("This will set some addons profiles if loaded to match |cFFDA70D6FafnyirUI.")
			PluginInstallFrame.Desc2:SetText("Importance: |cFFDA70D6Low|r")
			PluginInstallFrame.Desc3:SetText("|cFFDA70D6Notice: |cffffffffIt is recommanded that you backup your WTF folder or some specific Addons settings as they will be overwritten.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() SetupAddons() end)
			PluginInstallFrame.Option1:SetText("Setup Addons")
		end,
		--]]
		

		[3] = function()
			PluginInstallFrame.SubTitle:SetText("Installation Complete")
			PluginInstallFrame.Desc1:SetText("You have completed the installation process.")
			PluginInstallFrame.Desc2:SetText("Please click the button below in order to finalize the process and automatically reload your UI.")
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", InstallComplete)
			PluginInstallFrame.Option1:SetText("Finished")
		end,
	},
	StepTitles = {
		[1] = "Welcome",
		[2] = "Layout",
		-- [3] = "Addons",
		[3] = "Installation Complete",
	},
	StepTitlesColor = {1, 1, 1},
	StepTitlesColorSelected = {163/255, 48/255, 201/255},
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = "RIGHT",
}

--This function holds the options table which will be inserted into the ElvUI config
local function InsertOptions()
	E.Options.args.MyPluginName = {
		order = 100,
		type = "group",
		name = format("|cFFDA70D6%s|r", MyPluginName),
		args = {
			header1 = {
				order = 1,
				type = "header",
				name = MyPluginName,
			},
			description1 = {
				order = 2,
				type = "description",
				name = format("%s is a layout for ElvUI.", MyPluginName),
			},
			logoicon = {
				order = 4,
				type = "description",
				name = "",
				image = "Interface\\AddOns\\ElvUI_FafnyirUI\\logo.tga",
				imageWidth = 256,
				imageHeight = 128,
				imageCoords = {0,1,0,1},
			},
			header2 = {
				order = 4,
				type = "header",
				name = "Installation",
			},
			description2 = {
				order = 5,
				type = "description",
				name = "The installation guide should pop up automatically after you have completed the ElvUI installation. If you wish to re-run the installation process for this layout then please click the button below.",
			},
			creditsheader = {
				order = 93,
				type = "header",
				name = "|cFFDA70D6Credits",
			},
			creditsheaderdesc1 = {
				order = 94,
				type = "description",
				name = "Special thanks goes to these amazing people for their help, code or inspiration.",
			},
			creditsheaderdesc2 = {
				order = 95,
				type = "description",
				name = "|cFFDA70D6Eltreum, Naowh, Gennoken",
			},
			creditsheaderspac1 = {
				order = 96,
				type = "description",
				name = "",
			},
			spacer2 = {
				order = 6,
				type = "description",
				name = "",
			},
			install = {
				order = 7,
				type = "execute",
				name = "Install",
				desc = "Run the installation process.",
				func = function() E:GetModule("PluginInstaller"):Queue(InstallerData); E:ToggleOptionsUI(); end,
			},
		},
	}
end

--Create a unique table for our plugin
P[MyPluginName] = {}

--This function will handle initialization of the addon
function mod:Initialize()
	--Initiate installation process if ElvUI install is complete and our plugin install has not yet been run
	if E.private.install_complete and E.db[MyPluginName].install_version == nil then
		E:GetModule("PluginInstaller"):Queue(InstallerData)
	end

	--Insert our options table when ElvUI config is loaded
	EP:RegisterPlugin(addon, InsertOptions)
end

--Register module with callback so it gets initialized when ready
E:RegisterModule(mod:GetName())
