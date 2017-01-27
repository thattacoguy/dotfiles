# location where zsh is installed
export ZSH=/home/taco/.oh-my-zsh

# zsh theme
# find more themes here:
# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-mod"
JAVA_HOME=/usr/lib/jvm/default

if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export UPDATE_ZSH_DAYS=7

COMPLETION_WAITING_DOTS="true"

# plugins
plugins=(git)
# get that zshource
source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color

# command aliases for arch
alias subl="subl3 $1"
alias define="sdcv $1"

# zsh reload configuration
alias zshreload="source ~/.zshrc"

# configuration shortcuts
alias dotfiles="atom ~/.dotfiles"

# directory shortcuts
alias code="cd /mnt/lechuga/code/"
alias devacademy="cd /mnt/lechuga/code/dev/academy/"
alias dev="cd /mnt/lechuga/code/dev/"
alias taco="cd /mnt/lechuga/code/taco/guy/"
alias tacowolf="cd /mnt/lechuga/code/taco/wolf/"
alias itsae="cd /mnt/lechuga/code/itsae/"

# Exports to fix things with documentation
export PATH="$PATH:$HOME/.rvm/bin"  # Add RVM to PATH for scripting
export PATH=~/.npm-global/bin:$PATH # Add NPM global config for scripting
export PATH=$JAVA_HOME:$PATH # Add NPM global config for scripting
