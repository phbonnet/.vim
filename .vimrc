" Starting with Vundle and Plugins
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
" Airline tag line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkitt/tabline.vim'
" NerdTREE
Plugin 'scrooloose/nerdtree'
" Fugitive / Git
Plugin 'tpope/vim-fugitive'
" C
Plugin 'vivien/vim-linux-coding-style'
Plugin 'majutsushi/tagbar'
" Latex
"Plugin 'lervag/vimtex'
" Keep all Plugin commands between vundle#begin/end.
call vundle#end()

" Non-Plugin stuff after this line

" Basics
let mapleader = ","
set backspace=indent,eol,start  " backsapce in insert mode
set encoding=utf-8              " standard encoding
let g:pymode_python = 'python3'

" syntax highlighting
syntax on			" syntax highlighting
syntax enable			" enabled
set t_Co=256			" with 256 colors
" colorscheme PaperColor
set background=dark
colorscheme PaperColor

set number			" show line numbers
set hidden			" enables hidden buffers
set autoread 			" reloads files edited outside vim
set history=100			" default is 8

set laststatus=2		" always show status line
set splitright			" vertical split opened on the right
set splitbelow			" horizontal split opened below

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
filetype plugin on

" Plugin specific Settings

" Ariline configuration
let g:airline_powerline_fonts = 1
set guifont=Menlo\ for\ Powerline
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['branch', 'tabline']

" vimtex configuration
"let g:vimtex_compiler_latexmk = {'callback' : 0}

" Key mappings
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>; <C-]>
nnoremap <leader>- :only<CR>
nnoremap <leader>+ :ClangFormat<CR>
vnoremap <leader>+ :ClangFormat<CR>
