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

colorscheme dracula 
set nofixendofline
autocmd FileType vue syntax sync fromstart
set number
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set splitright
set splitbelow

" Ale/eslint
let g:ale_linters = {  'javascript': ['eslint'],}
let g:ale_fixers = {  'javascript': ['eslint'],}
let g:ale_fix_on_save = 1


" NerdCommenter w\ Vue
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction
