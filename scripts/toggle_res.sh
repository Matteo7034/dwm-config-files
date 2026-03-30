#!/bin/sh

OUTPUT="DP-2"

# Legge la risoluzione corrente
CURRENT=$(xrandr | grep -A1 "^$OUTPUT" | grep '*' | awk '{print $1}')

if [ "$CURRENT" = "2560x1440" ]; then
    xrandr --output "$OUTPUT" --mode 1920x1080 --rate 120
else
    xrandr --output "$OUTPUT" --mode 2560x1440 --rate 180
fi
