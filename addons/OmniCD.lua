local E, L, V, P, G = unpack(ElvUI);
local GNUI = E:GetModule("FafnyirUI");

function GNUI:LoadOmniCDProfile()
OmniCDDB = {
	["profileKeys"] = {
		["Gulgan - Whisperwind"] = "Default",
		["Tuluugar - Whisperwind"] = "Default",
		["Fafnyir - Illidan"] = "Default",
		["Fafnyir - Whisperwind"] = "FafnyirUI",
		["Tanytha - Whisperwind"] = "Default",
	},
	["cooldowns"] = {
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["global"] = {
		["disableElvMsg"] = true,
	},
	["version"] = 2.51,
	["profiles"] = {
		["Default"] = {
		},
		["FafnyirUI"] = {
			["Party"] = {
				["party"] = {
					["extraBars"] = {
						["interruptBar"] = {
							["locked"] = true,
						},
					},
					["manualPos"] = {
						["interruptBar"] = {
							["y"] = 172.5867734861349,
							["x"] = 431.146748175619,
						},
					},
				},
			},
			["General"] = {
				["fonts"] = {
					["statusBar"] = {
						["font"] = "-FafnyirUI",
						["flag"] = "OUTLINE",
					},
					["optionSmall"] = {
						["font"] = "-FafnyirUI_Bold",
					},
					["anchor"] = {
						["font"] = "-FafnyirUI",
						["flag"] = "OUTLINE",
					},
					["icon"] = {
						["font"] = "-FafnyirUI",
					},
					["option"] = {
						["font"] = "-FafnyirUI_Bold",
					},
				},
				["textures"] = {
					["statusBar"] = {
						["BG"] = "- FafnyirUI Clean",
						["bar"] = "- FafnyirUI Clean",
					},
				},
			},
		},
	},
}
end