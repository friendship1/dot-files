set nocompatible
set nobackup

map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :CommandT<CR>

filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

vnoremap < <gv
vnoremap > >gv

:vsplit
set lines=50 columns=90

set autoindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

set number
set cursorline
set showmatch
set ruler
set nofoldenable

set guifont=Source\ Code\ Pro:h14
set background=dark
colorscheme molokai
set guioptions=egmrt

let g:CommandTMaxHeight=20
let g:CommandTMatchWindowReverse=1
