runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
set encoding=utf-8

" Enable line numbers
set number

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set incsearch

set laststatus=2
set ruler
set showcmd
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

if &shell =~# 'fish$'
  set shell=/bin/bash
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Set Solarized colorscheme
set background=dark
colorscheme solarized
" Set gitgutter bg to editor bg
highlight SignColumn ctermbg=8

" Enable mouse stuff
set mouse=nicr

" Enable arrow keys to wrap lines
set whichwrap+=<,>,h,l,[,]

" Powerline font config
let g:airline_powerline_fonts = 1
set guifont=Meslo\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color

" Auto open NERDTree
autocmd vimenter * NERDTree
" Autoclose NERDTree if the last buffer is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.py[cod]$']
let g:nerdtree_tabs_open_on_console_startup=1

" vim:set ft=vim et sw=2:
