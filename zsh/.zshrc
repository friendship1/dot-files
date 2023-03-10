export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oxide"
# ZSH_THEME="avit"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="%Y/%m/%d %H:%M:%S"

# unset PYTHONPATH

export WANDB_DIR=$HOME
# export DISPLAY=:0

plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)
symbol="🐙  "

source $ZSH/oh-my-zsh.sh

alias gs="git status"

display_brightness() {
    xrandr --output DP-0 --brightness $1
    xrandr --output HDMI-0 --brightness $2
}

alias vim=nvim
alias v=vim

# export GCM_CREDENTIAL_STORE=cache
export LANG=en_US.UTF-8

# export ZSH_TMUX_AUTOSTART=true

setopt nosharehistory
setopt INC_APPEND_HISTORY_TIME

[[ -s /home/jwo/.autojump/etc/profile.d/autojump.sh ]] && source /home/jwo/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

. /usr/share/autojump/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jw/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jw/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jw/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jw/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
export PATH="/usr/local/cuda/bin:$PATH"
export PATH="/usr/local/MATLAB/R2022a/bin:$PATH"

if [[ $(grep WSL2 /proc/version) ]]; then
  export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
  export LIBGL_ALWAYS_INDIRECT=1
fi

export PATH=$PATH:~/.local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
