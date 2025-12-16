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
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export CUDA_HOME=/usr/local/cuda

eval "$(zoxide init zsh)"

tolab() {
  emulate -L zsh
  local dest="jw@10.150.4.162:/home/jw/from_server/"

  # 전달된 인자(패턴 포함)를 '강제 글롭'해서 풀어주기
  local -a files
  for arg in "$@"; do
    files+=( ${~arg} )
  done

  if (( ${#files} == 0 )); then
    print -u2 -- "tolab: no files matched."
    return 1
  fi

  rsync -avz -e 'ssh -p 2222' "${files[@]}" "$dest"
}


[ -f ~/.zshrc.local ] && source ~/.zshrc.local

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
