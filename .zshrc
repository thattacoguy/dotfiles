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

# pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# oh-my-zsh
## source oh-my-zsh script into zsh

# zsh settings
export UPDATE_ZSH_DAYS=7
COMPLETION_WAITING_DOTS="true"
export ZSH=$HOME/.oh-my-zsh
# plugins
plugins=(git web-search asdf)

# load zsh
source $ZSH/oh-my-zsh.sh

# terminal settings
export TERM=xterm-256color
export TERMINAL=alacritty
export VISUAL="nano"

# global vars
## enable wayland
export MOZ_ENABLE_WAYLAND=1

# aliases
## sys
### command aliases for arch
alias sys.update="yay -Syu"

### configuration shortcuts
alias dot.config="subl ~/.dotfiles"
alias dot.files="cd ~/.dotfiles"

## zsh
### zsh reload configuration
alias zsh.reload="source ~/.zshrc"
### run zsh as login shell
###   remember to `exit` afterwards!!!
alias zsh.login="$(which zsh) -l"
### upgrade oh-my-zsh
alias zsh.upgrade="omz update"

## git 
### runs an automatic git garbage collector
alias git.clean="git gc --auto"
### clean dead origin branches
alias git.prune="git remote prune origin"

## asdf
export ASDF_DIR
ASDF_DIR="$HOME/.asdf"
# shellcheck disable=SC2016
[ -d "$ASDF_DIR" ] || echo '$ASDF_DIR is not a directory'

# add to path
ASDF_BIN="${ASDF_DIR}/bin"
ASDF_USER_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"
[[ ":$PATH:" == *":${ASDF_BIN}:"* ]] && PATH="${PATH//$ASDF_BIN:/}"
[[ ":$PATH:" == *":${ASDF_USER_SHIMS}:"* ]] && PATH="${PATH//$ASDF_USER_SHIMS:/}"
# add to front of $PATH
PATH="${ASDF_BIN}:$PATH"
PATH="${ASDF_USER_SHIMS}:$PATH"

# shellcheck source=lib/asdf.sh
. "${ASDF_DIR}/lib/asdf.sh"

# bindings
_asdf() {
  local cur
  cur=${COMP_WORDS[COMP_CWORD]}
  local cmd
  cmd=${COMP_WORDS[1]}
  local prev
  prev=${COMP_WORDS[COMP_CWORD - 1]}
  local plugins
  plugins=$(asdf plugin-list 2>/dev/null | tr '\n' ' ')

  COMPREPLY=()

  case "$cmd" in
  plugin-update)
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$plugins --all" -- "$cur"))
    ;;
  plugin-remove | current | list | list-all)
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
    ;;
  plugin-add)
    local available_plugins
    available_plugins=$(asdf plugin-list-all 2>/dev/null | awk '{ if ($2 !~ /^\*/) print $1}')
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$available_plugins" -- "$cur"))
    ;;
  install)
    if [[ "$plugins" == *"$prev"* ]]; then
      local versions
      versions=$(asdf list-all "$prev" 2>/dev/null)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$versions" -- "$cur"))
    else
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
    fi
    ;;
  update)
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "--head" -- "$cur"))
    ;;
  uninstall | where | reshim | local | global | shell)
    if [[ "$plugins" == *"$prev"* ]]; then
      local versions
      versions=$(asdf list "$prev" 2>/dev/null)
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$versions" -- "$cur"))
    else
      # shellcheck disable=SC2207
      COMPREPLY=($(compgen -W "$plugins" -- "$cur"))
    fi
    ;;
  *)
    local cmds='current global help install list list-all local plugin-add plugin-list plugin-list-all plugin-remove plugin-update reshim shell uninstall update where which info'
    # shellcheck disable=SC2207
    COMPREPLY=($(compgen -W "$cmds" -- "$cur"))
    ;;
  esac

  return 0
}

complete -F _asdf asdf

export GOROOT="$(asdf where golang)/go"
export PATH=$PATH:$GOROOT/bin
export GOPATH="/home/taco/go"
export PATH=$PATH:$GOPATH/bin
export GOPATH=$GOPATH:/home/taco/code/sandbox/go

export PYTHONPATH="$(asdf where python)/site-packages"

alias go.reshim='asdf reshim golang && export GOROOT="$(asdf where golang)/go"'

## misc
# alias for the fuck, fixer for command line borks
# https://github.com/nvbn/thefuck
eval $(thefuck --alias)

eval "$(direnv hook zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/taco/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/taco/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/taco/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/taco/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

