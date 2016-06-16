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
set nowrap
set sw=4 ts=4 sts=4
set sw=2 ts=2 sts=2
set ic
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
vnoremap . :norm.<CR>

nnoremap j gj
nnoremap k gk
nnoremap 9 :bp!<cr>
nnoremap 0 :bn!<cr>
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <leader>s :mksession<CR>

imap jj <ESC>

map <C-J> 5j
map <C-K> 5k
map <Leader>t :NERDTreeToggle<cr>

au FileType css setl sw=2 sts=2 ts=2 et
au FileType html setl sw=2 sts=2 ts=2 et
au FileType markdown setl sw=2 sts=2 ts=2 et
au FileType javascript setl sw=2 ts=2 sts=2 et

call pathogen#infect()
call pathogen#helptags()
