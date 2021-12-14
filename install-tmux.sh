cd install
# >>> Install tmux <<<
# sudo apt install tmux -y
echo "####### installing tmux...#######"
sudo apt-get install autoconf automake pkg-config libevent-dev libncurses5-dev -y
wget https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
tar -xvf tmux-3.2a.tar.gz
cd tmux-3.2a
./configure && make
sudo make install
# <<< Install tmux <<<
cd ..

if [ -d "~/.tmux/plugins/tpm" ]; then
  # Take action if $DIR exists. #
  echo "git clone tpm..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

