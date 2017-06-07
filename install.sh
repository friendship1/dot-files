clear

backup () {
  BACKUP=$1
  TYPE=$2
  if [ -$TYPE "$BACKUP" ]; then
      COUNT=1
      BACKUP_NAME="$BACKUP$COUNT.bak"

      while [ -$TYPE "$BACKUP_NAME" ]; do
          let COUNT=COUNT+1
          BACKUP_NAME="$BACKUP$COUNT.bak"
      done

      mv $BACKUP $BACKUP_NAME
      echo "$BACKUP has been backed up to $BACKUP_NAME"
  fi
}

echo "Installing your brand new vim."
echo "Backing up old files..."

backup "$HOME/.vimrc" "f"
backup "$HOME/.vim" "d"

echo "Cloning the required files."

git clone https://github.com/bradyz/dot-files.git ~/.vim/ > /dev/null 2>&1
cd ~/.vim/

echo "Installing plugins..."

git submodule init > /dev/null 2>&1
git submodule update > /dev/null 2>&1

echo "Linking ~/.vimrc to the new vimrc."
ln -s ~/.vim/vimrc ~/.vimrc

echo "Installing oh-my-zsh."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/.vim/.zshrc ~/.zshrc

echo "Done."
