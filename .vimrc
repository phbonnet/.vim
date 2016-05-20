" Starting with Vundle and Plugins
set nocompatible		" use vim settings
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" Airline tag line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mkitt/tabline.vim'
" NerdTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Automatic bracket closing
Plugin 'Raimondi/delimitMate'
" C
Plugin 'myint/clang-complete'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic.git'
Plugin 'vivien/vim-linux-coding-style'
" Git plugins
Plugin 'tpope/vim-fugitive'
" Tagbar to show all tags linked to a file
Plugin 'majutsushi/tagbar'
" Latex
Plugin 'lervag/vimtex'
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

" UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""

" Supertab configuration
let g:SuperTabDefaultCompletionType='<C-X><C-U>'

" C Lang complete configuration
set completefunc=ClangComplete
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" clang_complete configuration
let g:clang_snippets = 1
let g:clang_snippets_engine='ultisnips'

" Key mappings
inoremap jk <esc>
nnoremap - :m+<CR>==
nnoremap _ :m-2<CR>==
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>; <C-]>
nnoremap <leader>- :only<CR>
