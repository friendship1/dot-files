export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oxide"
# ZSH_THEME="avit"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="%Y/%m/%d %H:%M:%S"

HISTSIZE=1000000
SAVEHIST=1000000

# unset PYTHONPATH

export WANDB_DIR=$HOME
# export DISPLAY=:0

plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)
symbol="🐙  "

source $ZSH/oh-my-zsh.sh

# alias 
alias gs="git status"
alias vim=nvim
alias v=vim

# export GCM_CREDENTIAL_STORE=cache
export LANG=en_US.UTF-8

# export ZSH_TMUX_AUTOSTART=true

# This nosharehistory may be adjusted if you want
setopt nosharehistory
setopt INC_APPEND_HISTORY_TIME

autoload -U compinit && compinit -u

###

export PATH="/usr/local/cuda/bin:$PATH"

if [[ $(grep WSL2 /proc/version) ]]; then
  export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
  export LIBGL_ALWAYS_INDIRECT=1
fi

export PATH=$PATH:~/.local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64

eval "$(zoxide init zsh)"