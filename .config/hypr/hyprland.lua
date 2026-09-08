---@diagnostic disable: undefined-global
-- This is the converted Hyprland Lua config.
-- Converted from the provided .conf without changing active values or commands.

hl.monitor({
	output = "",
	mode = "1920x1080@144",
	position = "0x0",
	scale = 1,
})

-- workspace=DP-2,1

-- See https://wiki.hyprland.org/Configuring/Keywords/ for more

-- Execute your favorite apps at launch

-- exec-once = waybar & hyprpaper & firefox

-- Source a file (multi-file configs) source = ~/.config/hypr/myColors.conf

-- Some default env vars. env = XCURSOR_SIZE,24

hl.env("HYPRCURSOR_THEME", "win11")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRSHOT_DIR", "$HOME/Screenshots")

-- env = GDK_BACKEND wayland,x11

-- For all categories, see https://wiki.hyprland.org/Configuring/Variables/

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
	},
})

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

		layout = "dwindle",

		-- allow_workspace_cycles = true
	},
})

-- decoration {
--
-- # See https://wiki.hyprland.org/Configuring/Variables/ for more
--
-- rounding = 10
-- blur = yes
-- blur_size = 3
-- blur_passes = 1
-- blur_new_optimizations = on
--
-- drop_shadow = yes
-- shadow_range = 4
-- shadow_render_power = 3
-- col.shadow = rgba(1a1a1aee)
-- }

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

hl.config({
	animations = {
		enabled = true,

		-- Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
	},
})

hl.curve("myBezier", {
	type = "bezier",
	points = {
		{ 0.05, 0.9 },
		{ 0.1, 1.05 },
	},
})

hl.curve("linear", {
	type = "bezier",
	points = {
		{ 0.0, 0.0 },
		{ 1.0, 1.0 },
	},
})

hl.curve("liner", {
	type = "bezier",
	points = {
		{ 1.0, 1.0 },
		{ 1.0, 1.0 },
	},
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 7,
	bezier = "myBezier",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 7,
	bezier = "default",
	style = "popin 80%",
})

hl.animation({
	leaf = "border",
	enabled = true,
	speed = 5,
	bezier = "liner",
})

hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 8,
	bezier = "liner",
	once = true,
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 7,
	bezier = "default",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 6,
	bezier = "default",
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

-- Example per-device config

-- See https://wiki.hyprland.org/Configuring/Keywords/#executing for more

hl.device({
	name = "razer-razer-viper-mini",
	sensitivity = -0.5,
})

hl.device({
	name = "synaptics-tm3276-022",
	natural_scroll = true,
})

-- Example windowrule v1

-- windowrule = float, ^(kitty)$

-- Example windowrule v2

-- windowrulev2 = float,class:^(kitty)$,title:^(kitty)$

-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more

-- See https://wiki.hyprland.org/Configuring/Keywords/ for more

local mainMod = "SUPER"

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

-- hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("wofi --show drun"))
--
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("tofi-drun --drun-launch=true --font /usr/share/fonts/TTF/SF-Pro.ttf"))
-- hl.bind(
-- 	mainMod .. " + D",
-- 	hl.dsp.exec_cmd("tofi-drun --font /usr/share/fonts/TTF/SF-Pro.ttf| xargs hyprctl dispatch exec --")
-- )

-- hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("rofi -show drun"))

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo()) -- dwindle
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 1 }))

-- Move focus with mainMod + hjkl keys

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + hjkl keys

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1, silent = true }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2, silent = true }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3, silent = true }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4, silent = true }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5, silent = true }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6, silent = true }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7, silent = true }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8, silent = true }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9, silent = true }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10, silent = true }))

-- Pin

hl.bind(mainMod .. " + SHIFT + P", hl.dsp.window.pin())

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Workspace Back and Forth

hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "previous" }))

-- hide active window

-- hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("you script ./scripts/hide_unhide.sh h"))
--
-- -- show hide window
--
-- hl.bind(mainMod .. " + SHIFT + H", hl.dsp.exec_cmd("you script ./scripts/hide_unhide.sh s"))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("SUPER + ALT + F", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + ALT + Z", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + ALT + B", hl.dsp.exec_cmd("brave"))
hl.bind(
	"SUPER + ALT + C",
	hl.dsp.exec_cmd(
		"chromium --incognito --disable-gpu-driver-bug-workarounds --enable-features=UseOzonePlatform --ozone-platform=wayland"
	)
)
hl.bind("SUPER + ALT + T", hl.dsp.exec_cmd("telegram-desktop"))
hl.bind("SUPER + ALT + S", hl.dsp.exec_cmd("LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"))

-- Token

hl.bind(
	"SUPER + ALT + SHIFT + T",
	hl.dsp.exec_cmd('cat /mnt/win1/Myself/repo_key | wl-copy; notify-send "Token Copied"')
)
hl.bind(
	"SUPER + ALT + SHIFT + R",
	hl.dsp.exec_cmd("sed -n '2p' /mnt/win1/Myself/Emails/reddit.txt | wl-copy; notify-send \"Username Copied\"")
)
hl.bind(
	"SUPER + ALT + SHIFT + P",
	hl.dsp.exec_cmd("sed -n '3p' /mnt/win1/Myself/Emails/reddit.txt | wl-copy; notify-send \"Password Copied\"")
)

-- Music

hl.bind("SUPER + Insert", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("SUPER + Delete", hl.dsp.exec_cmd("playerctl stop"))
hl.bind("SUPER + Home", hl.dsp.exec_cmd("playerctl next"))
hl.bind("SUPER + End", hl.dsp.exec_cmd("playerctl previous"))

-- Sound

hl.bind(
	"SUPER + Prior",
	hl.dsp.exec_cmd(
		"pulsemixer --change-volume +2 --max-volume 100 && pactl get-sink-volume @DEFAULT_SINK@ | head -n 1| awk '{print substr($5, 1, length($5)-1)}' > /tmp/wobpipe"
	)
)
hl.bind(
	"SUPER + Next",
	hl.dsp.exec_cmd(
		"pulsemixer --change-volume -2 --max-volume 100 && pactl get-sink-volume @DEFAULT_SINK@ | head -n 1| awk '{print substr($5, 1, length($5)-1)}' > /tmp/wobpipe"
	)
)
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd('pulsemixer --toggle-mute && notify-send "Toggle Mute"'))

-- Speaker

hl.bind("SUPER + Pause", hl.dsp.exec_cmd("~/bin/audio_switcher.sh"))

-- Screenshot

hl.bind("SUPER + PRINT", hl.dsp.exec_cmd('grimblast copysave output && notify-send "Screenshot Captured"'))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd('grimblast copysave area && notify-send "Screenshot Captured"'))

-- Screen Record

hl.bind("SUPER + F9", hl.dsp.exec_cmd("screenrecord.sh"))

-- cliphist

hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("cliphist list | dmenu | cliphist decode | wl-copy"))

-- PC

hl.bind("CTRL + ALT + SHIFT + P", hl.dsp.exec_cmd("poweroff"))
hl.bind("CTRL + ALT + SHIFT + R", hl.dsp.exec_cmd("reboot"))
hl.bind("CTRL + ALT + SHIFT + H", hl.dsp.exec_cmd("halt"))
hl.bind("CTRL + ALT + SHIFT + S", hl.dsp.exec_cmd("suspend"))

-- Hyprland

hl.bind("SUPER + F5", hl.dsp.exec_cmd('hyprctl reload;notify-send "Reloaded"'))

-- Hyprpicker

hl.bind("SUPER + F12", hl.dsp.exec_cmd("hyprpicker -a|wl-copy"))

-- Laptop

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 -10%"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 +10%"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl -- set-sink-mute 0 toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl -- set-source-mute 0 toggle"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +10%"))

-- Slay the Spire

-- hl.bind("CTRL + ALT + S", hl.dsp.exec_cmd("sh Downloads/Slay.the.Spire-jc141/start.n.sh"))

-- Hyprshot

-- hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("hyprshot -m output | wl-copy"))
-- hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m window | wl-copy"))

-- Pyprland

hl.bind(mainMod .. " + N", hl.dsp.workspace.toggle_special("stash"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("pypr toggle_special stash"))

-- Plugins

-- hl.config({
-- 	plugin = {
-- 		hyprfocus = {
-- 			enabled = false,
--
-- 			keyboard_focus_animation = "shrink",
-- 			mouse_focus_animation = "shrink",
--
-- 			bezier = {
-- 				bezIn = {
-- 					type = "bezier",
-- 					points = {
-- 						{ 0.5, 0.0 },
-- 						{ 1.0, 0.5 },
-- 					},
-- 				},
--
-- 				bezOut = {
-- 					type = "bezier",
-- 					points = {
-- 						{ 0.0, 0.5 },
-- 						{ 0.5, 1.0 },
-- 					},
-- 				},
-- 			},
--
-- 			flash = {
-- 				flash_opacity = 0.7,
--
-- 				in_bezier = "bezIn",
-- 				in_speed = 0.5,
--
-- 				out_bezier = "bezOut",
-- 				out_speed = 3,
-- 			},
--
-- 			shrink = {
-- 				shrink_percentage = 0.9,
--
-- 				in_bezier = "bezIn",
-- 				in_speed = 1,
--
-- 				out_bezier = "bezOut",
-- 				out_speed = 1,
-- 			},
-- 		},
-- 	},
-- })

-- hl.window_rule(
--
-- match = { class = "org.telegram.desktop" },
--
-- workspace = "9 silent"
--
-- )

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

-- windowrule=opacity 0.95,workspace:[0-9]

-- windowrulev2=workspace 9 silent,class:org.telegram.desktop

-- windowrulev2=workspace 8 silent,class:discord

-- windowrule=workspace 6 silent,class:Docker Desktop

-- windowrule=workspace 10 silent,Spotify

-- windowrule=workspace 7 silent,class:obsidian

-- windowrule=workspace 6 silent,notion-app-enhanced

-- #windowrule=opacity 0.9,obsidian

-- #windowrule=opacity 0.9,firefox

-- windowrule=opacity 0.9,zen

-- windowrule=opacity 0.1,launcher

-- windowrulev2=float,class:Tk

-- windowrulev2=float,class:Toplevel

-- layerrule = blur,launcher

hl.on("hyprland.start", function()
	hl.exec_cmd("discord")
end)

hl.on("hyprland.start", function()
	hl.exec_cmd("telegram-desktop")
end)

hl.on("hyprland.start", function()
	hl.exec_cmd("Telegram")
end)

hl.on("hyprland.start", function()
	hl.exec_cmd("qBittorrent")
end)

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
end)
-- exec-once=obsidian
