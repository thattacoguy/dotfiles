############################
#           _
#          | |
#   _______| |__
#  |_  / __| '_ \
#   / /\__ \ | | |
#  /___|___/_| |_|
############################
# author: Daniel Gallegos
# license: MIT
# year: 2017
############################

# location where zsh is installed
export ZSH=/home/taco/.oh-my-zsh

# zsh theme
# find more themes here:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git web-search async)
# get that zshource
source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
export VISUAL="nano"
export TERMINAL=termite

# command aliases for arch
alias subl="subl3 $1"
alias define="sdcv $1"
alias system-update="yaourt -Syua"

# zsh reload configuration
alias zshreload="source ~/.zshrc"

# configuration shortcuts
alias dotconfig="atom ~/.dotfiles"

alias loginshell="$(which zsh) -l"

source "/home/taco/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

[[ -s "$HOME/.rvm/scripts/rvm" ]]
source $HOME/.rvm/scripts/rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
