set background=dark
set backspace=indent,eol,start
set cindent
set complete=".bu"
set completeopt=menu
set cursorline
set encoding=utf-8
set expandtab
set guifont=Hack
set hidden
set ignorecase
set laststatus=2
set nobackup
set nocompatible
set nofoldenable
set number
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=4 tabstop=4 softtabstop=4
set smarttab
set t_Co=256
set termencoding=utf-8
set wildignore+=*.so,*.swp,*.zip,*.o
set nohlsearch
set noincsearch
set fillchars+=vert:\ 
set clipboard+=unnamed
set listchars=tab:>-
set list

syntax on
filetype plugin indent on

colorscheme atom-dark-256

let mapleader=","

" Indent blocks.
vnoremap < <gv
vnoremap > >gv
vnoremap . :normal . <CR>

nnoremap j gj
nnoremap k gk

" Moving buffers.
nnoremap <silent> 9 :bp! <CR>
nnoremap <silent> 0 :bn! <CR>

" Moving screens
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

inoremap <expr> <TAB> pumvisible() ? "<Down>" : "<TAB>"
inoremap <expr> <C-j> pumvisible() ? "<Down>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "<Up>" : "<C-k>"
inoremap <expr> <CR> pumvisible() ? "<CR>" : "<CR>"

" Plugin stuff.
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/powerline-fonts'
Plug 'scrooloose/nerdcommenter'
Plug 'luochen1990/rainbow'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/quickfixsigns_vim'
Plug 'kshenoy/vim-signature'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1

" Fuzzy finder.
let g:ctrlp_working_path_mode = 'c'

" Pretty UI.
let g:airline_theme='lucius'
let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#whitespace#symbol = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Python debugging.
nnoremap <leader>pd oimport pdb; pdb.set_trace()<CR><ESC>

" Faster jumps.
map <C-J> 5j
map <C-K> 5k

" Tabs based on filetype.
autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab

" Persist undo.
call system('mkdir -p ' . '$HOME/.vim/undodir')
set undodir=~/.vim/undodir
set undofile

" Persist last cursor position.
call system('mkdir -p ' . '$HOME/.vim/view')
autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent! loadview

" Show trailing whitespace.
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" Disable marks for quickfixsigns.
let g:quickfixsigns#marks#buffer=[]
let g:rainbow_active = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:pymode_rope = 0
let g:ale_linters = { 'python': ['flake8'] }

" End plugin stuff.
call plug#end()
