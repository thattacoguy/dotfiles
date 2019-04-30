#!/usr/bin/env bash

## taco's laptop setup script (alpha)

# usage: update [source] [config]
function update () {
  if mkdir -p $1 ; then
    echo "\n + created directory $1, linking file from directory\n"
    ln -sfi $1 $2
  else
    echo "! couldn't create directory \"$1\", linking file from directory anyway\n"
    echo "~ don't worry, though, it'll ask you to overwrite anything\n\n"
    ln -sfi $1 $2
    echo "\n"
  fi
}

## terminal
# todo: install oh my zsh automatically

update termite/config ~/.config/termite/config
update .zshrc ~/.zshrc

## desktop environment
# window manager
update i3/config ~/.config/i3/config
update i3/lock.sh ~/.config/i3/lock.sh

# notifications
update dunst/dunstrc ~/.config/dunst/dunstrc

# navigation bar
update polybar/config ~/.config/polybar/config
update polybar/launch.sh ~/.config/polybar/launch.sh

## gtk3

update gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
update gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

# font configuration
update fontconfig/config ~/.config/fontconfig/fonts.conf
