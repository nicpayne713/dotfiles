local awful = require("awful")

awful.spawn.with_shell("picom -f --experimental-backend -d")
awful.spawn.with_shell("feh --bg-scale ~/dotfiles/backgrounds/dbz1.jpg")
awful.spawn.with_shell("sh ~/.config/polybar/polybar.sh")
awful.spawn.with_shell("flameshot")
