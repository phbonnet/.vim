" Starting with Vundle and Plugins
set nocompatible		" use vim settings
filetype off			"required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" CtrlP: fuzzy file/tag finder
Plugin 'kien/ctrlp.vim'
" Airline tag line
Plugin 'bling/vim-airline'
" NerdTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Ack and ag code search
Plugin 'mileszs/ack.vim'
" Automatic bracket closing
Plugin 'Raimondi/delimitMate'
" Comment plugin
Plugin 'scrooloose/nerdcommenter'
" snipMate plugins
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Git plugins
Plugin 'tpope/vim-fugitive'
" Tagbar to show all tags linked to a file
Bundle 'majutsushi/tagbar'
" Keep all Plugin commands between vundle#begin/end.
call vundle#end()

" Non-Plugin stuff after this line

" Basics
:let mapleader = ","
set backspace=indent,eol,start  " backsapce in insert mode
set encoding=utf-8              " standard encoding

" syntax highlighting
syntax on			" syntax highlighting
syntax enable			" enabled
set t_Co=256			" with 256 colors
" colorscheme PaperColor
" colorscheme atom-dark
set background=light
let g:solarized_termcolors=256
colorscheme solarized

set number			" show line numbers
set hidden			" enables hidden buffers
set autoread 			" reloads files edited outside vim
set history=100			" default is 8

set laststatus=2		" always show status line
set splitright			" vertical split opened on the right
set splitbelow			" horizontal split opened below

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Plugin specific Settings

" Ariline configuration
let g:airline_powerline_fonts = 1
set guifont=Menlo\ for\ Powerline
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Key mappings
inoremap jk <esc>
nnoremap - :m+<CR>==
nnoremap _ :m-2<CR>==
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>l :TagbarToggle<CR>
nnoremap <leader>; <C-]>
nnoremap <leader>. :CtrlPTag<cr>
