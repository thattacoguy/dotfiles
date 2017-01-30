#!/usr/bin/env sh
# source: https://github.com/jaagr/polybar/wiki#launching-the-bar-in-your-wms-bootstrap-routine

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

polybar top
