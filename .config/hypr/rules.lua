hl.window_rule({
	name = "telegram-workspace",
	match = {
		class = "org.telegram.desktop",
	},
	workspace = "9 silent",
})

hl.window_rule({
	name = "discord-workspace",
	match = {
		class = "discord",
	},
	workspace = "8 silent",
})

hl.window_rule({
	name = "qbittorrent-workspace",
	match = {
		class = "org.qbittorrent.qBittorrent",
	},
	workspace = "7 silent",
})

hl.window_rule({
	name = "qbittorrent-float",
	match = {
		class = "org.qbittorrent.qBittorrent",
	},
	float = true,
})

hl.window_rule({
	name = "steam",
	match = {
		class = "steam",
	},
	float = true,
})

-- hl.layer_rule({
-- 	match = { namespace = "launcher" },
-- 	blur = true,
-- 	-- ignore_alpha = 0.5,
-- 	-- dim_around = true,
-- })
