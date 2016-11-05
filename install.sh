clear

fun () {
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

echo "Installing your brand new vim!"
echo "Backing up old files..."

fun "$HOME/.vimrc" "f"
fun "$HOME/.vim" "d"

echo "Cloning the required files."

git clone https://github.com/bradyz/dot-files.git ~/.vim/ > /dev/null 2>&1
cd ~/.vim/

echo "Installing plugins...(Be patient!)"

git submodule init > /dev/null 2>&1
git submodule update > /dev/null 2>&1

echo "Done."
