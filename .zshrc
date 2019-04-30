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

## oh-my-zsh
# source oh-my-zsh script into zsh

# zsh settings
export UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"
ZSH_THEME="spaceship"
export ZSH=$HOME/.oh-my-zsh
# plugins
plugins=(git web-search)
#load zsh
source $ZSH/oh-my-zsh.sh

# terminal settings
export TERM=xterm-256color
export TERMINAL=termite
export VISUAL="nano"

### aliases
## sys
# command aliases for arch
alias sys.update="yay -Syu"

# configuration shortcuts
alias sys.config="subl3 ~/code/dofiles"

## zsh
# zsh reload configuration
alias zsh.reload="source ~/.zshrc"
# run zsh as login shell
#   remember to `exit` afterwards!!!
alias zsh.login="$(which zsh) -l"
# upgrade oh-my-zsh
alias zsh.upgrade="upgrade_oh_my_zsh"

## git 
# runs an automatic git garbage collector
alias git.garbageman="git gc --auto"
# clean dead origin branches
alias git.prune="git remote prune origin"

## shortcuts
alias open.dotfiles="cd ~/code/dotfiles"

