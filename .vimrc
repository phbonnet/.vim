" Starting with Vundle and Plugins
set nocompatible		" use vim settings
filetype off			"required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
" snipMate plugins
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Git plugins
Plugin 'tpope/vim-fugitive'
" Colorscheme plugin
" Plugin 'NLKNguyen/papercolor-theme'


" Keep all Plugin commands between vundle#begin/end.
call vundle#end()

" Non-Plugin stuff after this line
 
" Basics
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
