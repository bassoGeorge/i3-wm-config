#!/bin/sh
xrandr --addmode DP1 "1600x900"
xrandr --output HDMI2 --off --output HDMI1 --mode 1920x1080 --pos 1600x0 --rotate normal --output DP1 --mode 1600x900 --pos 0x0 --rotate normal --output eDP1 --primary --mode 1366x768 --pos 3520x0 --rotate normal --output VIRTUAL1 --off
