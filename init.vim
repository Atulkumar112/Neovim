"     _       _ __        _
"    (_)___  (_) /__   __(_)___ ___
"   / / __ \/ / __/ | / / / __ `__ \
"  / / / / / / /__| |/ / / / / / / /
" /_/_/ /_/_/\__(_)___/_/_/ /_/ /_/
"
" external
source ~/.config/nvim/keys.vim    " keybindings
"source ~/.config/nvim/utils.vim   " utility functions
source ~/.config/nvim/plugin.vim  " plugin configurations

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting

set lazyredraw
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set colorcolumn=82
set background=dark
set encoding=UTF-8

" searching
set clipboard=unnamed
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

" general
set hidden
set nobackup
set noswapfile
set nowritebackup

set scrolloff=10
set sidescroll=10

set textwidth=0
set wrapmargin=0
set wrap
set linebreak

set regexpengine=2

"auto save
let g:auto_save = 1
let g:auto_save_message = "Auto-saving..."

"Theme
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_undercurl = 0
let g:gruvbox_contrast_dark = 'hard'
highlight link FloatBorder NormalFloat

let NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1
