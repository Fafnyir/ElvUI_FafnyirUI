local E, L, V, P, G = unpack(ElvUI);
local GNUI = E:GetModule("FafnyirUI");

function GNUI:LoadAddonSkinsProfile()
AddOnSkinsDB = {
	["profileKeys"] = {
		["Fafnyir - Whisperwind"] = "FafnyirUI",
	},
	["profiles"] = {
		["Default"] = {
		},
		["FafnyirUI"] = {
			["ArkInventory"] = false,
			["DBM-Core"] = false,
		},
	},
}
AddOnSkinsDS = {
}
end