set nocompatible
set nobackup
set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set number
set relativenumber
set cursorline
set showmatch
set ruler
set nofoldenable
set scrolloff=5
set completeopt-=preview
set laststatus=2 
set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf-8
set termencoding=utf-8
set backspace=indent,eol,start
set background=dark
set hidden

syntax on
filetype plugin indent on

vnoremap < <gv
vnoremap > >gv

colorscheme atom-dark-256 

" making the leap
let mapleader=","

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 
let g:ctrlp_working_path_mode = 'c'

let g:nerdtree_tabs_open_on_gui_startup=0 

let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#whitespace#symbol = ''
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

let g:pymode_options_colorcolumn = 0
let g:pymode_rope = 0

let g:syntastic_javascript_checkers = ['jsxhint']

let g:jsx_ext_required = 0

nnoremap <C-V> :vsplit
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap 9 :bp!<cr>
nnoremap 0 :bn!<cr>
nnoremap <Leader>b :MBEToggle<cr>
map <Leader>t :NERDTreeToggle<cr>
map <C-J> 5j
map <C-K> 5k

au FileType markdown setl sw=2 sts=2 ts=2 et
au FileType javascript setl sw=2 ts=2 sts=2 et
au FileType scss setl sw=2 sts=2 ts=2 et
au FileType html setl sw=2 sts=2 ts=2 et

let g:javascript_enable_domhtmlcss = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call pathogen#infect()
call pathogen#helptags()
