hl.config({
	decoration = {
		-- See https://wiki.hyprland.org/Configuring/Variables/ for more

		rounding = 25,

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
			render_power = 4,
			color = "rgba(00000055)",
			color_inactive = "rgba(00000022)",
			offset = "0 8",
			scale = 0.98,
			-- ignore_window = true,
			-- range = 4,
			-- render_power = 3,
			-- color = "rgba(1a1a1aee)",
		},

		dim_inactive = true, -- Enables dimming for non-focused windows
		dim_strength = 0.3, -- Shading level: 0.0 (no dimming) to 1.0 (completely black)

		-- 2. Opacity / Transparency Shading (Optional blend)
		active_opacity = 1.0, -- Kept fully opaque when focused
		inactive_opacity = 0.85, -- Sightly transparent when unfocused
	},
})
