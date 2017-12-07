set nocompatible

filetype plugin on
filetype indent on

set autoread

set wildmenu

set ruler
set cursorline
set number
set rnu

syntax enable

set t_Co=256

set background=dark
"colorscheme solarized

set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch
set showmatch

set smarttab

set ls=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
