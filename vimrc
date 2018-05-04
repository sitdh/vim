syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2

" Extra configuration for each project
set exrc
set secure

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

language en_US

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]

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

" - - - - - - - - - - - - - - - - - - - - 
"   Mapping
map <C-n> :NERDTreeToggle<CR>

" - - - - - - - - - - - - - - - - - - - - 
"   Configuration
command! MakeTags !ctags -R 
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:jsx_ext_required = 0  " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']  " Allow JSX in normal JS files
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" - - - - - - - - - - - - - - - - - - - - 
"   Functions
function! SortLines() range
    execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
    execute a:firstline . "," . a:lastline . 'sort n'
    execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif        

" - - - - - - - - - - - - - - - - - - - - 
" Colour Theme
set termguicolors 
let ayucolor="mirage"
colorscheme ayu

" - - - - - - - - - - - - - - - - - - - - 
" Snippets
nnoremap \date :-1read !$HOME/.vim/snippets/date.sh<CR>
nnoremap \dt :-1read !$HOME/.vim/snippets/datetime.sh<CR>
nnoremap \amp :-1read !$HOME/.vim/snippets/ampboilerp.snip<CR>

" -- LaTeX:
nnoremap \myinfo :-1read $HOME/.vim/snippets/myinfo.snip<CR>
nnoremap \thaitex :-1read $HOME/.vim/snippets/thaitex.snip<CR>17jA
nnoremap \thbeamer :-1read $HOME/.vim/snippets/thbeamer.snip<CR>16jA
nnoremap \section :-1read !$HOME/.vim/snippets/section-refine.tex.snip<CR>
