#!/bin/bash

screen_width=$(xrandr | grep '*' | awk '{print $1}' | cut -d 'x' -f 1)
screen_height=$(xrandr | grep '*' | awk '{print $1}' | cut -d 'x' -f 2)

half_width=$((screen_width / 2))
half_height=$((screen_height / 2-40))

case $1 in
    1)
        # Cuadrante superior izquierdo
        berryc window_move_absolute 0 40
        berryc window_resize_absolute $half_width $((half_height-20))
        ;;
    2)
        # Cuadrante superior derecho
        berryc window_move_absolute $half_width 40
        berryc window_resize_absolute $half_width $((half_height-20))
        ;;
    3)
        # Cuadrante inferior izquierdo
        berryc window_move_absolute 0 $((half_height+20))
        berryc window_resize_absolute $half_width $((half_height-20))
        ;;
    4)
        # Cuadrante inferior derecho
        berryc window_move_absolute $half_width $((half_height+20))
        berryc window_resize_absolute $half_width $((half_height-20))
        ;;
esac
