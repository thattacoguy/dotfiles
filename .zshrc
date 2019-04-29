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

# terminal settings

export TERM=xterm-256color
export TERMINAL=termite
export VISUAL="nano"
export ZSH=/home/taco/.oh-my-zsh


## oh-my-zsh
# source oh-my-zsh script into zsh
source $ZSH/oh-my-zsh.sh
# zsh settings
export UPDATE_ZSH_DAYS=7
export ZSH_THEME="spaceship"
export COMPLETION_WAITING_DOTS="true"
# plugins
plugins=(git web-search)

### aliases
## sys
# command aliases for arch
alias sys.update="yay -Sya"

# configuration shortcuts
alias sys.config="subl3 ~/.dotfiles"

## zsh
# zsh reload configuration
alias zsh.reload="source ~/.zshrc"
# run zsh as login shell
#   remember to `exit` afterwards!!!
alias zsh.login="$(which zsh) -l"
# upgrade oh-my-zsh
alias zsh.upgrade="upgrade_oh_my_zsh"