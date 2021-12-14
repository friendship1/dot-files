# >>> Install zsh >>>
echo "####### installing zsh...#######"
sudo apt install zsh -y

sudo apt install xclip -y
sudo apt install stow -y
sudo apt install fonts-powerline -y

sudo rm -r ~/.oh-my-zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# <<< Install zsh <<<
ZSH_CUSTOM=~/.oh-my-zsh/custom
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
