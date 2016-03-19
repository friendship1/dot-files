clear

echo "Installing your brand new vim"

if [ -f ~/.vimrc ]; then
    COUNT=1
    VIMRC_BACKUP_NAME="$HOME/.vimrc_backup$COUNT"

    while [ -f "$VIMRC_BACKUP_NAME" ]; do 
        let COUNT=COUNT+1
        VIMRC_BACKUP_NAME="$HOME/.vimrc_backup$COUNT"
    done

    mv ~/.vimrc $VIMRC_BACKUP_NAME
    echo "Your old vimrc has been moved to $VIMRC_BACKUP_NAME"
fi

if [ -d ~/.vim ]; then
    COUNT=1
    VIM_DIR_BACKUP_NAME="$HOME/.vim_backup$COUNT"

    while [ -f "$VIM_DIR_BACKUP_NAME" ]; do 
        let COUNT=COUNT+1
        VIMRC_BACKUP_NAME="$HOME/.vim_backup$COUNT"
    done

    mv ~/.vim $VIM_DIR_BACKUP_NAME
    echo "Your old vimrc has been moved to $VIM_DIR_BACKUP_NAME"
fi

git clone https://github.com/bradyz/dot-files.git ~/.vim/
cd ~/.vim/

echo "Installing plugins"
git submodule init
git submodule update

cp ~/.vim/vimrc ~/.vimrc

echo "Done"
