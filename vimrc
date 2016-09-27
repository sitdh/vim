syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab
set number
set showcmd
set cursorline
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

nnoremap <leader><space> :nohlsearch<CR>

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent

nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]

" call pathogen#infect()
" call pathogen#runtime_append_all_bundles()

set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'kien/ctrlp.vim'
Plugin 'JulesWang/css.vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'emmetio/emmet'
Plugin 'mattn/emmet-vim'
Plugin 'powerline/powerline'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'lervag/vimtex'
Plugin 'sjl/badwolf'
Plugin 'mfukar/robotframework-vim'

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
