#!/bin/bash
#
#~/.xinitrc

setxkbmap es
sxhkd -c $HOME/.config/berry/sxhkdrc &
xwallpaper -c $HOME/launch/wallpapers/cruz_borgona.png &
picom --config $HOME/.config/picom.conf &
polybar -c $HOME/.config/berry/polybar_config mainbar-berry &
exec berry
