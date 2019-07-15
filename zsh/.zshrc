export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oxide"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias gs="git status"
