set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin on
filetype indent on

set autoread

set wildmenu
set wildmode=list:longest

set ruler
set cursorline
set number
set rnu

syntax enable

set t_Co=256

set background=dark
colorscheme solarized

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

map <C-n> :NERDTreeToggle<CR>

nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>
