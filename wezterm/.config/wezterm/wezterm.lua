local wezterm = require("wezterm")
local config = {
	color_scheme = "Catppuccin Mocha",
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 14.0,
	enable_tab_bar = true,
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	term = "wezterm",
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
	window_background_opacity = 0.95,
}

return config
