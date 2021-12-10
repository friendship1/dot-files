export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oxide"
# ZSH_THEME="avit"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

# unset PYTHONPATH

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.mujoco/mujoco200/bin
export WANDB_DIR=$HOME
export DISPLAY=:0

plugins=(git)
symbol="🐙  "

source $ZSH/oh-my-zsh.sh

alias gs="git status"

display_brightness() {
    xrandr --output DP-0 --brightness $1
    xrandr --output HDMI-0 --brightness $2
}

alias v=nvim
