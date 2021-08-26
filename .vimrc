"   █ █ █ █▄ ▄█ █▀▄ ▄▀▀
" ▄ ▀▄▀ █ █ ▀ █ █▀▄ ▀▄▄

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'adelarsq/vim-matchit'
Plug 'yegappan/taglist'
Plug 'airblade/vim-gitgutter'
Plug 'mcchrish/nnn.vim'
Plug 'sheerun/vim-polygot'
Plug 'articicestudio/nord-vim'
call plug#end()

" Theme
colorscheme nord
let g:lighhtline = {
	 \ 'colorscheme': "nord",
	 \ }
if !has('gui_running')
	set t_Co=256
endif

set nocompatible
filetype on
syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent
set smarttab
set encoding=utf-8
set wildmode=longest,list,full

" Search options
set hlsearch
set incsearch
set autoread

set clipboard=unnamedplus
set confirm
set number relativenumber
set laststatus=2
set noshowmode
set nocompatible
set novisualbell
set noerrorbells
set title
set cursorline
set scrolloff=1
set splitbelow
set splitright

" Bindings
let mapleader = ","

map <space> /
map <Nul> ?
map <leader>tn : tabnew <cr>
map <leader>tc : tabclose <cr>
map <leader>tm : tabmove <cr>
map <leader>t : tabnext <cr>

" PEP8
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set autoindent
	\ set fileformat=unix
