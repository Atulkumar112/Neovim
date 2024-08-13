" neovim config from builtin.com

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
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

set number
set clipboard=unnamed

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} "Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers and Coc: A fast code completion engine.
Plug 'prettier/vim-prettier', { 'do': 'npm install' }   "just format the code
Plug 'airblade/vim-gitgutter' "help for show the changes in git branch in file
" Plug 'vim-airline/vim-airline' "very impressive extesion which is use for color of my below border when i changes my modes
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Plug 'DaikyXendo/nvim-material-icon'
Plug 'f-person/git-blame.nvim'
Plug 'sainnhe/vim-color-forest-night'
"Plug 'kyazdani42/nvim-web-devicons'
 

" plugin section from builtin.com 
Plug 'dracula/vim'                     "Coc: A fast code completion engine
Plug 'ryanoasis/vim-devicons'   "Devicon support for nerdtree.
Plug 'SirVer/ultisnips'        "A Snippets engine.
Plug 'honza/vim-snippets'      "A collection of snippets
Plug 'scrooloose/nerdtree'     " file explorer for neovim. Netrw comes as default for neovim.
Plug 'preservim/nerdcommenter'  "An easy way for commenting outlines
Plug 'mhinz/vim-startify'   "A really handy start page with lots of customizations.
call plug#end()

"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1


" My shortcuts
command E Explore
command T tabn

" Functions for my shortcuts cmd who takes args
" function! MyTabN(n)
" execute "tabn " . a:n
" endfunction

" command -nargs=1 TN call MyTabN(args)

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-]> :LspDefinition<CR>

" Important!!
if has('termguicolors')
        set termguicolors
endif

" For dark version.
set background=dark

" For light version.
"        set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'

" For better performance
let g:everforest_better_performance = 1

colorscheme everforest
