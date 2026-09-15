local mainmod = "SUPER"

-- example binds, see https://wiki.hyprland.org/configuring/binds/ for more

hl.bind(mainmod .. " + return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainmod .. " + SHIFT + q", hl.dsp.window.close())
hl.bind(mainmod .. " + SHIFT + e", hl.dsp.exit())
hl.bind(mainmod .. " + e", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainmod .. " + v", hl.dsp.window.float({ action = "toggle" }))

-- hl.bind(mainmod .. " + d", hl.dsp.exec_cmd("wofi --show drun"))
--
hl.bind(mainmod .. " + d", hl.dsp.exec_cmd("tofi-drun --drun-launch=true --font /usr/share/fonts/ttf/sf-pro.ttf"))
-- hl.bind(
-- 	mainmod .. " + d",
-- 	hl.dsp.exec_cmd("tofi-drun --font /usr/share/fonts/ttf/sf-pro.ttf| xargs hyprctl dispatch exec --")
-- )

-- hl.bind(mainmod .. " + d", hl.dsp.exec_cmd("rofi -show drun"))

-- hl.bind(mainmod .. " + p", hl.dsp.window.pseudo()) -- dwindle
-- hl.bind(mainmod .. " + j", hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainmod .. " + f", hl.dsp.window.fullscreen({ mode = 1 }))

-- move focus with mainmod + hjkl keys

hl.bind(mainmod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainmod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainmod .. " + j", hl.dsp.focus({ direction = "up" }))
hl.bind(mainmod .. " + k", hl.dsp.focus({ direction = "down" }))

-- move window with mainmod + hjkl keys

-- hl.bind(mainmod .. " + SHIFT + h", hl.dsp.window.move({ direction = "left" }))
-- hl.bind(mainmod .. " + SHIFT + l", hl.dsp.window.move({ direction = "right" }))
-- hl.bind(mainmod .. " + SHIFT + j", hl.dsp.window.move({ direction = "up" }))
-- hl.bind(mainmod .. " + SHIFT + k", hl.dsp.window.move({ direction = "down" }))

-- move window left and right
hl.bind(mainmod .. " + SHIFT + l", hl.dsp.layout("swapcol r"))
hl.bind(mainmod .. " + SHIFT + h", hl.dsp.layout("swapcol l"))

-- window resize
hl.bind(mainmod .. "+ equal", hl.dsp.layout("colresize +conf"))

-- switch workspaces with mainmod + [0-9]

hl.bind(mainmod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainmod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainmod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainmod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainmod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainmod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainmod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainmod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainmod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainmod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- move active window to a workspace with mainmod + SHIFT + [0-9]

hl.bind(mainmod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1, silent = true }))
hl.bind(mainmod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2, silent = true }))
hl.bind(mainmod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3, silent = true }))
hl.bind(mainmod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4, silent = true }))
hl.bind(mainmod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5, silent = true }))
hl.bind(mainmod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6, silent = true }))
hl.bind(mainmod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7, silent = true }))
hl.bind(mainmod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8, silent = true }))
hl.bind(mainmod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9, silent = true }))
hl.bind(mainmod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10, silent = true }))

-- pin

hl.bind(mainmod .. " + SHIFT + p", hl.dsp.window.pin())

-- scroll through existing workspaces with mainmod + scroll

hl.bind(mainmod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainmod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- workspace back and forth

hl.bind(mainmod .. " + tab", hl.dsp.focus({ workspace = "previous" }))

-- hide active window

-- hl.bind(mainmod .. " + SHIFT + h", hl.dsp.exec_cmd("you script ./scripts/hide_unhide.sh h"))
--
-- -- show hide window
--
-- hl.bind(mainmod .. " + SHIFT + h", hl.dsp.exec_cmd("you script ./scripts/hide_unhide.sh s"))

-- move/resize windows with mainmod + lmb/rmb and dragging

hl.bind(mainmod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainmod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainmod .. " + ALT + f", hl.dsp.exec_cmd("firefox"))
hl.bind(mainmod .. " + ALT + z", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainmod .. " + ALT + b", hl.dsp.exec_cmd("brave"))
hl.bind(
	mainmod .. " + ALT + c",
	hl.dsp.exec_cmd(
		"chromium --incognito --disable-gpu-driver-bug-workarounds --enable-features=useozoneplatform --ozone-platform=wayland"
	)
)
hl.bind(mainmod .. " + ALT + t", hl.dsp.exec_cmd("telegram-desktop"))
hl.bind(mainmod .. " + ALT + s", hl.dsp.exec_cmd("ld_preload=/usr/local/lib/spotify-adblock.so spotify"))

-- token

hl.bind(
	mainmod .. " + ALT + SHIFT + t",
	hl.dsp.exec_cmd('cat /mnt/win1/myself/repo_key | wl-copy; notify-send "token copied"')
)
hl.bind(
	mainmod .. " + ALT + SHIFT + r",
	hl.dsp.exec_cmd("sed -n '2p' /mnt/win1/myself/emails/reddit.txt | wl-copy; notify-send \"username copied\"")
)
hl.bind(
	mainmod .. " + ALT + SHIFT + p",
	hl.dsp.exec_cmd("sed -n '3p' /mnt/win1/myself/emails/reddit.txt | wl-copy; notify-send \"password copied\"")
)

-- music

hl.bind(mainmod .. " + insert", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind(mainmod .. " + delete", hl.dsp.exec_cmd("playerctl stop"))
hl.bind(mainmod .. " + home", hl.dsp.exec_cmd("playerctl next"))
hl.bind(mainmod .. " + end", hl.dsp.exec_cmd("playerctl previous"))

-- sound

hl.bind(
	mainmod .. " + prior",
	hl.dsp.exec_cmd(
		"pulsemixer --change-volume +2 --max-volume 100 && pactl get-sink-volume @default_sink@ | head -n 1| awk '{print substr($5, 1, length($5)-1)}' > /tmp/wobpipe"
	)
)
hl.bind(
	mainmod .. " + next",
	hl.dsp.exec_cmd(
		"pulsemixer --change-volume -2 --max-volume 100 && pactl get-sink-volume @default_sink@ | head -n 1| awk '{print substr($5, 1, length($5)-1)}' > /tmp/wobpipe"
	)
)
hl.bind(mainmod .. " + SHIFT + m", hl.dsp.exec_cmd('pulsemixer --toggle-mute && notify-send "toggle mute"'))

-- speaker

hl.bind(mainmod .. " + pause", hl.dsp.exec_cmd("~/bin/audio_switcher.sh"))

-- screenshot

hl.bind(mainmod .. " + print", hl.dsp.exec_cmd('grimblast copysave output && notify-send "screenshot captured"'))
hl.bind(mainmod .. " + SHIFT + s", hl.dsp.exec_cmd('grimblast copysave area && notify-send "screenshot captured"'))

-- screen record

hl.bind(mainmod .. " + f9", hl.dsp.exec_cmd("screenrecord.sh"))

-- cliphist

hl.bind(mainmod .. " + SHIFT + c", hl.dsp.exec_cmd("cliphist list | dmenu | cliphist decode | wl-copy"))

-- pc

hl.bind("CTRL + ALT + SHIFT + p", hl.dsp.exec_cmd("poweroff"))
hl.bind("CTRL + ALT + SHIFT + r", hl.dsp.exec_cmd("reboot"))
hl.bind("CTRL + ALT + SHIFT + h", hl.dsp.exec_cmd("halt"))
hl.bind("CTRL + ALT + SHIFT + s", hl.dsp.exec_cmd("suspend"))

-- hyprland

hl.bind(mainmod .. " + f5", hl.dsp.exec_cmd('hyprctl reload;notify-send "reloaded"'))

-- hyprpicker

hl.bind(mainmod .. " + f12", hl.dsp.exec_cmd("hyprpicker -a|wl-copy"))

-- laptop

hl.bind("xf86audiolowervolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 -10%"))
hl.bind("xf86audioraisevolume", hl.dsp.exec_cmd("pactl -- set-sink-volume 0 +10%"))
hl.bind("xf86audiomute", hl.dsp.exec_cmd("pactl -- set-sink-mute 0 toggle"))
hl.bind("xf86audiomicmute", hl.dsp.exec_cmd("pactl -- set-source-mute 0 toggle"))
hl.bind("xf86monbrightnessdown", hl.dsp.exec_cmd("brightnessctl s 10%-"))
hl.bind("xf86monbrightnessup", hl.dsp.exec_cmd("brightnessctl s +10%"))

-- slay the spire

-- hl.bind("CTRL + ALT + s", hl.dsp.exec_cmd("sh downloads/slay.the.spire-jc141/start.n.sh"))

-- hyprshot

-- hl.bind(mainmod .. " + print", hl.dsp.exec_cmd("hyprshot -m output | wl-copy"))
-- hl.bind(mainmod .. " + SHIFT + print", hl.dsp.exec_cmd("hyprshot -m window | wl-copy"))

-- pyprland

hl.bind(mainmod .. " + n", hl.dsp.workspace.toggle_special("stash"))
hl.bind(mainmod .. " + SHIFT + n", hl.dsp.exec_cmd("pypr toggle_special stash"))
