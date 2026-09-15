hl.config({
	general = {
		-- See https://wiki.hyprland.org/Configuring/Variables/ for more

		gaps_in = 5,
		gaps_out = 20,
		border_size = 3,

		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},

		layout = "scrolling",

		-- allow_workspace_cycles = true
	},
})

hl.config({
	dwindle = {
		-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
		-- pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
		preserve_split = true, -- you probably want this
	},
})

hl.config({
	master = {
		-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
		new_status = "slave",
	},
})

hl.config({
	scrolling = {
		column_width = 0.5,
		direction = "right",
		fullscreen_on_one_column = true,
		focus_fit_method = 1,
		explicit_column_widths = "0.5, 1.0",
		follow_focus = true,
	},
})

hl.config({
	gestures = {
		-- See https://wiki.hyprland.org/Configuring/Variables/ for more
		-- workspace_swipe = off
	},
})

hl.config({
	binds = {
		allow_workspace_cycles = true,
	},
})
