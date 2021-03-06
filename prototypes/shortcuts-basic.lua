--[[ Copyright (c) 2021 npc_strider, ickputzdirwech
	* Original mod by npc_strider.
	* For direct use of code or graphics, credit is appreciated and encouraged. See LICENSE.txt for more information.
	* This mod may contain modified code sourced from base/core Factorio.
	* This mod has been modified by ickputzdirwech.
]]


--[[ Overview of shortcuts-basic.lua:
	* Character Lamp shortcut.
	* Emergency locator beacon shortcut.
	* Grid shortcut.
	* Show rail block visualization shortcut.
	* Toggle Personal logistics requests shortcut.
	* Zoom out of world shortcut.
	* MaxRateCalculator shortcut.
]]

if settings.startup["flashlight-toggle"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "flashlight-toggle",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"Shortcuts-ick.flashlight-toggle"}},
			order = "a[basic]-b[flashlight-toggle]",
			--associated_control_input = "flashlight-toggle",
			action = "lua",
			toggleable = true,
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/flashlight-toggle-x32.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/flashlight-toggle-x24.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			disabled_icon =
			{
				filename = "__Shortcuts-ick__/graphics/flashlight-toggle-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			disabled_small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/flashlight-toggle-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if settings.startup["signal-flare"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "signal-flare",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"Shortcuts-ick.signal-flare"}},
			order = "a[basic]-c[signal-flare]",
			--associated_control_input = "signal-flare",
			action = "lua",
			toggleable = true,
			style = "red",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/signal-flare-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/signal-flare-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if settings.startup["draw-grid"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "draw-grid",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"gui.grid"}},
			order = "a[basic]-d[draw-grid]",
			--associated_control_input = "draw-grid",
			action = "lua",
			toggleable = true,
			style = "blue",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/grid-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/grid-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if settings.startup["rail-block-visualization-toggle"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "rail-block-visualization-toggle",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"gui-interface-settings.show-rail-block-visualization"}},
			order = "a[basic]-e[rail-block-visualization-toggle]",
			--associated_control_input = "rail-block-visualization-toggle",
			action = "lua",
			toggleable = true,
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/rail-block-visualization-toggle-x32-2.png",
				priority = "extra-high-no-scale",
				size = 32,
	      		mipmap_count = 2,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/rail-block-visualization-toggle-x32-2.png",
				priority = "extra-high-no-scale",
				size = 32,
	      		mipmap_count = 2,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			disabled_icon =
			{
				filename = "__Shortcuts-ick__/graphics/rail-block-visualization-toggle-x32-2-white.png",
				priority = "extra-high-no-scale",
				size = 32,
	      		mipmap_count = 2,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			disabled_small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/rail-block-visualization-toggle-x32-2-white.png",
				priority = "extra-high-no-scale",
				size = 32,
	     	 	mipmap_count = 2,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end

if settings.startup["toggle-personal-logistic-requests"] and settings.startup["toggle-personal-logistic-requests"].value then
	-- taken from mods.factorio.com/mod/PersonalLogisticsShortcut from Haxtorio, modified by ickputzdirwech
	data:extend(
	{
	  {
	    type = "shortcut",
	    name = "toggle-personal-logistic-requests",
		localised_name = {"", {"Shortcuts-ick.basic"}, {"shortcut.toggle-personal-logistic-requests"}},
	    order = "a[basic]-f[toggle-personal-logistic-requests]",
	    action = "toggle-personal-logistic-requests",
	    associated_control_input = "toggle-personal-logistic-requests",
		technology_to_unlock = "logistic-robotics",
	    icon =
	    {
			filename = "__base__/graphics/icons/shortcut-toolbar/mip/toggle-personal-logistics-x32.png",
			priority = "extra-high-no-scale",
			size = 32,
			scale = 0.5,
			mipmap_count = 2,
			flags = {"gui-icon"}
	    },
	    small_icon =
	    {
			filename = "__base__/graphics/icons/shortcut-toolbar/mip/toggle-personal-logistics-x24.png",
			priority = "extra-high-no-scale",
			size = 24,
			scale = 0.5,
			mipmap_count = 2,
			flags = {"gui-icon"}
	    },
	    disabled_icon =
	    {
			filename = "__base__/graphics/icons/shortcut-toolbar/mip/toggle-personal-logistics-x32-white.png",
			priority = "extra-high-no-scale",
			size = 32,
			scale = 0.5,
			mipmap_count = 2,
			flags = {"gui-icon"}
	    },
	    disabled_small_icon =
	    {
			filename = "__base__/graphics/icons/shortcut-toolbar/mip/toggle-personal-logistics-x24-white.png",
			priority = "extra-high-no-scale",
			size = 24,
			scale = 0.5,
			mipmap_count = 2,
			flags = {"gui-icon"}
	    }
	  }
	})
	-- end Haxtorio
end

if settings.startup["big-zoom"].value then
	data:extend(
	{
		{
			type = "shortcut",
			name = "big-zoom",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"controls.alt-zoom-out"}},
			order = "a[basic]-g[big-zoom]",
			--associated_control_input = "big-zoom",
			action = "lua",
			toggleable = true,
			style = "blue",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/big-zoom-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/big-zoom-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end


if mods["MaxRateCalculator"] and data.raw["selection-tool"]["max-rate-calculator"] and settings.startup["max-rate-calculator"].value then

	data.raw["selection-tool"]["max-rate-calculator"].icon = "__MaxRateCalculator__/graphics/calculator.png"
	data.raw["selection-tool"]["max-rate-calculator"].icon_size = 64
	table.insert(data.raw["selection-tool"]["max-rate-calculator"].flags, "spawnable")

	data:extend(
	{
		{
			type = "shortcut",
			name = "max-rate-shortcut",
			localised_name = {"", {"Shortcuts-ick.basic"}, {"item-name.max-rate-calculator"}, " ", {"Shortcuts-ick.control", "marc_hotkey"}},
			order = "a[basic]-h[max-rate-shortcut]",
			--associated_control_input = "marc_hotkey",
			action = "spawn-item",
			item_to_spawn = "max-rate-calculator",
			style = "blue",
			icon =
			{
				filename = "__Shortcuts-ick__/graphics/max-rate-calculator-x32-white.png",
				priority = "extra-high-no-scale",
				size = 32,
				scale = 0.5,
				flags = {"gui-icon"}
			},
			small_icon =
			{
				filename = "__Shortcuts-ick__/graphics/max-rate-calculator-x24-white.png",
				priority = "extra-high-no-scale",
				size = 24,
				scale = 0.5,
				flags = {"gui-icon"}
			}
		}
	})
end
