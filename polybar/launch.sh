#!/usr/bin/env sh

# kills polybar, then waits for the process to shut down, then starts polybar
# source: https://github.com/jaagr/polybar/wiki#launching-the-bar-in-your-wms-bootstrap-routine

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done
polybar top