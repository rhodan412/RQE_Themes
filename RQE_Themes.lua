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

-- Permanent companion themes.
local function color(hex)
    return {
        tonumber(hex:sub(1, 2), 16) / 255,
        tonumber(hex:sub(3, 4), 16) / 255,
        tonumber(hex:sub(5, 6), 16) / 255,
    }
end

local slots = { "timed", "heroic", "normal", "follower", "delve", "torghast" }
local slotAsset = {
    timed = "Timed", heroic = "Heroic", normal = "Normal",
    follower = "Follower", delve = "Delve", torghast = "Torghast",
}

local themes = {
    {
        key = "TitanArchive", name = "Titan Archive", shortName = "Titan",
        description = "Engraved stone, bronze, and luminous blue mapwork for the Quest Helper and Tracker.",
        palette = { azure = "426F86", azureBright = "6CCDF3", gold = "B99965", charcoal = "111D27", charcoalRaised = "263944", muted = "91A6B2", info = "C5F1FF" },
        font = { header = "EDBF59", section = "66CCFF", quest = "DEE2F7", step = "66CCFF", body = "F4E6C5" },
        pictureName = "Titan Astrolabe", pictureID = "titanAstrolabe",
        alternatePictures = { { "titanObservatory", "Titan Observatory" }, { "titanVault", "Titan Vault" } },
        defaultPictureID = "titanObservatory",
        opacity = { button = 0.30, frame = 0.85, main = 0.15, tracker = 0.05 },
        tooltipOpacity = { questID = 0.25, questName = 0.25, macroBody = 0.20 },
        cardOpacity = { timed = 0.80, heroic = 0.65, normal = 0.65, follower = 0.65, delve = 0.60, torghast = 0.65 },
    },
    {
        key = "EmeraldDream", name = "Emerald Dream", shortName = "Dream",
        description = "Living wood, emerald leaves, and quiet gold for the Quest Helper and Tracker.",
        palette = { azure = "36764C", azureBright = "91D48C", gold = "D3B575", charcoal = "11231B", charcoalRaised = "234735", muted = "A6BDA9", info = "D8FFC0" },
        font = { header = "EDBF59", section = "FFFFD9", quest = "F4E6C5", step = "FFFFD9", body = "F4E6C5" },
        pictureName = "Dream Grove", pictureID = "dreamGrove",
        alternatePictures = { { "moonlitGrove", "Moonlit Grove" }, { "worldTreeRoots", "World Tree Roots" } },
        defaultPictureID = "moonlitGrove",
        opacity = { button = 0.20, frame = 0.80, main = 0.15, tracker = 0.15 },
        tooltipOpacity = { questID = 0.15, questName = 0.15, macroBody = 0.20 },
        cardOpacity = { timed = 0.45, heroic = 0.55, normal = 0.55, follower = 0.55, delve = 0.55, torghast = 0.60 },
    },
    {
        key = "Voidbound", name = "Voidbound", shortName = "Void",
        description = "Obsidian facets, indigo shadows, and violet starlight for the Quest Helper and Tracker.",
        palette = { azure = "52448D", azureBright = "A681EF", gold = "C9A0FF", charcoal = "0E1020", charcoalRaised = "252147", muted = "A6A0C4", info = "E1D1FF" },
        font = { header = "C9A0FF", section = "DEE2F7", quest = "DEE2F7", step = "C9A0FF", body = "F4E6C5" },
        pictureName = "Void Constellation", pictureID = "voidConstellation",
        alternatePictures = { { "obsidianTemple", "Obsidian Temple" }, { "voidRift", "Void Rift" } },
        defaultPictureID = "obsidianTemple",
        opacity = { button = 0.20, frame = 0.85, main = 0.35, tracker = 0.40 },
        tooltipOpacity = { questID = 0.25, questName = 0.25, macroBody = 0.35 },
        cardOpacity = { timed = 0.85, heroic = 0.70, normal = 0.70, follower = 0.70, delve = 0.75, torghast = 0.90 },
    },
    {
        key = "PandarenScroll", name = "Pandaren Scroll", shortName = "Scroll",
        description = "Ink-wash mountains, carved jade, and warm parchment for the Quest Helper and Tracker.",
        palette = { azure = "438366", azureBright = "91C8A6", gold = "D2AF6D", charcoal = "241D17", charcoalRaised = "49382B", muted = "C6AE8B", info = "E7F5D5" },
        font = { header = "EDBF59", section = "F4E6C5", quest = "FFFFD9", step = "F4E6C5", body = "F4E6C5" },
        pictureName = "Ink-Wash Mountains", pictureID = "inkWashMountains",
        alternatePictures = { { "jadeGarden", "Jade Garden" }, { "mistyBridge", "Misty Mountain Bridge" } },
        defaultPictureID = "mistyBridge",
        opacity = { button = 0.20, frame = 1.00, main = 0.10, tracker = 0.10 },
        tooltipOpacity = { questID = 0.20, questName = 0.20, macroBody = 0.25 },
        cardOpacity = { timed = 0.60, heroic = 0.60, normal = 0.60, follower = 0.60, delve = 0.40, torghast = 0.50 },
    },
    {
        key = "GoblinWorkshop", name = "Goblin Workshop", shortName = "Workshop",
        description = "Riveted steel, copper machinery, and amber light for the Quest Helper and Tracker.",
        palette = { azure = "9B633D", azureBright = "EFA64F", gold = "F6C172", charcoal = "1B1B1B", charcoalRaised = "3A3230", muted = "B5A18D", info = "FFE0A0" },
        font = { header = "FF8C2B", section = "EDBF59", quest = "FFFFD9", step = "EDBF59", body = "F4E6C5" },
        pictureName = "Workshop Machinery", pictureID = "workshopMachinery",
        alternatePictures = { { "engineRoom", "Engine Room" }, { "airshipDeck", "Airship Deck" } },
        opacity = { button = 0.30, frame = 1.00, main = 0.15, tracker = 0.20 },
        tooltipOpacity = { questID = 0.30, questName = 0.30, macroBody = 0.35 },
        cardOpacity = { timed = 1.00, heroic = 0.75, normal = 0.75, follower = 0.75, delve = 0.90, torghast = 1.00 },
    },
}

for _, spec in ipairs(themes) do
    local key = spec.key
    local cardDefaults, cardStyles = {}, {}
    for _, slot in ipairs(slots) do
        local styleID = key:sub(1, 1):lower() .. key:sub(2) .. slotAsset[slot]
        cardDefaults[slot] = styleID
        cardStyles[slot] = {
            { id = styleID, name = spec.name .. " " .. slotAsset[slot], texture = ROOT .. "Panels\\" .. key .. "_" .. slotAsset[slot] .. ".tga" },
        }
    end

    local colors = {}
    for role, hex in pairs(spec.palette) do colors[role] = color(hex) end
    local backgroundPictures = {
        { id = spec.pictureID, name = spec.pictureName, texture = ROOT .. "Backgrounds\\" .. key .. "_Scene.tga" },
    }
    for index, picture in ipairs(spec.alternatePictures) do
        backgroundPictures[#backgroundPictures + 1] = {
            id = picture[1], name = picture[2],
            texture = ROOT .. "Backgrounds\\" .. key .. "_Alternate" .. index .. ".tga",
        }
    end
    local theme = {
        name = spec.name,
        shortName = spec.shortName,
        description = spec.description,
        previews = {
            helper = { texture = ROOT .. "Previews\\" .. key .. "Helper.tga", width = 768, height = 654 },
            tracker = { texture = ROOT .. "Previews\\" .. key .. "Tracker.tga", width = 657, height = 906 },
        },
        colors = colors,
        textures = {
            header = ROOT .. "Panels\\" .. key .. "_Header.tga",
            sectionHeader = ROOT .. "Panels\\" .. key .. "_SectionHeader.tga",
            scenarioTimed = RQE_ROOT .. "Panels\\ScenarioTimed.tga",
            scenarioTorghast = RQE_ROOT .. "Panels\\ScenarioTorghast.tga",
            scenarioUntimed = RQE_ROOT .. "Panels\\ScenarioUntimed.tga",
            dungeonFollower = RQE_ROOT .. "Panels\\ScenarioDungeonFollower.tga",
            dungeonNormal = RQE_ROOT .. "Panels\\ScenarioDungeonNormal.tga",
            dungeonHeroic = RQE_ROOT .. "Panels\\ScenarioDungeonHeroic.tga",
            buttonNormal = ROOT .. "Buttons\\" .. key .. "_Normal.tga",
            buttonHover = ROOT .. "Buttons\\" .. key .. "_Hover.tga",
            buttonPressed = ROOT .. "Buttons\\" .. key .. "_Pressed.tga",
            buttonDisabled = ROOT .. "Buttons\\" .. key .. "_Disabled.tga",
            buttonWide = ROOT .. "Buttons\\" .. key .. "_Wide.tga",
            icons = ROOT .. "Icons\\",
            iconPrefix = key .. "_",
        },
        backgroundPictures = backgroundPictures,
        defaultBackgroundPicture = spec.defaultPictureID or spec.pictureID,
        cardDefaults = cardDefaults,
        cardStyles = cardStyles,
        defaults = {
            buttonBorderOpacity = spec.opacity.button,
            frameBorderOpacity = spec.opacity.frame,
            frameBackgroundOpacity = { main = 0.70, tracker = 0.65 },
            backgroundPictureOpacity = { main = spec.opacity.main, tracker = spec.opacity.tracker },
            tooltipPictureOpacity = spec.tooltipOpacity or { questID = 0.25, questName = 0.25, macroBody = 0.20 },
            cardPictureOpacity = spec.cardOpacity or { timed = 0.85, heroic = 0.85, normal = 0.85, follower = 0.85, delve = 0.85, torghast = 0.85 },
        },
        fontDefaults = {
            headerText = { color = color(spec.font.header) },
            sectionHeader = { color = color(spec.font.section) },
            QuestIDText = { color = color(spec.font.quest) },
            QuestNameText = { color = color(spec.font.quest) },
            StepText = { color = color(spec.font.step) },
            DirectionTextFrame = { color = color(spec.font.body) },
            QuestDescription = { color = color(spec.font.body) },
        },
        -- The icons are recolored from RQE's existing semantic set. Keeping
        -- its contours preserves the base optical corrections at button size.
        focusWaypointOffsetX = 0,
    }
    local registered, reason = ui:RegisterTheme(key, theme)
    assert(registered, "RQE Themes could not register " .. spec.name .. ": " .. tostring(reason))
end
