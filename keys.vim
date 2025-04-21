"     __                         _
"    / /_____  __  ________   __(_)___ ___
"   / //_/ _ \/ / / / ___/ | / / / __ `__ \
"  / ,< /  __/ /_/ (__  )| |/ / / / / / / /
" /_/|_|\___/\__, /____(_)___/_/_/ /_/ /_/
"           /____/
"
"           CUSTOM KEYBINDINGS
"
command E Explore
command T tabn

let mapleader=" "

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
nnoremap <leader>g :GitFiles<cr>
nnoremap <leader><tab> :Buffers<cr>
nnoremap <leader>t :BTags<cr>
nnoremap <leader>r :Rg!<cr>

" split virtically
nnoremap <leader>v :vsplit<Space>

" split horizontally
nnoremap <leader>h :split<Space>

"format code
nnoremap <leader>i gg=G

" MarkdownPreview
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-P> <Plug>MarkdownPreviewToggle

"for copy and paste outside the vim
vnoremap y "+y
vnoremap p "+p
vnoremap d "+d
nnoremap p "+p

" mics
nmap Re :source $MYVIMRC<CR>
