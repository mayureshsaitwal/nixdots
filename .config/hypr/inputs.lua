hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		force_no_accel = 1,

		touchpad = {
			natural_scroll = false,
		},

		sensitivity = 1.25, -- -1.0 - 1.0, 0 means no modification.
		numlock_by_default = true,
	},
})

hl.device({
	name = "razer-razer-viper-mini",
	sensitivity = -0.5,
})

hl.device({
	name = "synaptics-tm3276-022",
	natural_scroll = true,
})
