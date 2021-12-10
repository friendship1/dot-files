sudo apt update

# install prerequisites
sudo apt-get install make git wget tar -y
sudo apt-get install gcc cmake -y
sudo apt-get install pkg-config libtool libtool-bin gettext -y
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y

cd install
# >>> Install neovim 0.6.0 >>>
# sudo apt install neovim -y
echo "###### installing neovim...######"
wget https://github.com/neovim/neovim/releases/download/v0.6.0/nvim.appimage
chmod +x nvim.appimage
sudo chown root:root nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim
mkdir -p ~/.config/nvim
# <<< Install neovim 0.6.0 <<<

# >>> Install tmux <<<
# sudo apt install tmux -y
echo "####### installing tmux...#######"
sudo apt-get install autoconf automake pkg-config libevent-dev libncurses5-dev -y
wget https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
tar -xvf tmux-3.2a.tar.gz
cd tmux-3.2a
./configure && make
sudo make install
cd ..
# <<< Install tmux <<<

# >>> Install zsh >>>
echo "####### installing zsh...#######"
sudo apt install zsh -y

sudo apt install xclip -y
sudo apt install stow -y
sudo apt install fonts-powerline -y

sudo rm -r ~/.oh-my-zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# <<< Install zsh <<<

if [ -d "~/.tmux/plugins/tpm" ]; then
  # Take action if $DIR exists. #
  echo "git clone tpm..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
cd ..

# For Vim plugin
sudo apt install clang -y
