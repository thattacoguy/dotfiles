#!/usr/bin/env bash

## taco's laptop setup script (alpha)

# usage: update [folder] [file] [config]
function update () {
  printf "trying to create directory for '~/$3'"
  if mkdir -p $1 ; then
    printf "\n+ created/updated directory '$1', linking file from directory\n"
  else
    printf "\n! couldn't create directory '$1', linking file from directory anyway\n~ don't worry, though, it'll prompt you to overwrite anything\n\n"
  fi
  printf "> enter 'y' to continue creating symbolic links, type 'n' to not:\n"
  ln -sfi $1$2 $3
  printf "\n"
}

## terminal
# todo: install programs automatically

update termite termite/config ~/.config/termite/config
update ~/ .zshrc ~/.zshrc

## desktop environment
# window manager
update i3 config ~/.config/i3/config
update i3 lock.sh ~/.config/i3/lock.sh

# notifications
update dunst dunstrc ~/.config/dunst/dunstrc

# navigation bar
update polybar config ~/.config/polybar/config
update polybar launch.sh ~/.config/polybar/launch.sh

## gtk3

update gtk-3.0 gtk.css ~/.config/gtk-3.0/gtk.css
update gtk-3.0 settings.ini ~/.config/gtk-3.0/settings.ini

# font configuration
update fontconfig config ~/.config/fontconfig/fonts.conf
