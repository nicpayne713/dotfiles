call plug#begin('~/.local/share/nvim/plugged')
Plug 'onsails/lspkind-nvim'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'waylonwalker/Telegraph.nvim'

" For vsnip user.
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'

" For ultisnips users.
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'honza/vim-snippets'

Plug 'sheerun/vim-polyglot'
Plug 'jbyuki/instant.nvim'
Plug 'folke/trouble.nvim'
Plug 'folke/which-key.nvim'
Plug 'Pocco81/TrueZen.nvim'
"Plug 'windwp/nvim-spectre'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
Plug 'ThePrimeagen/vim-be-good'

" Git
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'mhinz/vim-signify'
Plug 'AndrewRadev/diffurcate.vim'

" syntax checking
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" braces
Plug 'jiangmiao/auto-pairs'

" Lightline
Plug 'itchyny/lightline.vim'


" color
Plug 'folke/tokyonight.nvim'

" splash screen
" using https link since git username error
" Plug 'mhinz/vim-stratify'
Plug 'https://github.com/mhinz/vim-startify'
" formatter
Plug 'psf/black', { 'tag': '20.8b1' }
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }

" navigation
Plug 'ThePrimeagen/harpoon'
Plug 'christoomey/vim-quicklink'
Plug 'christoomey/vim-tmux-runner'
Plug 'fabi1cazenave/termopen.vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install'  }
Plug 'junegunn/fzf.vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'justinmk/vim-sneak'
Plug 'mbbill/undotree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'smitajit/bufutils.vim'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdtree'
" objects
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'
Plug 'thinca/vim-visualstar'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'

" lsp
Plug 'folke/lsp-colors.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
Plug 'nvim-lua/completion-nvim'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest'
"Plug 'eddyekofo94/gruvbox-flat.nvim'
"Plug 'mfussenegger/nvim-dap'
"Plug 'nvim-telescope/telescope-dap.nvim'
"Plupg 'mfussenegger/nvim-dap-python'

Plug 'hrsh7th/vim-vsnip/'
Plug 'L3MON4D3/LuaSnip'

" prettier
Plug 'sbdchd/neoformat'

" emoji
Plug 'junegunn/vim-emoji'

" icons need loaded last
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-visual-selection'
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
call plug#end()
