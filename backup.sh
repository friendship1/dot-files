#!/bin/bash
# For stow config
if ! [ -d old-dot-files ]; then
	mkdir old-dot-files
fi
date=`date +"%y%m%d"`
mv_old() {
	echo "moving old $1"
	if [ -f ~/$1 ]; then
		mv ~/$1 old-dot-files/$1.$date
	fi
}

mv_old .zshrc
mv_old .tmux.conf
mv_old .vimrc
mv_old .vim
mv_old .config/nvim
