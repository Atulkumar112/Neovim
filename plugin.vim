"            __            _             _
"     ____  / /_  ______ _(_)___  _   __(_)___ ___
"    / __ \/ / / / / __ `/ / __ \| | / / / __ `__ \
"   / /_/ / / /_/ / /_/ / / / / /| |/ / / / / / / /
"  / .___/_/\__,_/\__, /_/_/ /_(_)___/_/_/ /_/ /_/
" /_/            /____/
"
"              PLUGIN CONFIGURATIONS
"               powered by vim-plug
call plug#begin('~/.config/nvim/plugged')
   Plug 'prettier/vim-prettier', { 'do': 'npm install' }   "just format the code
   Plug 'airblade/vim-gitgutter' "help for show the changes in git branch in file

   Plug 'mattn/emmet-vim'
   Plug 'prabirshrestha/vim-lsp'
   Plug 'mattn/vim-lsp-settings'
   Plug 'dense-analysis/ale'
   Plug 'rhysd/vim-lsp-ale'
   Plug 'jiz4oh/vim-lspfuzzy'
   Plug 'prabirshrestha/asyncomplete.vim'
   Plug 'prabirshrestha/asyncomplete-lsp.vim'

   Plug 'f-person/git-blame.nvim'
   Plug 'itchyny/vim-highlighturl'
   Plug 'pangloss/vim-javascript'
   Plug 'isobit/vim-caddyfile'


   Plug 'dracula/vim'                     "Coc: A fast code completion engine
   Plug 'ryanoasis/vim-devicons'   "Devicon support for nerdtree.
   Plug 'honza/vim-snippets'      "A collection of snippets
   Plug 'preservim/nerdtree' " file explorer for neovim. Netrw comes as default for neovim.
   Plug 'preservim/nerdcommenter'  "An easy way for commenting outlines
   Plug 'mhinz/vim-startify'   "A really handy start page with lots of customizations.
   Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
   Plug 'junegunn/fzf.vim'
   Plug 'jiangmiao/auto-pairs'
   Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
   Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
   Plug 'nvim-telescope/telescope.nvim', { 'do': ':UpdateRemotePlugin' }
   Plug 'nvim-lua/plenary.nvim' 
   Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
   Plug 'morhetz/gruvbox'  "for theme
   Plug 'Pocco81/auto-save.nvim'
   Plug 'itchyny/lightline.vim'
   Plug 'mengelbrecht/lightline-bufferline'
   Plug 'unblevable/quick-scope'
   Plug 'AndrewRadev/splitjoin.vim'
   Plug 'rmagatti/auto-session'
call plug#end()

"this is getting error fix this
"" statusline (itchyny/lightline.vim, mengelbrecht/lightline-bufferline)
"set showtabline=2
"let g:lightline = {
"\   'colorscheme': 'gruvbox',
"\   'active': {
"\       'left': [['mode', 'paste'],
"\                ['gitbranch', 'readonly', 'filepath', 'modified']],
"\   },
"\   'tabline': {
"\       'left': [['buffers']],
"\       'right': [['close']],
"\   },
"\   'component_expand': {
"\       'buffers': 'lightline#bufferline#buffers',
"\   },
"\   'component_type': {
"\       'buffers': 'tabsel'
"\   },
"\   'component_function': {
"\       'filepath': 'RelativeFilePath',
"\       'gitbranch': 'FugitiveHead',
"\   },
"\   'bufferline': {
"\       'show_number': 0,
"\       'shorten_path': 0,
"\       'filename_modifier': ':t',
"\   },
"\ }

" this for quick-scope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup qs_colors
 autocmd!
 autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
 autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

 "emmet (mattn/emmet-vim)
let g:user_emmet_leader_key=','

" vim-lsp
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_document_highlight_enabled = 0
let g:lsp_fold_enabled = 0
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif

    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> ca :FzfLspCodeAction!<cr>
    nmap <buffer> gt :FzfLspTypeDefinition!<cr>
    nmap <buffer> gi :FzfLspImplementation!<cr>
    nmap <buffer> gr :FzfLspReferences!<cr>
    nmap <buffer> gd :FzfLspDefinition!<cr>
    nmap <buffer> gs :FzfLspDocumentSymbol!<cr>

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:asyncomplete_auto_popup = 0

"function! s:check_back_space() abort
   ""let col = col('.') - 1
   ""return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
"inoremap <silent><expr> <TAB>
 ""\ pumvisible() ? "\<C-n>" :
 ""\ <SID>check_back_space() ? "\<TAB>" :
 ""\ asyncomplete#force_refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

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

" LSP configuration for Go
augroup LspGo
 au!
 autocmd User lsp_setup call lsp#register_server({
     \ 'name': 'gopls',
     \ 'cmd': {server_info->['gopls']},
     \ 'whitelist': ['go'],
     \ })
 autocmd FileType go setlocal omnifunc=lsp#complete
augroup END
let g:lsp_log_file = '/tmp/lsp.log'

" lsp-settings
let g:lsp_settings_filetype_vue = ['typescript-language-server', 'volar-server']

" auto-session
lua require('auto-session').setup {}

