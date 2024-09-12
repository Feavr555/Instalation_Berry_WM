#!/bin/bash
#
#~/.xinitrc

setxkbmap es
sxhkd -c $HOME/.config/berry/sxhkdrc &
xwallpaper --zoom $HOME/Instalation_Berry_WM/wallpapers/cruz_borgona.png &
picom --config $HOME/.config/picom.conf &
polybar &
#polybar -c $HOME/.config/berry/polybar_config mainbar-berry &
exec berry
