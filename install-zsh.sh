# >>> Install zsh >>>
echo "####### installing zsh...#######"

############################
# sudo 가능 여부 체크
############################
if command -v sudo >/dev/null 2>&1 && sudo -n true 2>/dev/null; then
    SUDO="sudo"
else
    SUDO=""
    echo "[INFO] sudo not available → system package install skipped"
fi

############################
# 시스템 패키지 (sudo 있을 때만 실행)
############################
if [ -n "$SUDO" ] && command -v apt >/dev/null 2>&1; then
    $SUDO apt update
    $SUDO apt install -y zsh fonts-powerline
    # $SUDO apt install -y xclip
else
    echo "[SKIP] apt install"
fi

rm -rf ~/.oh-my-zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# <<< Install zsh <<<
ZSH_CUSTOM=~/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
# git clone https://github.com/wting/autojump $ZSH_CUSTOM/plugins/autojump

# $ZSH_CUSTOM/plugins/autojump/install.py
# sudo apt install autojump
