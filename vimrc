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

set relativenumber
set cursorline
set showmatch
set ruler
set nofoldenable

set guifont=Source\ Code\ Pro:h14
set background=dark
colorscheme molokai
set guioptions=egmrt

map <C-V> :vsplit
map <C-L> <C-W>l
map <C-H> <C-W>h
map <C-J> 5j
map <C-K> 5k

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set fu
