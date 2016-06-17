clear

fun () {
  BACKUP=$1
  TYPE=$2
  if [ -$TYPE "$HOME/$BACKUP" ]; then
      COUNT=1
      BACKUP_NAME="$HOME/$BACKUP$COUNT.bak"

      while [ -f "$BACKUP_NAME" ]; do 
          let COUNT=COUNT+1
          BACKUP_NAME="$BACKUP_backup$COUNT"
      done

      mv $HOME/$BACKUP $BACKUP_NAME
      echo "$HOME/$BACKUP has been backed up to $BACKUP_NAME"
  fi
}

echo "Installing your brand new vim"

fun ".vimrc"
fun ".vim"

git clone https://github.com/bradyz/dot-files.git ~/.vim/
cd ~/.vim/

echo "Installing plugins"
git submodule init
git submodule update

cp ~/.vim/vimrc ~/.vimrc

echo "Done"
