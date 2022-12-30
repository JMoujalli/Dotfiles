#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
polybar --config=/home/jacob/.config/polybar/config.ini mybar 2>&1 | tee -a /tmp/polybar1.log & disown

