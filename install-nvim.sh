sudo apt install clang -y
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
pip3 install pynvim
cd ..

