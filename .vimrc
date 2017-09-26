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

colorscheme gruvbox
set nofixendofline
set background=dark
set number
set expandtab
set tabstop=2
set shiftwidth=2
set splitright
set splitbelow

" TODO: Add eslint support somehow.

" Ale/eslint
" let g:ale_linters = {
"  'javascript': ['eslint'],
" }
" let g:ale_fixers = {
"  'javascript': ['eslint'],
" }
"  let g:ale_fix_on_save = 1
let g:ale_javascript_eslint_use_global=1
