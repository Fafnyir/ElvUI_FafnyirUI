local E, L, V, P, G = unpack(ElvUI)
local IsAddOnLoaded = IsAddOnLoaded
local format = string.format
local MyPluginName = "FafnyirUI"
local GNUI = E:GetModule("FafnyirUI");
local classColor = E:ClassColor(E.myclass, true)

function GNUI:SetupAddons()

-- Addon Skins
if IsAddOnLoaded('AddonSkins') then
	GNUI:LoadAddonSkinsProfile()
	E:Print(L["'AddonSkins' profile has been set."])
end
-- Deadly Boss Mods
if IsAddOnLoaded('DBM-Core') then
	GNUI:LoadDBMProfile()
	E:Print(L["'DBM' profile has been set."])
end
-- Details
if IsAddOnLoaded('Details') then
	GNUI:LoadDetailsProfile()
	E:Print(L["'Details' profile has been set."])
end
-- OmniCD
if IsAddOnLoaded('OmniCD') then
	GNUI:LoadOmniCDProfile()
	E:Print(L["'OmniCD' profile has been set."])
end
-- Plater
if IsAddOnLoaded('Plater') then
	GNUI:LoadWDProfile()
	E:Print(L["'Plater' profile has been set."])
end

-- WarpDeplete
if IsAddOnLoaded('WarpDeplete') then
	GNUI:LoadWDProfile()
	E:Print(L["'WarpDeplete' profile has been set."])
end

-- ArkInventory
if IsAddOnLoaded('ArkInventory') then
	GNUI:LoadWDProfile()
	E:Print(L["'ArkInventory' profile has been set."])
end

-- Update ElvUI
	E:StaggeredUpdateAll(nil, true)

	E:Print(L["Addons Profiles have been set"])
	PluginInstallStepComplete.message = "Addons Profiles have been set"
	PluginInstallStepComplete:Show()
end