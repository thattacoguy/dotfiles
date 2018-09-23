# ====================
#           _
#          | |
#   _______| |__
#  |_  / __| '_ \
#   / /\__ \ | | |
#  /___|___/_| |_|
# ====================
# author: @takouhai
# license: mit
# ====================

export ZSH=/home/taco/.oh-my-zsh

export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

ZSH_THEME="robbyrussell"

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

export PATH=~/.npm-global/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]]
source $HOME/.rvm/scripts/rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
