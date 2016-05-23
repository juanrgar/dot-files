set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin on
filetype indent on

set autoread

set wildmenu
set wildmode=list:longest

set background=light
colorscheme peachpuff

set ruler
set number
syntax on

set smartcase

set tabstop=4
set shiftwidth=4
set expandtab

set ls=2
set hlsearch
set showmatch

set smarttab
set smartindent
set autoindent

set cursorline

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
