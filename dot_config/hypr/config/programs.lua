local ipc         = "qs -c noctalia-shell ipc call"
local terminal    = "kitty"
local fileManager = "nautilus"
local menu        = ipc .. " launcher toggle"
local browser     = "zen-browser"
local mail        = "evolution"
local player      = "spotify-launcher"

return {
  ipc         = ipc,
  terminal    = terminal,
  fileManager = fileManager,
  menu        = menu,
  browser     = browser,
  mail        = mail,
  player      = player,
}
