--[[ Copyright (c) 2021 npc_strider, ickputzdirwech
	* Original mod by npc_strider.
	* For direct use of code or graphics, credit is appreciated and encouraged. See LICENSE.txt for more information.
	* This mod may contain modified code sourced from base/core Factorio.
	* This mod has been modified by ickputzdirwech.
]]

--[[ Overview of shortcuts-artillery.lua:
	* Artillery targeting remote shortcut.
	* AdvancedArtilleryRemotesContinued shortcuts and custom inputs.
	* Toggle artillery cannon fire
		- configuration
		- shortcut
		- selection tool
	* Landmine thrower shortcut.
]]

if settings.startup["artillery-targeting-remote"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "artillery-targeting-remote",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.artillery-targeting-remote"}},
			order = "d[artillery]-a[artillery-targeting-remote]",
			--associated_control_input = "artillery-targeting-remote",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-targeting-remote-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-targeting-remote-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if settings.startup["artillery-targeting-remote"] and settings.startup["artillery-targeting-remote"].value and data.raw.capsule["artillery-cluster-remote"] and data.raw.capsule["artillery-discovery-remote"] then
	data:extend(
	{
		{
			type = "shortcut",
			name = "artillery-cluster-remote",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.artillery-cluster-remote"}},
			order = "d[artillery]-b[artillery-cluster-remote]",
			--associated_control_input = "artillery-cluster-remote",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-cluster-remote-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		},
		{
			type = "shortcut",
			name = "artillery-discovery-remote",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.artillery-discovery-remote"}},
			order = "d[artillery]-c[artillery-discovery-remote]",
			--associated_control_input = "artillery-discovery-remote",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-discovery-remote-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

local artillery_toggle = settings.startup["artillery-toggle"].value
if artillery_toggle == "both" or artillery_toggle == "artillery-wagon" or artillery_toggle == "artillery-turret" then

	local disable_turret_list = {}

	if artillery_toggle == "both" then
		disable_turret_list = {"artillery-wagon", "artillery-turret"}
	else
		disable_turret_list = {artillery_toggle}
	end

	data:extend(
	{
		{
			type = "shortcut",
			name = "artillery-jammer-tool",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.artillery-jammer-tool"}},
			order = "d[artillery]-d[artillery-jammer-tool]",
			--associated_control_input = "artillery-jammer-tool",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-jammer-tool-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/artillery-jammer-tool-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		},
		{
			type = "selection-tool",
			name = "artillery-jammer-tool",
			subgroup = "tool",
			order = "c[automated-construction]-a[artillery-jammer-tool]",
			icon = "__Shortcuts-ick__/graphics/artillery-jammer-tool-red.png",
			icon_size = 32,
			flags = {"hidden", "only-in-cursor", "not-stackable"},
			stack_size = 1,
			selection_color = { r = 1, g = 0, b = 0 },
			alt_selection_color = { r = 1, g = 0, b = 0 },
			selection_mode = {"blueprint"},
			alt_selection_mode = {"blueprint"},
			selection_cursor_box_type = "not-allowed",
			alt_selection_cursor_box_type = "not-allowed",
			entity_type_filters = disable_turret_list,
			alt_entity_type_filters = disable_turret_list,
			tile_filters = {"tile-unknown"},
			alt_tile_filters = {"tile-unknown"}
		}
	})
end

if mods["MIRV"] and data.raw.capsule["mirv-targeting-remote"] and settings.startup["mirv-targeting-remote"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "mirv-targeting-remote",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.mirv-targeting-remote"}, " ", {"Shortcuts-ick.control", "mirv-targeting-remote"}},
			order = "d[artillery]-f[mirv-targeting-remote]",
			--associated_control_input = "mirv-targeting-remote",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/mirv-targeting-remote-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/mirv-targeting-remote-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if mods["landmine-thrower"] and data.raw.capsule["landmine-thrower-remote"] and settings.startup["landmine-thrower-remote"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "landmine-thrower-remote",
			localised_name = {"", "[color=red]", {"technology-name.artillery"}, ": [/color]", {"item-name.landmine-thrower-remote"}},
			order = "d[artillery]-g[landmine-thrower-remote]",
			--associated_control_input = "landmine-thrower-remote",
			action = "lua",
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/landmine-thrower-remote-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end
