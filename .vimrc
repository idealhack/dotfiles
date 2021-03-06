set nocompatible
filetype off

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'rstacruz/sparkup'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'TimothyYe/vim-tips'
Bundle 'Lokaltog/powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'plasticboy/vim-markdown'
Bundle 'altercation/vim-colors-solarized'

" common
set encoding=utf-8
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set number
set hidden
set nowrap
set wildmenu
set hlsearch
set autochdir
set equalalways
set ruler
set showcmd
set incsearch
set textwidth=79
set colorcolumn=80
set linespace=2
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set matchpairs=(:),{:},[:],<:>
set whichwrap=b,s,<,>,[,]
set list!
set listchars=tab:->,trail:·
set shell=/bin/bash
let mapleader=","
let g:mapleader=","
let g:javascript_enable_domhtmlcss=1
let g:cssColorVimDoNotMessMyUpdatetime=1

" color
colorscheme solarized
let g:solarized_termcolors=256
set background=dark

" macvim
if has("gui_running")
  set mouse=a
  set lines=30
  set columns=120
  set numberwidth=3
  set guifont=Monaco:h16
endif

filetype plugin indent on
syntax on
