hl.window_rule({
	name = "telegram-workspace",
	match = {
		class = "org.telegram.desktop",
	},
	workspace = "9 silent",

	name = "discord-workspace",
	match = {
		class = "discord",
	},
	workspace = "8 silent",

	name = "qbittorrent-workspace",
	match = {
		class = "org.qbittorrent.qbittorrent",
	},
	workspace = "7 silent",

	name = "qbittorrent-float",
	match = {
		class = "org.qbittorrent.qbittorrent",
	},
	float = true,

	name = "steam",
	match = {
		class = "steam",
	},
	float = true,
})

-- hl.window_rule({ name = "kitty_starting_width", match = { class = "kitty" }, scrolling_width = 0.75 })

-- windowrule=opacity 0.95,workspace:[0-9]

-- windowrulev2=workspace 9 silent,class:org.telegram.desktop

-- windowrulev2=workspace 8 silent,class:discord

-- windowrule=workspace 6 silent,class:docker desktop

-- windowrule=workspace 10 silent,spotify

-- windowrule=workspace 7 silent,class:obsidian

-- windowrule=workspace 6 silent,notion-app-enhanced

-- #windowrule=opacity 0.9,obsidian

-- #windowrule=opacity 0.9,firefox

-- windowrule=opacity 0.9,zen

-- windowrule=opacity 0.1,launcher

-- windowrulev2=float,class:tk

-- windowrulev2=float,class:toplevel

-- layerrule = blur,launcher
