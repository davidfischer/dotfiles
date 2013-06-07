" Pathogen
call pathogen#infect()
call pathogen#helptags()

set nocompatible
set history=500
set dir=~/.vim/tmp
set ruler
set showtabline=2   " Always show tab bar
set laststatus=2    " Always show status bar
set number          " Line numbering
syntax on
filetype plugin indent on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd syntax * SpaceHi

" Line Numbering
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Searching
set ignorecase
set smartcase
set wildmode=longest,list

" Themes
try
  colorscheme elflord
catch
  colorscheme desert
endtry
