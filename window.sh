#!/bin/bash

screen_width=$(xrandr | grep '*' | awk '{print $1}' | cut -d 'x' -f 1)
screen_height=$(xrandr | grep '*' | awk '{print $1}' | cut -d 'x' -f 2)

half_width=$((screen_width / 2))
half_height=$((screen_height / 2-20))

case $1 in
    1)
        # Cuadrante superior izquierdo
        berryc window_move 0 40
        berryc window_resize $half_width $half_height
        ;;
    2)
        # Cuadrante superior derecho
        berryc window_move $half_width 40
        berryc window_resize $half_width $half_height
        ;;
    3)
        # Cuadrante inferior izquierdo
        berryc window_move 0 $((half_height+40))
        berryc window_resize $half_width $half_height
        ;;
    4)
        # Cuadrante inferior derecho
        berryc window_move $half_width $((half_height+40))
        berryc window_resize $half_width $half_height
        ;;
esac
