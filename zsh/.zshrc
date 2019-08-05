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
export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_0.9.6/PythonAPI/carla/dist/carla-0.9.6-py3.5-linux-x86_64.egg
#export PYTHONPATH=$PYTHONPATH:$HOME/software/CARLA_0.9.6/PythonAPI/carla
export PYTHONPATH=$PYTHONPATH:$HOME/code/carla_project/
export PYTHONPATH=$PYTHONPATH:$HOME/code/carla_project/PythonAPI
export PYTHONPATH=$PYTHONPATH:$HOME/code/scenario_runner-0.9.6

export CARLA_ROOT=/home/bradyzhou/software/CARLA_0.9.6
export CARLA_SERVER=/home/bradyzhou/software/CARLA_0.9.6/CarlaUE4.sh
export ROOT_SCENARIO_RUNNER=/home/bradyzhou/code/scenario_runner-0.9.6

plugins=(git)
symbol="🐙  "

source $ZSH/oh-my-zsh.sh

alias gs="git status"
