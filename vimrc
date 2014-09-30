set nocompatible
set nobackup

filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

vnoremap < <gv
vnoremap > >gv

set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set transparency=15

set number
set cursorline
set showmatch
set ruler
set nofoldenable

set guifont=Source\ Code\ Pro:h14
set background=dark
colorscheme molokai
set guioptions=egmrt

set columns=999
set lines=999
:vsplit
map <C-L> <C-W>l
map <C-H> <C-W>h

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set fu
