local E, L, V, P, G = unpack(ElvUI);
local GNUI = E:GetModule("FafnyirUI");

function GNUI:LoadWDProfile()
WarpDepleteDB = {
	["profileKeys"] = {
		["Fafnyir - Whisperwind"] = "FafnyirUI",
		["Tanetha - Whisperwind"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
		},
		["FafnyirUI"] = {
			["forcesFont"] = "-FafnyirUI_Bold",
			["frameX"] = -14.16648101806641,
			["completedObjectivesColor"] = "ffa330c9",
			["timerFont"] = "-Fafnyir_Black",
			["bar3Font"] = "-FafnyirUI",
			["bar1Texture"] = "- FafnyirUI Clean",
			["insertKeystoneAutomatically"] = false,
			["bar3TextureColor"] = "ffa330c9",
			["objectivesFont"] = "-FafnyirUI",
			["bar2Texture"] = "- FafnyirUI Clean",
			["keyDetailsFont"] = "-FafnyirUI",
			["prideGlowColor"] = "ffa330c9",
			["deathsFont"] = "-FafnyirUI",
			["bar2TextureColor"] = "ffa330c9",
			["forcesOverlayTexture"] = "- FafnyirUI Clean",
			["completedForcesColor"] = "ffa330c9",
			["bar2Font"] = "-FafnyirUI",
			["bar1Font"] = "-FafnyirUI",
			["forcesOverlayTextureColor"] = "ffa330c9",
			["bar1TextureColor"] = "ffa330c9",
			["forcesTextureColor"] = "ff6600cc",
			["forcesTexture"] = "- FafnyirUI Clean",
			["frameY"] = 200.8331909179688,
			["bar3Texture"] = "- FafnyirUI Clean",
			["keyFont"] = "-FafnyirUI",
		},
	},
}
end