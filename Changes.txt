12.1.5.0 (2026.11.10)

	**HIGHLIGHTS**
		- Added Titan Archive, Emerald Dream, Voidbound, Pandaren Scroll, and Goblin Workshop appearances for the Quest Helper, Quest Tracker, and Magic Button.
		- Added three selectable background pictures and activity-card artwork for each new theme, with profile-saved theme choices and opacity controls.
		- Tuned Emerald Dream's default picture and opacity settings to the reviewed in-game appearance.
		- Tuned Goblin Workshop's opacity defaults to the reviewed in-game appearance.
		- Tuned Pandaren Scroll's default picture and opacity settings to the reviewed in-game appearance.
		- Tuned Titan Archive's default picture and opacity settings to the reviewed in-game appearance.
		- Tuned Voidbound's default picture and opacity settings to the reviewed in-game appearance.
		- Kept all five new looks as permanent RQE Themes choices.
		- RQE Themes now loads as a companion on TBC Anniversary, Classic Season of Discovery, and Classic Forever as well as Retail.

	Media/UI/Backgrounds:
		- Added one 1024 x 1024 illustrated background for each new theme, with a quiet center for quest text. (2026.10.17.1347)
		- Added two more selectable 1024 x 1024 backgrounds per theme for appearance choices. (2026.10.17.1356)

	Media/UI/Buttons:
		- Added matching normal, hover, pressed, disabled, and wide button textures at the established RQE canvas sizes. (2026.10.17.1347)
		- Refined the four square button states with theme-specific engraved artwork while preserving their 128 x 128 canvas and icon opening. (2026.10.17.1407)

	Media/UI/Icons:
		- Added the full semantic icon set for each new theme using the established 64 x 64 contours and transparent padding. (2026.10.17.1347)

	Media/UI/Panels:
		- Added matching frame headers and six activity-card textures for each theme, keeping the main card motifs clear of the left text area. (2026.10.17.1347)
		- Reduced and moved the card seals toward the right edge to clear RQE's live dungeon badge, Delve flag, timer, and Torghast fields. (2026.10.17.1356)
		- Kept seals on dungeon cards only, avoiding stretched circular artwork on timed, Delve, and Torghast cards at their live aspect ratios. (2026.10.17.1407)

	Media/UI/Previews:
		- Added 1024 x 1024 padded Helper and Tracker previews for each theme, with recorded visible dimensions. (2026.10.17.1347)

	README.md:
		- Documented the five new theme choices and their available artwork. (2026.10.17.1347)

	RQE_Themes-Camelot.TOC:
		- Added a Classic Forever TOC (Interface 16001) that depends on RQE and loads the shared RQE_Themes.lua, so the companion themes register on that client. (2026.11.10.1410)

	RQE_Themes-Classic.toc:
		- Added a Classic Season of Discovery TOC (Interface 11508, 11509) that depends on RQE and loads the shared RQE_Themes.lua, so the companion themes register on that client. (2026.11.10.1410)

	RQE_Themes-Tbc.toc:
		- Added a TBC Anniversary TOC (Interface 20506) that depends on RQE and loads the shared RQE_Themes.lua, so the companion themes register on that client. (2026.11.10.1410)

	RQE_Themes.lua:
		- Moved the five retained theme definitions into the main runtime file without changing their stable keys, card IDs, artwork paths, or color choices; set Voidbound's default picture to Obsidian Temple and matched its opacity defaults to the reviewed values. (2026.10.17.1438)

	RQE_Themes.toc:
		- Loaded the additional companion theme definitions after Burning Legion. (2026.10.17.1347)
		- Loaded all six retained themes from RQE_Themes.lua alone so each registers once. (2026.10.17.1438)


v12.1.0.0 (2026-10-06) -- Requires RQE 12.1.0.15 or newer and WoW Retail.

	**HIGHLIGHTS**
		- Initial release of RQE Themes, a companion addon for RQE – Rhodan's Quest Explorer.
		- Added the Burning Legion appearance for the Quest Helper, Quest Tracker, and Magic Button, including matching frames, headers, buttons, and icons.
		- Added Sargeras, Fel Reaver, and Legion Warships background pictures and theme-specific card artwork for timed scenarios, dungeons, Delves, and Torghast.
		- Added theme defaults and previews while keeping player adjustments in RQE's existing profiles.
