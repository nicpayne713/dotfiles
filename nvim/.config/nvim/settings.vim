"             _   _   _                       _           
"    ___  ___| |_| |_(_)_ __   __ _ _____   _(_)_ __ ___  
"   / __|/ _ \ __| __| | '_ \ / _` / __\ \ / / | '_ ` _ \ 
"   \__ \  __/ |_| |_| | | | | (_| \__ \\ V /| | | | | | |
"   |___/\___|\__|\__|_|_| |_|\__, |___(_)_/ |_|_| |_| |_|
"                             |___/                       
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
 
set scrolloff=30

"" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/.git/*

set clipboard+=unnamedplus

let g:python_lint_config = '~/pylint.rc'
let g:python3_host_prog = '~/miniconda3/bin/python'
let g:python3_host_prog = '~/miniconda3/envs/nvim3/bin/python'

" flake8
let g:flake8_cmd='/usr/local/bin/flake8'
let g:flake8_quickfix_location="topleft"

" isort
let g:isort_cmd='isort'

"" black
let g:black_virtualenv='~/.local/pipx/venvs/black'
autocmd bufwritepre *.py execute 'Black'

" docstring
let g:pydocstring_formatter='google'
" Enable folding
set foldmethod=indent
set foldlevel=99

syntax enable
set statusline+=%#warningmsg#
set statusline+=%*
let g:lightline = {'colorscheme': "Tomorrow_Night_Blue"}

" doq for pydocstring
let g:pydocstring_doq_path = '/usr/local/bin/doq'

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
