To install (make sure you backup your own ~/.vim and ~/.vimrc!):
cd ~
mkdir ~/.vim
git clone https://github.com/bradyz/dot-files.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
cp ~/.vim/vimrc ~/.vimrc

Brief description - 
~/.vim is a folder that your vim reads to get all the extra plugin information and where the color configs live.
~/.vimrc is config file that you can customize shortcuts and such. I mess mine up all the time so i keep it basic.
Then, clone my repo into ~/.vim and initialize all the submodules for plugins (extra stuff to make it look nice).
Then, copy the vimrc to ~/.vimrc to let vim know you want to use a different config (loads plugins and colors).

My vimrc is pretty basic, but it has some shortcuts like ctrl+j or ctrl+k is moving down or up 5 lines instead of just pecking at the j or k key 5 times.

Plugins - You can google all these to get a better description, but heres a brief overview anyways
CtrlP.vim - file finder for inside of vim. open it using ctrl+p and type a name of a file and it'll search the current working directory for the file.
Syntastic - syntax checker! turns vim into an IDE. you can look up documentation on how to enable more languages.
Airline - makes the bottom of vim look cool.
MiniBufExplr - shows all the open buffers (files you've opened in this session) at the top of the screen. change buffers with :bn or :bp or 9 or 0 (i've mapped these numbers to bn and bp inside my vimvrc). 
TComment - turns multiple lines into comments. select a visual block with shift+v j j gc and itll toggle the lines into comments depending on your language.
Others - you can look inside the folder ~/.vim/bundle for all the other plugins and search them up and see if you like them~
