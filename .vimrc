set nocompatible
set history=500
set dir=~/.vim/tmp	
syntax on

" Line Numbering
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Tabs and Indentation
" filetype plugin indent on
" Show tabs in the editor as >-----
:set list!
:set listchars=tab:>-

" Searching
set ignorecase
set smartcase
set wildmode=longest,list

" Themes
colorscheme elflord

