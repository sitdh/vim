syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=2

set expandtab
set relativenumber
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set nobackup
set ruler
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set number

nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]

set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'sjl/badwolf'

call vundle#end()

colorscheme badwolf

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set ai

filetype plugin indent on 

set path+=**
set wildmenu

command! MakeTags !ctags -R 
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" - - - - - - - - - - - - - - - - - - - - 
"   Functions
function! SortLines() range
    execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
    execute a:firstline . "," . a:lastline . 'sort n'
    execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction

" - - - - - - - - - - - - - - - - - - - - 
" Snippets
nnoremap \date :-1read !$HOME/.vim/snippets/date.sh<CR>
nnoremap \dt :-1read !$HOME/.vim/snippets/datetime.sh<CR>

" -- LaTeX:
nnoremap \myinfo :-1read $HOME/.vim/snippets/myinfo.snip<CR>
nnoremap \thaitex :-1read $HOME/.vim/snippets/thaitex.snip<CR>17jA
nnoremap \thbeamer :-1read $HOME/.vim/snippets/thbeamer.snip<CR>16jA
nnoremap \section :-1read !$HOME/.vim/snippets/section-refine.tex.snip<CR>
