
#!/usr/bin/env bash

# generously adapted from 
# https://github.com/davatorium/rofi-themes/blob/master/install.sh


mkdir -vp ~/.config/alacritty
mkdir -vp ~/.config/sway
mkdir -vp ~/.config/waybar
mkdir -vp ~/.config/gtk-3.0
mkdir -vp ~/.config/mako

## link files using
# ln -si $(pwd)

ln -sfni ~/.dotfiles/.zshrc ~/.zshrc
ln -sfni ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sfni ~/.dotfiles/mako/config ~/.config/mako/config
ln -sfni ~/.dotfiles/sway/config ~/.config/sway/config
ln -sfni ~/.dotfiles/sway/env ~/.config/sway/env
