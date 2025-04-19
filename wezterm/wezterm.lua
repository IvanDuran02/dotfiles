local wezterm = require("wezterm")

return {
	-- Shell
	default_prog = { "/bin/zsh", "-l" },

	-- Font
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
	}),
	font_size = 20,
	line_height = 1.1,

	-- Colors
	-- color_scheme = "Catppuccin Mocha", -- It's a little too gray for me at the moment

	-- Opacity (fake transparency on Wayland)
	window_background_opacity = 0.8,
	text_background_opacity = 0.70,

	-- Padding
	window_padding = {
		left = 10,
		right = 10,
		top = 8,
		bottom = 8,
	},

	-- Wayland support
	enable_wayland = true,

	-- Hide tab bar if only one tab
	hide_tab_bar_if_only_one_tab = true,

	-- Cursor animation
	animation_fps = 144,
	cursor_blink_rate = 500,
	default_cursor_style = "BlinkingBar",

	-- Optional: frame tweaks
	window_frame = {
		border_left_width = 6,
		border_right_width = 6,
		border_top_height = 6,
		border_bottom_height = 6,
		border_left_color = "#1e1e2e",
		border_right_color = "#1e1e2e",
		border_top_color = "#1e1e2e",
		border_bottom_color = "#1e1e2e",
	},
}
