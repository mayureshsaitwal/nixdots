hl.config({
	decoration = {
		-- See https://wiki.hyprland.org/Configuring/Variables/ for more

		rounding = 5,

		blur = {
			enabled = true,
			size = 3,
			passes = 5,
			-- blurls = gtk-layer-shell
			-- blurls = Discord
			-- blurls = rofi
			-- blurls = waybar
			new_optimizations = true,
		},

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
	},
})
