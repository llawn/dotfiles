local progs = require("config.programs")
local mainMod = "SUPER"

hl.bind(mainMod .. " + T"        , hl.dsp.exec_cmd(progs.terminal))
hl.bind(mainMod .. " + BackSpace", hl.dsp.window.close())
hl.bind(mainMod .. " + Delete"   , hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"))
hl.bind(mainMod .. " + E"        , hl.dsp.exec_cmd(progs.fileManager))
hl.bind(mainMod .. " + SPACE"    , hl.dsp.exec_cmd(progs.menu))
hl.bind(mainMod .. " + B"        , hl.dsp.exec_cmd(progs.browser))
hl.bind(mainMod .. " + M"        , hl.dsp.exec_cmd(progs.mail))
hl.bind(mainMod .. " + X"        , hl.dsp.exec_cmd(progs.player))

hl.bind(mainMod .. " + P"        , hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J"        , hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F"        , hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + left"     , hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right"    , hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up"       , hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down"     , hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + S"        , hl.dsp.exec_cmd(progs.ipc .. " settings toggle"))
hl.bind(mainMod .. " + C"        , hl.dsp.exec_cmd(progs.ipc .. " controlCenter toggle"))
hl.bind(mainMod .. " + V"        , hl.dsp.exec_cmd(progs.ipc .. " plugin:clipper toggle"))

local azerty_keys = {
  [1]  = "ampersand",
  [2]  = "eacute",
  [3]  = "quotedbl",
  [4]  = "apostrophe",
  [5]  = "parenleft",
  [6]  = "egrave",
  [7]  = "minus",
  [8]  = "underscore",
  [9]  = "ccedilla",
  [10] = "agrave"
}

for i = 1, 10 do
  local key = azerty_keys[i]
  hl.bind(mainMod .. " + " .. key        , hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + W"         , hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S" , hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up"  , hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272" , hl.dsp.window.drag()  , { mouse = true })
hl.bind(mainMod .. " + mouse:273" , hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume" , hl.dsp.exec_cmd(progs.ipc .. " volume increase")               , { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume" , hl.dsp.exec_cmd(progs.ipc .. " volume decrease")               , { locked = true, repeating = true })
hl.bind("XF86AudioMute"        , hl.dsp.exec_cmd(progs.ipc .. " volume muteOutput")             , { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp"  , hl.dsp.exec_cmd(progs.ipc .. " brightness increase")           , { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(progs.ipc .. " brightness decrease")           , { locked = true, repeating = true })
hl.bind("XF86AudioMicMute"     , hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

hl.bind("XF86AudioNext"        , hl.dsp.exec_cmd("playerctl next")      , { locked = true })
hl.bind("XF86AudioPause"       , hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay"        , hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev"        , hl.dsp.exec_cmd("playerctl previous")  , { locked = true })
