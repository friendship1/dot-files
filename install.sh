clear
echo "Installing your brand new vim"

if [ -f ~/.vimrc ]; then
    echo "Your old vimrc has been moved to ~/.vimrc_your_backup"
    mv ~/.vimrc ~/.vimrc_your_backup
fi

if [ -d ~/.vim ]; then
    echo "Your old vim directory has been moved to ~/.vim_your_backup/"
    mv ~/.vim/ ~/.vim_your_backup/
fi

git clone https://github.com/bradyz/dot-files.git ~/.vim/
cd ~/.vim/

echo "Installing plugins"
git submodule init
git submodule update

cp ~/.vim/vimrc ~/.vimrc

echo "Done"
