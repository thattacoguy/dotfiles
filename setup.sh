#!/usr/bin/env bash

## taco's laptop setup script (alpha)

## terminal
# todo: install oh my zsh automatically

mkdir -p ~/.config/termite

ln -sfi termite/config ~/.config/termite/config
ln -sfi .zshrc ~/.zshrc


## desktop environment
# window manager

mkdir -p ~/.config/i3

ln -sfi i3/config ~/.config/i3/config
ln -sfi i3/lock.sh ~/.config/i3/lock.sh

# notifications

mkdir -p ~/.config/dunst

ln -sfi dunstrc ~/.config/dunst/dunstrc

# navigation bar

mkdir -p ~/.config/polybar

ln -sfi polybar/config ~/.config/polybar/config
ln -sfi polybar/launch.sh ~/.config/polybar/launch.sh

## gtk3

mkdir -p ~/.config/gtk-3.0

ln -sfi gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
ln -sfi gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

# font configuration
mkdir -p ~/.config/fontconfig

ln -sfi fontconfig/config ~/.config/fontconfig/fonts.conf

