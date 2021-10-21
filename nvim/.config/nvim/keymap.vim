  
"       _                                         _           
"      | | _____ _   _ _ __ ___   __ _ _ ____   _(_)_ __ ___  
"      | |/ / _ \ | | | '_ ` _ \ / _` | '_ \ \ / / | '_ ` _ \ 
"      |   <  __/ |_| | | | | | | (_| | |_) \ V /| | | | | | |
"      |_|\_\___|\__, |_| |_| |_|\__,_| .__(_)_/ |_|_| |_| |_|
"                |___/                |_|                     
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
let mapleader=" "
filetype plugin indent on    " required

" Be faster
:command W w
" Enable folding with space f
nnoremap <space> f
" navigation
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
" Behave Vim
nnoremap Y y$
vnoremap < <gv
vnoremap > >gv
" yank text to first regiter then when you paste it the yanked text is still first in the register
vnoremap <Leader>p "_P 

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

" quickfix
let s:cisopen = 0

function! s:ToggleQuickFix()

    if s:cisopen  == 1
        let s:cisopen = 0
        :bel copen
        :wincmd k

    else
        let s:cisopen = 1
        :cclose
    endif
endfunction

:command! ToggleQuickFix :call s:ToggleQuickFix()
nnoremap <Leader>qft :ToggleQuickFix<CR>

nnoremap <Leader>qfc <cmd>cexpr []<CR>
nnoremap <C-n> <cmd>cnext<CR>
nnoremap <C-p> <cmd>cprev<CR>

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python
nnoremap <leader>ad :Pydocstring<CR>

" fzf searching until Telescope has better grep
function! s:ag_with_opts(arg, bang)
      let tokens  = split(a:arg)
        let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
          let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
            call fzf#vim#ag(query, ag_opts, a:bang ? {} : {'down': '100%'})
        endfunction

        autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)

nnoremap <Leader>r :Ag --hidden<CR>

"nnoremap <Leader>l :<C-u>call gitblame#echo()<CR>

" remap visual block mode so ctrl v can be paste

" copy to clipbord
vnoremap <Leader>y "+y
" Copy whole file to system clipboard
vnoremap <Leader>Y gg"+yG

" edit things
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
" sourceconfig 
nnoremap gsv <cmd>source ~/.config/nvim/init.vim<CR>

" source current file
nnoremap gso <cmd>source %<CR>
" edit nvim dotfiles
nnoremap gen <cmd>Telescope find_files cwd=~/.config/nvim<CR>
nnoremap gek <cmd>e ~/.config/nvim/keymap.vim<CR>
nnoremap gel <cmd>e ~/.config/nvim/lua/nicpayne713/lsp-config.lua<CR>
nnoremap gep <cmd>e ~/.config/nvim/plugins.vim<CR>
nnoremap ges <cmd>e ~/.config/nvim/settings.vim<CR>

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
nnoremap <leader>f8 <cmd>call flake8#Flake8()<CR>
nnoremap <leader>fb <cmd>Black<CR>

" LSP
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
nnoremap gR <cmd>Telescope lsp_references<cr>
nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
"nnoremap gd <cmd>Telescope lsp_definitions<cr>
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> gh <cmd>Lspsaga lsp_finder<CR>
" nnoremap <silent>K <cmd>Lspsaga hover_doc<CR>

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>

" Testing things
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
" Work
nnoremap gec <cmd>e ~/.caterpillar/credentials.yml<CR>
