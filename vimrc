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

set number
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

map <Leader>b :MBEToggle<cr>
nnoremap - :bp<cr>
nnoremap = :bn<cr>
map <Leader>t :NERDTreeToggle<cr>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:nerdtree_tabs_open_on_gui_startup=0

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

