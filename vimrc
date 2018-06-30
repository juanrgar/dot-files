set nocompatible

filetype plugin indent on

set encoding=utf-8

set autoread

set wildmenu
" set wildmode=list:longest

set ruler
set cursorline
set number
set rnu

set hidden

syntax enable

set t_Co=256

set background=dark
" colorscheme solarized

set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=120
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set hlsearch
set showmatch

set smarttab

set ls=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
