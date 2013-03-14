set nocompatible
set history=500
set dir=~/.vim/tmp
syntax on
filetype plugin indent on

" Line Numbering
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Tabs and Indentation
" filetype plugin indent on
autocmd syntax * SpaceHi

" Searching
set ignorecase
set smartcase
set wildmode=longest,list

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" Themes
colorscheme elflord

""""""""
" Python
""""""""
" Python-mode
" Enable python folding
let g:pymode_folding = 0
let g:pymode_rope = 0

