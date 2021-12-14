#!/bin/bash
# For stow config
if ! [ -d old-dot-files ]; then
	mkdir old-dot-files
fi
date=`date +"%y%m%d"`
mv_old() {
	echo "moving old $1"
	if [ -f ~/$1 ] || [ -d ~/$1 ]
	then
		sudo rm -r old-dot-files/$1.$date
		mv ~/$1 old-dot-files/$1.$date
	fi
}

mv_old .zshrc
mv_old .tmux.conf
mv_old .vimrc
mv_old .vim
mkdir -p old-dot-files/.config
mv_old .config/nvim
mkdir -p ~/.config/nvim
# mv_old .oh-my-zsh
