hl.config({
	animations = {
		enabled = true,

		-- Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more
	},
})

-- hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "niriSmooth", style = "slide" })
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "niriSmooth", style = "slide" })

hl.curve("quart", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })
hl.curve("niriSmooth", { type = "bezier", points = { { 0.25, 1 }, { 0.5, 1 } } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "quart", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "quart", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "quart", style = "slide" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadePopups", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeDpms", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "niriSmooth", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "niriSmooth", style = "slidevert" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "quart", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "niriSmooth", style = "slidevert" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadePopupsIn", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "fadePopupsOut", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 3, bezier = "quart" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 3, bezier = "quart" })
