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
set hlsearch
set incsearch
set showmatch
set smartcase
set ignorecase

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'} "Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers and Coc: A fast code completion engine.
Plug 'prettier/vim-prettier', { 'do': 'npm install' }   "just format the code
Plug 'airblade/vim-gitgutter' "help for show the changes in git branch in file
"Plug 'vim-airline/vim-airline' "very impressive extesion which is use for color of my below border when i changes my modes
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'f-person/git-blame.nvim'
Plug 'itchyny/vim-highlighturl'
Plug 'tomasiser/vim-code-dark'
Plug 'pangloss/vim-javascript'
Plug 'isobit/vim-caddyfile'
Plug 'dense-analysis/ale'
Plug 'rhysd/vim-lsp-ale'
Plug 'jiz4oh/vim-lspfuzzy'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'


" plugin section from builtin.com 
Plug 'dracula/vim'                     "Coc: A fast code completion engine
Plug 'ryanoasis/vim-devicons'   "Devicon support for nerdtree.
Plug 'SirVer/ultisnips'        "A Snippets engine.
Plug 'honza/vim-snippets'      "A collection of snippets
Plug 'scrooloose/nerdtree'     " file explorer for neovim. Netrw comes as default for neovim.
Plug 'preservim/nerdcommenter'  "An easy way for commenting outlines
Plug 'mhinz/vim-startify'   "A really handy start page with lots of customizations.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1


" My shortcuts
command E Explore
command T tabn

let mapleader=" "

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-]> :LspDefinition<CR>
nnoremap <C-space> :terminal<CR>
nnoremap j gj
nnoremap vv v$h
nnoremap Y <esc>v$y 
nnoremap <leader><leader> <esc>:nohlsearch<CR>

" Window
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" keep the copied text in the register while pasting
xnoremap <leader>p "_dP

" copy file path
nnoremap <leader>f :let @+=expand("%")<cr>

" fuzzy finder (junegunn/fzf.vim)
nnoremap <leader>o :Files<cr>
nnoremap <leader>g :GitFiles!<cr>
nnoremap <leader><tab> :Buffers!<cr>
nnoremap <leader>t :BTags!<cr>
nnoremap <leader>r :Rg!<cr>

" split virtically
nnoremap <leader>v :vsplit<Space>

colorscheme codedark

" ale (dense-analysis/ale)
let g:ale_virtualtext_cursor = 0
let g:ale_detail_to_floating_preview = 1
let g:ale_floating_window_border = [' ', ' ', ' ', ' ', ' ', ' ']
let g:ale_fixers =
      \ {'javascript': ['eslint', 'prettier']
      \ , 'typescript': ['eslint', 'prettier']
      \ , 'go': ['gofumpt', 'goimports']
      \ , 'html': ['eslint', 'prettier']
      \ , 'vue': ['eslint', 'prettier']
      \ , 'python': ['black']}

" lsp-settings
let g:lsp_settings_filetype_vue = ['typescript-language-server', 'volar-server']

" MarkdownPreview
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
