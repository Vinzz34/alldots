set si
syntax on
set hidden
set noswapfile
set autoindent
set nowrap
set hls
set ts=4
set sw=4
set noshowmode

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

autocmd BufNewFile *.cpp 0r ~/github/cp-solutions/template.cpp 
map <C-a> <esc>ggVG<CR>
noremap <TAB> %
inoremap jj <ESC> 
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'tomasr/molokai'
Plug 'Mofiqul/dracula.nvim'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme dracula
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
