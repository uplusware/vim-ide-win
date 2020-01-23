colorscheme darkblue
set nocompatible
set incsearch
set guioptions+=b
set showtabline=2
set tabstop=4    
set softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent
set cindent
set noswapfile
set nobackup
set nowritebackup
syntax enable
syntax on
set number
"set cursorcolumn
set cursorline
"highlight CursorLine
"highlight CursorColumn guibg=blue guifg=NONE
set hlsearch
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close=1
set nocp
filetype plugin on   
set completeopt=menu
set nowrap
set tags+=tags
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <C-F3> :cnew<CR>
nmap <C-S-F3> :col<CR>
nmap <F3> :cnext<CR>
nmap <S-F3> :cprev<CR>
nmap <C-\>n :tabnew %<CR>
nmap <C-\>o :!"/cygdrive/c/Program Files (x86)/Notepad++/notepad++.exe" -n<C-R>=line(".")<CR> -c<C-R>=col(".")<CR> "$(cygpath -w "%")"&<CR><CR>
let g:tagbar_left = 1
let g:NERDTreeWinPos = 'right'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = 'find %s -type f'

if executable("ag")
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

if has("cscope")
    set cscopetag
    set csto=0
    set cscopeverbose 

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>w :cs find e <C-R>=expand("[^a-zA-Z0-9_]<cword>[^a-zA-Z0-9_]")<CR><CR> 

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>   
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>   
    nmap <C-@>w :scs find e <C-R>=expand("[^a-zA-Z0-9_]<cword>[^a-zA-Z0-9_]")<CR><CR> 

	nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
	nmap <C-@><C-Q>w :vert scs find e [^a-zA-Z0-9_]<C-R>=expand("<cword>")[^a-zA-Z0-9_]<CR><CR> 

endif
