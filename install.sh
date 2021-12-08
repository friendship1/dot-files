sudo apt update

# install prerequisites
sudo apt-get install gcc cmake -y
sudo apt-get install pkg-config libtool libtool-bin gettext -y
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y

# >>> Install neovim 0.6.0 >>>
# sudo apt install neovim -y
wget https://github.com/neovim/neovim/releases/download/v0.6.0/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
mkdir -p ~/.config/nvim

#git clone https://github.com/neovim/neovim neovim-src
#cd neovim-src
#git checkout stable
#make
#sudo make install
#cd ..

# <<< Install neovim 0.6.0 <<<

# >>> Install tmux <<<
# sudo apt install tmux -y
sudo apt-get install autoconf automake pkg-config libevent-dev libncurses5-dev -y
# git clone https://github.com/tmux/tmux.git tmux-src
# git checkout 3.2a
wget https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
tar -xvf tmux-3.2a.tar.gz
cd tmux-3.2a
./configure && make
sudo make install
cd ..
# <<< Install tmux <<<

sudo apt install zsh -y

sudo apt install xclip -y
sudo apt install stow -y
sudo apt install fonts-powerline

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
