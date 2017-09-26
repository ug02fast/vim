set encoding=utf-8
inoremap jk <ESC>
nnoremap <SPACE> <Nop>
let mapleader=" "
syntax on
filetype plugin indent on
set spell spelllang=en_us
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!
vnoremap . :norm.<CR>

set number
set expandtab
set tabstop=2
set shiftwidth=2
set splitright
set splitbelow

" TODO: Add eslint support somehow.

" Ale/eslint
let g:ale_linters = {
  'javascript': ['eslint'],
}
