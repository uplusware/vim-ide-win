set showtabline=2
set nocompatible
set tabstop=4
syntax on
set number
set hlsearch
colorscheme darkblue
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close=1
set nocp
filetype plugin on   
set completeopt=menu
set nowrap
set tags+=tags
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 1
