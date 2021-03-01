set nu rnu
filetype plugin indent on
syntax on
set hidden
set backspace=indent,eol,start
set noswapfile
set autoindent
set smartindent
set nowrap

map <F9> :!g++ -g % -o %:r && ./%:r <CR>

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
call plug#end()

colorscheme gruvbox
set background=dark
