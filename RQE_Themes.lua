-- RQE Themes registers artwork and defaults with RQE. Player choices remain in RQEDB.
local ui = RQE and RQE.UI
assert(ui and ui.RegisterTheme, "RQE Themes requires an RQE version with theme registration")

local ROOT = "Interface\\AddOns\\RQE_Themes\\Media\\UI\\"
local RQE_ROOT = "Interface\\AddOns\\RQE\\Media\\UI\\"
local FEL_GREEN = { 153 / 255, 226 / 255, 45 / 255 }
local INFERNAL_ORANGE = { 1, 140 / 255, 43 / 255 }
local CREAM = { 237 / 255, 191 / 255, 89 / 255 }

local theme = {
    name = "Burning Legion",
    shortName = "Legion",
    description = "Fel-lit iron, molten bronze, and infernal green for the Quest Helper and Tracker.",
    previews = {
        helper = { texture = ROOT .. "Previews\\BurningLegionHelper.tga", width = 768, height = 654 },
        tracker = { texture = ROOT .. "Previews\\BurningLegionTracker.tga", width = 657, height = 906 },
    },
    colors = {
        azure = { 56 / 255, 119 / 255, 38 / 255 },
        azureBright = FEL_GREEN,
        gold = INFERNAL_ORANGE,
        charcoal = { 12 / 255, 17 / 255, 12 / 255 },
        charcoalRaised = { 29 / 255, 36 / 255, 22 / 255 },
        muted = { 174 / 255, 190 / 255, 135 / 255 },
        info = { 187 / 255, 235 / 255, 132 / 255 },
    },
    textures = {
        header = ROOT .. "Panels\\BurningLegion_Header.tga",
        sectionHeader = ROOT .. "Panels\\BurningLegion_SectionHeader.tga",
        scenarioTimed = RQE_ROOT .. "Panels\\ScenarioTimed.tga",
        scenarioTorghast = RQE_ROOT .. "Panels\\ScenarioTorghast.tga",
        scenarioUntimed = RQE_ROOT .. "Panels\\ScenarioUntimed.tga",
        dungeonFollower = RQE_ROOT .. "Panels\\ScenarioDungeonFollower.tga",
        dungeonNormal = RQE_ROOT .. "Panels\\ScenarioDungeonNormal.tga",
        dungeonHeroic = RQE_ROOT .. "Panels\\ScenarioDungeonHeroic.tga",
        buttonNormal = ROOT .. "Buttons\\BurningLegion_Normal.tga",
        buttonHover = ROOT .. "Buttons\\BurningLegion_Hover.tga",
        buttonPressed = ROOT .. "Buttons\\BurningLegion_Pressed.tga",
        buttonDisabled = ROOT .. "Buttons\\BurningLegion_Disabled.tga",
        buttonWide = ROOT .. "Buttons\\BurningLegion_Wide.tga",
        icons = ROOT .. "Icons\\",
        iconPrefix = "BurningLegion_",
    },
    backgroundPictures = {
        { id = "sargeras", name = "Sargeras", texture = ROOT .. "Backgrounds\\BurningLegion_Sargeras.tga" },
        { id = "felReaver", name = "Fel Reaver", texture = ROOT .. "Backgrounds\\BurningLegion_FelReaver.tga" },
        { id = "warships", name = "Legion Warships", texture = ROOT .. "Backgrounds\\BurningLegion_Warships.tga" },
    },
    defaultBackgroundPicture = "felReaver",
    defaults = {
        buttonBorderOpacity = 0.15,
        frameBorderOpacity = 0.75,
        frameBackgroundOpacity = { main = 0.65, tracker = 0.60 },
        backgroundPictureOpacity = { main = 0.25, tracker = 0.20 },
        tooltipPictureOpacity = { questID = 0.30, questName = 0.30, macroBody = 0.20 },
        cardPictureOpacity = { timed = 0.65, heroic = 0.80, normal = 1, follower = 0.70, delve = 1, torghast = 0.80 },
    },
    fontDefaults = {
        headerText = { color = INFERNAL_ORANGE },
        sectionHeader = { color = FEL_GREEN },
        QuestIDText = { color = FEL_GREEN },
        QuestNameText = { color = FEL_GREEN },
        StepText = { color = FEL_GREEN },
        DirectionTextFrame = { color = CREAM },
        QuestDescription = { color = CREAM },
    },
    cardDefaults = {
        timed = "legionFelHourglass",
        heroic = "legionLegionStandard",
        normal = "legionSoulEngine",
        follower = "legionWarglaiveRally",
        delve = "azureArchive",
        torghast = "legionRuneboundChains",
    },
    cardStyles = {
        timed = {
            { id = "legionFelHourglass", name = "Fel Hourglass", texture = ROOT .. "Panels\\BurningLegion_Timed_FelHourglass.tga" },
            { id = "legionInvasionSundial", name = "Invasion Sundial", texture = ROOT .. "Panels\\BurningLegion_Timed_InvasionSundial.tga" },
            { id = "legionDoomPortal", name = "Doom Portal", texture = ROOT .. "Panels\\BurningLegion_Timed_DoomPortal.tga" },
        },
        normal = {
            { id = "legionFelforgePassage", name = "Felforge Passage", texture = ROOT .. "Panels\\BurningLegion_Normal_FelforgePassage.tga" },
            { id = "legionSoulEngine", name = "Soul Engine", texture = ROOT .. "Panels\\BurningLegion_Normal_SoulEngine.tga" },
        },
        heroic = {
            { id = "legionInfernalGate", name = "Infernal Gate", texture = ROOT .. "Panels\\BurningLegion_Heroic_InfernalGate.tga" },
            { id = "legionLegionStandard", name = "Legion Standard", texture = ROOT .. "Panels\\BurningLegion_Heroic_LegionStandard.tga" },
            { id = "legionAbyssalKeystone", name = "Abyssal Keystone", texture = ROOT .. "Panels\\BurningLegion_Heroic_AbyssalKeystone.tga" },
        },
        torghast = {
            { id = "legionSoulLantern", name = "Soul Lantern", texture = ROOT .. "Panels\\BurningLegion_Torghast_SoulLantern.tga" },
            { id = "legionRuneboundChains", name = "Runebound Chains", texture = ROOT .. "Panels\\BurningLegion_Torghast_RuneboundChains.tga" },
        },
        follower = {
            { id = "legionWarglaiveRally", name = "Warglaive Rally", texture = ROOT .. "Panels\\BurningLegion_Follower_WarglaiveRally.tga" },
            { id = "legionCommandTable", name = "Command Table", texture = ROOT .. "Panels\\BurningLegion_Follower_CommandTable.tga" },
            { id = "legionPactSigils", name = "Pact Sigils", texture = ROOT .. "Panels\\BurningLegion_Follower_PactSigils.tga" },
        },
        delve = {
            { id = "legionDemonVault", name = "Demon Vault", texture = ROOT .. "Panels\\BurningLegion_Delve_DemonVault.tga" },
            { id = "legionAbyssalCore", name = "Abyssal Core", texture = ROOT .. "Panels\\BurningLegion_Delve_AbyssalCore.tga" },
        },
    },
    iconOffsets = {
        RemoveWaypoint = { -3, 3 },
        Contribution = { -1, 3 },
        Close = { -1, 0 },
        Waypoint = { -1, -2 },
        Filter = { -1, 0 },
    },
    focusWaypointOffsetX = 2,
    questBadgeOffsets = { Campaign = -2 },
    migrateFontSettings = function(bank, sameColor)
        if bank.burningLegionStepDefaultsV1 then return end
        local setting = bank.BurningLegion and bank.BurningLegion.StepText
        if setting and sameColor(setting.color, CREAM) then
            setting.color = { unpack(FEL_GREEN) }
        end
        bank.burningLegionStepDefaultsV1 = true
    end,
}

local registered, reason = ui:RegisterTheme("BurningLegion", theme)
assert(registered, "RQE Themes could not register Burning Legion: " .. tostring(reason))
