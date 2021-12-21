"             _   _   _                       _           
"   / __|/ _ \ __| __| | '_ \ / _` / __\ \ / / | '_ ` _ \ 
"    ___  ___| |_| |_(_)_ __   __ _ _____   _(_)_ __ ___  
"   \__ \  __/ |_| |_| | | | | (_| \__ \\ V /| | | | | | |
"   |___/\___|\__|\__|_|_| |_|\__, |___(_)_/ |_|_| |_| |_|
"                             |___/                       
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
 
" let g:ascii = [
"       \ '        __',
"       \ '.--.--.|__|.--------.',
"       \ '|  |  ||  ||        |',
"       \ ' \___/ |__||__|__|__|',
"       \ ''
"       \]
"
                                                                 
" let g:ascii = [
"                 \  "@@@@@@@   @@@  @@@   @@@@@@   @@@@@@@@  @@@  @@@  @@@  @@@  @@@ ",
"                 \  "@@@@@@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  @@@@ @@@  @@@  @@@  @@@ ",
"                 \  "@@!  @@@  @@!  @@@  @@!  @@@  @@!       @@!@!@@@  @@!  @@!  !@@ " ,
"                 \  "!@!  @!@  !@!  @!@  !@!  @!@  !@!       !@!!@!@!  !@!  !@!  @!! " ,
"                 \  "@!@@!@!   @!@!@!@!  @!@  !@!  @!!!:!    @!@ !!@!  !!@   !@@!@!  " ,
"                 \  "!!@!!!    !!!@!!!!  !@!  !!!  !!!!!:    !@!  !!!  !!!    @!!!   " ,
"                 \  "!!:       !!:  !!!  !!:  !!!  !!:       !!:  !!!  !!:   !: :!!  " ,
"                 \  ":!:       :!:  !:!  :!:  !:!  :!:       :!:  !:!  :!:  :!:  !:! " ,
"                 \  " ::       ::   :::  ::::: ::   :: ::::   ::   ::   ::   ::  ::: " ,
"                 \  " :         :   : :   : :  :   : :: ::   ::    :   :     :   ::  " ,
"                 \  "                                                                " ,
"                 \  "                            .-==========                        " ,
"                 \  "                         .-' O    =====                         " ,
"                 \  "                        /___       ===                          " ,
"                 \  "                           \_      |                            " ,
"                 \  "_____________________________)    (_____________________________" ,
"                 \  "\___________               .'      `,              ____________/" ,
"                 \  "  \__________`.     |||<   `.      .'   >|||     .'__________/  " ,
"                 \  "     \_________`._  |||  <   `-..-'   >  |||  _.'_________/     " ,
"                 \  "        \_________`-..|_  _ <      > _  _|..-'_________/        " ,
"                 \  "           \_________   |_|  //  \\  |_|   _________/           " ,
"                 \  "                      .-\   //    \\   /-.                      " ,
"                 \  "      ,  .         _.'.- `._        _.' -.`._         .  ,      " ,
"                 \  "    <<<<>>>>     .' .'  /  '``----''`  \  `. `.     <<<<>>>>    " ,
"                 \  "      '/\`         /  .' .'.'/|..|\`.`. `.  \         '/\`      " ,
"                 \  "      (())        `  /  / .'| |||| |`. \  \  '        (())      " ,
"                 \  "       /\          ::_.' .' /| || |\ `. `._::          /\       " ,
"                 \  "      //\\           '``.' | | || | | `.''`           //\\      " ,
"                 \  "      //\\             .` .` | || | '. '.             //\\      " ,
"                 \  "      //\\                `  | `' |  '                //\\      " ,
"                 \  "      \\//                                            \\//      " ,
"                 \  "       \/                      MJP                     \/       " 
"                 \]
let g:ascii=[
            \"         _____       _   _           ___  ___                   _    ",
            \"        |_   _|     | | | |          |  \/  |                  | |   ",
            \"          | | ___   | |_| |__   ___  | .  . | ___   ___  _ __  | |   ",
            \"          | |/ _ \  | __| '_ \ / _ \ | |\/| |/ _ \ / _ \ | '_ \  |   ",
            \"          | | (_) | | |_| | | |  __/ | |  | | (_) | (_)| | | | |_|   ",
            \"          \_/\___/   \__|_| |_|\___| \_|  |_/\___/ \___/ |_| |_(_)   ",
            \"                         `. ___                                        ",
            \"                       __,' __`.                _..----....____        ",
            \"           __...--.'``;.   ,.   ;``--..__     .'    ,-._    _.-'       ",
            \"     _..-''-------'   `'   `'   `'     O ``-''._   (,;') _,'           ",
            \"   ,'________________                          \`-._`-','              ",
            \"    `._              ```````````------...___   '-.._'-:                ",
            \"       ```--.._      ,.                     ````--...__\-.             ",
            \"               `.--. `-`                       ____    |  |`           ",
            \"                 `. `.                       ,'`````.  ;  ;`           ",
            \"                   `._`.        __________   `.      \'__/`            ",
            \"                      `-:._____/______/___/____`.     \  `             ",
            \"                                  |       `._    `.    \               ",
            \"                                  `._________`-.   `.   `.___          ",
            \"                                                SSt  `------'`         ",
            \"                                                                       "
            \]
let g:startify_custom_header =
      \ 'startify#pad(g:ascii + startify#fortune#boxed())'
set scrolloff=30
set nowrap
set colorcolumn=88
hi ColorColumn ctermbg=darkgrey guibg=darkgrey

" Transparency
hi Normal guibg=NONE ctermbg=NONE

"" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/.git/*
set wildignore+=**/.venv/*

set clipboard+=unnamedplus

let g:python_lint_config = '~/pylint.rc'
" let g:python3_host_prog = '~/.pyenv/versions/nvim3/bin/python'
let g:python3_host_prog = '~/.config/nvim/.venv3/bin/python'


" LSP

"" flake8
" let g:flake8_cmd='$HOME/.local/bin/flake8'
" let g:flake8_quickfix_location="bottom"
" autocmd BufWritePost *.py call flake8#Flake8()

" isort
let g:isort_cmd='isort'

"" black
" let g:black_virtualenv = '~/.venv/dotfiles/bin/python' 
let g:black_virtualenv = '~/.local/pipx/venvs/black/bin' 
" let g:black_cmd='~/.local/bin/black'
autocmd bufwritepre *.py execute 'Black'

" function! s:PyPreSave()
"     Black
" endfunction

function! s:PyPostSave()
    execute "silent !tidy-imports --black --quiet --replace-star-imports --action REPLACE " . bufname("%")
    execute "e"
endfunction

" :command! PyPreSave :call s:PyPreSave()
:command! PyPostSave :call s:PyPostSave()

augroup pypeaday
    autocmd!
    " autocmd bufwritepre *.py execute 'PyPreSave'
    autocmd bufwritepost *.py execute 'PyPostSave'
    autocmd bufwritepost .tmux.conf execute ':!tmux source-file %'
    autocmd bufwritepost .tmux.local.conf execute ':!tmux source-file %'
    " autocmd bufwritepost *.vim execute ':source %'
augroup end

" docstring
let g:pydocstring_formatter='google'

" search
let g:ackprg = 'ag --vimgrep --hidden'

" Snippets vim vim-vsnip

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}

" Try ultisnip
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-e>"
let g:UltiSnipsJumpBackwardTrigger="<C-i>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"" Add fzf to vim
set rtp+=/usr/local/opt/fzf

" Enable folding
set foldmethod=indent
set foldlevel=99

syntax enable
set statusline+=%#warningmsg#
set statusline+=%*
set laststatus=2
let g:lightline = {
            \'colorscheme': "tokyonight",
            \ 'active': {
            \ 'left': [ [ 'mode', 'paste' ],
            \          [ 'gitbranch', 'readonly', 'filename', 'modified' ]]
            \ },
            \ 'component_function': {
            \ 'gitbranch': 'gitbranch#name'
            \ }
            \ }

" doq for pydocstring
let g:pydocstring_doq_path = '$HOME/.local/bin/doq'

" General VIM
" show line numbers
set number relativenumber

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" set python style line folding
let g:vim_markdown_folding_style_pythonic = 1

" syntax
let g:markdown_fenced_languaged = ['python', 'bash=sh']

" show docstring for folded code
let g:SimpylFold_docstring_preview=1

" indent guide
let g:indent_guides_enable_on_vim_startup = 1

" emoji
"for e in emoji#list():
"    call append(line('$'), printf('%s (%s)', emoji#for(e), e))
"endfor
set completefunc=emoji#complete

" nvimtree
" quit tree when file is opened
let g:nvim_tree_quit_on_open=1

