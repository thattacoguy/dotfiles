#!/usr/bin/env bash

# requires scrot, i3lock, and imagemagick.
# todo: work on how to automate installation 
#       in the script later

tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
i3lock -i "$tmpbg"