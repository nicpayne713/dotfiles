call plug#begin('~/.local/share/nvim/plugged')

Plug 'jbyuki/instant.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/which-key.nvim'
Plug 'Pocco81/TrueZen.nvim'
Plug 'windwp/nvim-spectre'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
" Git
Plugin 'zivyangll/git-blame.vim'

" syntax checking
"Plugin 'vim-syntastic/syntastic'

" braces
Plugin 'jiangmiao/auto-pairs'


" color
Plug 'Yagua/nebulous.nvim'

" formatter
Plug 'ambv/black'

" navigation
Plug 'ThePrimeagen/harpoon'
Plug 'christoomey/vim-quicklink'
Plug 'christoomey/vim-tmux-runner'
Plug 'fabi1cazenave/termopen.vim'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install'  }
Plug 'junegunn/fzf.vim'

Plug 'justinmk/vim-sneak'
Plug 'mbbill/undotree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'smitajit/bufutils.vim'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'

" objects
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/playground'
Plug 'thinca/vim-visualstar'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-commentary'

" lsp
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
Plug 'kabouzeid/nvim-lspinstall'
Plug 'michaeljsmith/vim-indent-object'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'mfussenegger/nvim-dap-python'

Plug 'hrsh7th/vim-vsnip/'
Plug 'L3MON4D3/LuaSnip'

call plug#end()