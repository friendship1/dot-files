set background=dark
set backspace=indent,eol,start
set cindent
set complete=".bu"
set completeopt=menu
set cursorline
set encoding=utf-8
set expandtab
set guifont=Inconsolata\ for\ Powerline:h15
set hidden
set hlsearch
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

syntax on
filetype plugin indent on

colorscheme atom-dark-256

let mapleader=","

" Fuzzy finder.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'bin\|build\|CMakeFiles\|node_modules\|DS_Store\|git|\.o'
let g:ctrlp_working_path_mode = 'c'

" File explorer.
let g:nerdtree_tabs_open_on_gui_startup=0
map <Leader>t :NERDTreeToggle <CR>

" Pretty UI.
let g:airline_powerline_fonts = 1
let g:airline_theme='lucius'
let g:airline#extensions#whitespace#show_message = 0
let g:airline#extensions#whitespace#symbol = ''
let g:airline#extensions#tabline#enabled = 1

" Syntax checker.
let g:syntastic_python_checkers=['']
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Start menu.
let g:startify_custom_header = map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" Display marks.
let g:easytags_file = '~/.vim/tags'
let g:easytags_syntax_keyword = 'always'
let g:easytags_auto_highlight = 0

" Python mode column color
let g:pymode_options_colorcolumn = 0
let g:pymode_rope=0

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
nnoremap <silent> <leader>s :mksession <CR>
nnoremap <silent> <leader>r :source ~/.vimrc <CR>

" Hotkeys for paste mode.
nnoremap <leader>p :set paste <CR>
nnoremap <leader>np :set nopaste <CR>

" Hotkeys for changing tabs.
nnoremap <leader>s2 :setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab <CR>
nnoremap <leader>s4 :setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab <CR>

" who put this here
imap jj <ESC>

" Faster jumps.
map <C-J> 5j
map <C-K> 5k

" Tabs based on filetype.
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

" Persist undo.
call system('mkdir -p ' . '$HOME/.vim/undodir')
set undodir=~/.vim/undodir
set undofile

" Persist last cursor position.
call system('mkdir -p ' . '$HOME/.vim/view')
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

" Show trailing whitespace.
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" Plugin stuff.
call pathogen#infect()
call pathogen#helptags()
