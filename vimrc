set nocompatible
set nobackup
set cindent
set expandtab
set smarttab
set number
set relativenumber
set cursorline
set ruler
set nofoldenable
set scrolloff=5
set complete=".bu"
set completeopt=menu
set laststatus=2 
set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf-8
set termencoding=utf-8
set backspace=indent,eol,start
set background=dark
set hidden
set t_Co=256
set shiftwidth=4 tabstop=4 softtabstop=4
set ignorecase
set wildignore+=*.so,*.swp,*.zip,*.o

syntax on
filetype plugin indent on

colorscheme atom-dark-256 

let mapleader=","

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 
let g:ctrlp_custom_ignore = 'bin\|build\|CMakeFiles\|node_modules\|DS_Store\|git|\.o'
let g:ctrlp_working_path_mode = 'c'

let g:nerdtree_tabs_open_on_gui_startup=0 

let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'
let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#whitespace#symbol = ''
let g:airline#extensions#tabline#enabled = 1 

let g:syntastic_python_checkers=['']
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_cpp_compiler_options = ' -std=c++11'

let g:pymode_options_colorcolumn = 0
let g:pymode_rope_lookup_project = 0

let g:startify_custom_header = map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

let g:easytags_file = '~/.vim/tags'
let g:easytags_syntax_keyword = 'always'
let g:easytags_auto_highlight = 0

vnoremap < <gv
vnoremap > >gv
vnoremap . :normal . <CR>

nnoremap j gj
nnoremap k gk
nnoremap <silent> 9 :bp! <CR>
nnoremap <silent> 0 :bn! <CR>
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <silent> <leader>s :mksession <CR>
nnoremap <silent> <leader>r :source ~/.vimrc <CR>
nnoremap <leader>p :set paste <CR>
nnoremap <leader>np :set nopaste <CR>

" who put this here
imap jj <ESC>

map <C-J> 5j
map <C-K> 5k
map <Leader>t :NERDTreeToggle <CR>

autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

" persist undo 
let undodir = '$HOME/.vim/undodir'
call system('mkdir -p ' . undodir)
set undofile

" persist last cursor position
call system('mkdir -p ' . '$HOME/.vim/view')
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

call pathogen#infect()
call pathogen#helptags()
