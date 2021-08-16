  
"       _                                         _           
"      | | _____ _   _ _ __ ___   __ _ _ ____   _(_)_ __ ___  
"      | |/ / _ \ | | | '_ ` _ \ / _` | '_ \ \ / / | '_ ` _ \ 
"      |   <  __/ |_| | | | | | | (_| | |_) \ V /| | | | | | |
"      |_|\_\___|\__, |_| |_| |_|\__,_| .__(_)_/ |_|_| |_| |_|
"                |___/                |_|                     
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
let mapleader=" "
filetype plugin indent on    " required

" Enable folding with space f
nnoremap <space> f
" navigation
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
" Behave Vim
nnoremap Y y$

" ESC
inoremap jk <esc>

"" Keep everything centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo Breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u

" Jumplist
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k' 
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j' 

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Python
nnoremap <leader>ad :Pydocstring<CR>

" search
let g:ackprg = 'ag --vimgrep'

" Add fzf to vim
set rtp+=/usr/local/opt/fzf
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <leader>p :GFiles<cr>
nnoremap <leader>r :Ag<cr>
nnoremap <Leader>l :<C-u>call gitblame#echo()<CR>

" remap visual block mode so ctrl v can be paste
command! Vb normal! <C-v>
nnoremap <leader>b :Vb<CR>
" copy to clipboard
" copy with ctrl c
vnoremap <C-c> :w !pbcopy<CR><CR>
" paste with ctrl v
nnoremap <C-v> :r !pbpaste<CR><CR>

" edit things
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
" sourceconfig 
nnoremap gsv <cmd>source ~/.config/nvim/init.vim<CR>

" source current file
nnoremap gso <cmd>source %<CR>
" edit nvim dotfiles
nnoremap gen <cmd>Telescope find_files cwd=~/.config/nvim<CR>
nnoremap <leader>en :Telescope find_files cwd=~/.config/nvim<CR>
nnoremap gek <cmd>e ~/.config/nvim/keymap.vim<CR>
nnoremap gel <cmd>e ~/.config/nvim/lsp-config.lua<CR>
nnoremap gep <cmd>e ~/.config/nvim/plugins.vim<CR>
nnoremap ges <cmd>e ~/.config/nvim/settings.vim<CR>
" Telescopihng
nnoremap geg <cmd>Telescope find_files cwd=~/git<CR>
" edit tmuux config
nnoremap get <cmd>e ~/.tmux.conf.local<CR>
" edit zshrc
nnoremap gez <cmd>e ~/.zshrc<CR>
" Plug
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
nnoremap gpi <cmd>PlugInstall<CR>
nnoremap gpc <cmd>PlugClean<CR>

" formatting
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
nnoremap <leader><leader>p :!prettier % --write l<cr>
" nnoremap <leader>f :black<cr>
" nnoremap <leader>c :Commentary<cr>
" nnoremap <leader>u gu
nnoremap <leader>f8 :call flake8#Flake8()<cr>

nnoremap gR <cmd>Telescope lsp_references<cr>
nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap gd <cmd>Telescope lsp_definitions<cr>

nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> gh <cmd>Lspsaga lsp_finder<CR>
nnoremap <silent>K <cmd>Lspsaga hover_doc<CR>
