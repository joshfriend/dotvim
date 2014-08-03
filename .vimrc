execute pathogen#infect()
let g:pathogen_disabled = ['vim-powerline']

syntax on
filetype plugin indent on
set encoding=utf-8
set showtabline=2
set laststatus=2

" Enable line numbers
set number

" Set Solarized colorscheme
set background=dark
colorscheme solarized
" Set gitgutter bg to editor bg
highlight SignColumn ctermbg=8

" Enable mouse stuff
set mouse=nicr

" Powerline font config
let g:airline_powerline_fonts = 1
set guifont=Meslo\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Auto open NERDTree
autocmd vimenter * NERDTree
" Autoclose NERDTree if the last buffer is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.py[cod]$']
let g:nerdtree_tabs_open_on_console_startup=1
