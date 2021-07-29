"             _   _   _                       _           
"    ___  ___| |_| |_(_)_ __   __ _ _____   _(_)_ __ ___  
"   / __|/ _ \ __| __| | '_ \ / _` / __\ \ / / | '_ ` _ \ 
"   \__ \  __/ |_| |_| | | | | (_| \__ \\ V /| | | | | | |
"   |___/\___|\__|\__|_|_| |_|\__, |___(_)_/ |_|_| |_| |_|
"                             |___/                       
"―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 

set clipboard+=unnamedplus

let g:python_lint_config = '~/pylint.rc'
let g:python3_host_prog = '~/miniconda3/bin/python'
let g:python3_host_prog = '~/miniconda3/envs/nvim3/bin/python'

" flake8
let g:flake8_cmd='/usr/local/bin/flake8'
let g:flake8_quickfix_location="topleft"

" linting with Ale
let b:ale_linters = {'python': ['gitlint','flake8', 'mypy', 'autoflake', "pyright"]} "'vulture','pyright', 'pyls',
let g:ale_python_mypy_options = '--show-error-codes'
"let b:ale_fixers =  ['black', 'isort', 'remove_trailing_lines', 'reorder-python-imports', 'trim_whitespace']
let b:ale_fixers = {'python': ['black', 'isort', 'remove_trailing_lines', 'reorder-python-imports', 'trim_whitespace']}
let b:ale_fix_on_save = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_baloons = 1
let g:ale_completion_enabled = 1

" Enable backspace
:set backspace=indent,eol,start

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" enable syntax highlighting
let g:python_syntax_highlighting = 0

syntax enable
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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

call togglebg#map("<F5>")

" indent guide
let g:indent_guides_enable_on_vim_startup = 1
