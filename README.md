## Installation Guide
copy the install.sh file and then run it in the terminal with

```
sh -c "$(wget https://raw.githubusercontent.com/bradyz/dot-files/master/install.sh -O -)"
```

your old vim will be backed up and put into ~/.vimrc_your_backup and ~/.vim_your_backup

## Summary
~/.vim is a folder that your vim reads to get all the extra plugin information and where the color configs live.

~/.vimrc is config file that you can customize shortcuts and such. I mess mine up all the time so I keep it basic.

My vimrc is short, so read it and ask me if you have any questions.

There are some shortcuts like \<C-j> or \<C-k> which move down or up 5 lines, you can see them in the vimrc.

## Plugins

**CtrlP.vim**: File finder for inside of vim. open it using ctrl+p and type a name of a file and it'll search the current working directory for the file.

**Syntastic**: Syntax checker - turns vim into an IDE. you can look up documentation on how to enable more languages.

**Airline**: Makes the bottom of vim look nicer, if you're seeing weird symbols you might bave to tweak the vimrc.

**MiniBufExplr**: Shows all the open buffers (files you've opened in this session) at the top of the screen. change buffers with :bn or :bp or 9 or 0 (i've mapped these numbers to bn and bp inside my vimvrc). 

**TComment**: turns multiple lines into comments. select a visual block with 

```
<S-v> gc
```

and it'll toggle the lines into comments depending on your language (\<S-v> is the key command for holding shift and v, then you let go and type gc).

**Others** - you can look inside the folder ~/.vim/bundle for all the other plugins and search them up and see if you like them.
