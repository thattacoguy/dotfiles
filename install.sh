#!/usr/bin/env bash

echo "Currently broken. Don't try to use it."

# directories=(i3 i3/scripts gtk-3.0 polybar termite vis)

# config_files=(i3/scripts/lock.sh i3/config polybar/config polybar/launch.sh termite/config vis/config dunstrc gtk-3.0/gtk.css)

# function dirnotif {
#   echo "Directory for $1 doesn't exist, creating it."
# }

# function linknotif {
#   echo "Linking $1."
# }

# for i in ${directories[@]}; do
#   if [ ! -d ~/.config/$i/ ]; then
#     dirnotif $i
#     mkdir ~/.config/$i
#   fi
# done

# for i in ${config_files[@]}; do
#   if [ ! -f /home/$(whoami)/.config/$i ]; then
#     linknotif $i
#     ln -s $(pwd)/$i /home/$(whoami)/.config/$i
#   fi
# done
