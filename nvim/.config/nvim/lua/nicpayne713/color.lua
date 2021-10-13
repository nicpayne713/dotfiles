  
--            _            _             
--   ___ ___ | | ___  _ __| |_   _  __ _ 
--  / __/ _ \| |/ _ \| '__| | | | |/ _` |
-- | (_| (_) | | (_) | | _| | |_| | (_| |
--  \___\___/|_|\___/|_|(_)_|\__,_|\__,_|
--

local M = {}
local api = vim.api

--vim.o.termguicolors = true
--vim.o.background = 'dark'
vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "quickfix", "__vista__", "terminal" }
vim.g.tokyonight_transparent_background=1
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
-- override = {
--  zsh = {
--    icon = "",
--    color = "#428850",
--    name = "Zsh"
--  }
-- };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
