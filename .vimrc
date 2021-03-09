set nu rnu
filetype plugin indent on
syntax on
set hidden
set backspace=indent,eol,start
set noswapfile
set autoindent
set smartindent
set nowrap

map <F9> :w <bar> !g++ -g % -o %:r && ./%:r <CR>
autocmd BufNewFile *.cpp execute "0r ~/.vim/template.cpp"
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
call plug#end()

colorscheme gruvbox
set background=dark

