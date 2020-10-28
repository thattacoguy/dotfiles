#!/usr/bin/env bash

## taco's laptop setup script (alpha)

# usage: update [folder] [file] [config]
function update () {
  printf "trying to create directory for '$3'"
  if mkdir -p $1 ; then
    printf "\n+ created/updated directory '$1', linking file from directory\n"
    printf "> enter 'y' to continue creating symbolic links, type 'n' to not:\n"
    ln -fi $(pwd)/$1/$2 $3
    printf "\n"
  else
    printf "\n! couldn't create directory '$1', check your file configuration"
  fi
}

## terminal
# todo: install programs automatically

update kitty config ~/.config/kitty/config
update . .zshrc ~/.zshrc

## desktop environment
# window manager
update wayland config ~/.config/i3/config
update wayland lock.sh ~/.config/i3/lock.sh

# notifications
update dunst dunstrc ~/.config/dunst/dunstrc

# navigation bar
update waybar config ~/.config/polybar/config
