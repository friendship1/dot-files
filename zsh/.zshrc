export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oxide"
# ZSH_THEME="avit"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bradyzhou/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bradyzhou/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/bradyzhou/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/bradyzhou/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

unset PYTHONPATH

#export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_0.9.8/PythonAPI/carla
#export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_0.9.8/PythonAPI/carla/dist/carla-0.9.8-py3.5-linux-x86_64.egg
#export CARLA_ROOT=/home/bradyzhou/software/CARLA_0.9.8
#export CARLA_SERVER=/home/bradyzhou/software/CARLA_0.9.8/CarlaUE4.sh

#export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_latest/PythonAPI/carla
#export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_latest/PythonAPI/carla/dist/carla-0.9.8-py3.7-linux-x86_64.egg
#export CARLA_ROOT=/home/bradyzhou/software/CARLA_latest
#export CARLA_SERVER=/home/bradyzhou/software/CARLA_latest/CarlaUE4.sh

#export ROOT_SCENARIO_RUNNER=/home/bradyzhou/code/scenario_runner_fresh
#export LEADERBOARD_ROOT=/home/bradyzhou/code/leaderboard

export CARLA_ROOT=/home/bradyzhou/software/CARLA_0.9.8
export SCENARIO_RUNNER_ROOT=/home/bradyzhou/code/2020_CARLA_challenge/scenario_runner
export LEADERBOARD_ROOT=/home/bradyzhou/code/2020_CARLA_challenge/leaderboard

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
