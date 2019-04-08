let mapleader =" "

" Put plugins between begin and end calls
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'

call plug#end()

" Some Basics-----------------------

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Always utf-8
set encoding=utf-8

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Enable autocomplete
set wildmode=longest,list,full

" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" End Basics -----------------

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Splits open at the bottom and the right
set splitbelow splitright

" Shortcutting split navigation i3 style
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

map <leader>f :Goyo \| set linebreak<CR>

" Color scheme (terminal)
set t_Co=256
set background=dark
colorscheme gruvbox

