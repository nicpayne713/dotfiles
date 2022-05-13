  
--            _            _             
--   ___ ___ | | ___  _ __| |_   _  __ _ 
--  / __/ _ \| |/ _ \| '__| | | | |/ _` |
-- | (_| (_) | | (_) | | _| | |_| | (_| |
--  \___\___/|_|\___/|_|(_)_|\__,_|\__,_|
--

local api = vim.api


-- require'nvim-web-devicons'.setup {
--  -- your personnal icons can go here (to override)
--  -- DevIcon will be appended to `name`
-- -- override = {
-- --  zsh = {
-- --    icon = "",
-- --    color = "#428850",
-- --    name = "Zsh"
-- --  }
-- -- };
--  -- globally enable default icons (default to false)
--  -- will get overriden by `get_icons` option
--  default = true;
-- }

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "quickfix", "__vista__", "terminal" }
vim.g.tokyonight_transparent=1
vim.g.tokyonight_dark_sidebar=0
vim.g.tokyonight_dark_float=1

vim.cmd[[colorscheme tokyonight]]
vim.cmd("colorscheme nord")

-- Transparency
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi clear Comment]]  -- comments had big blocks like visual selection - turn it off
vim.cmd[[hi Comment guifg=gray]] -- need to set fg for comments after turning off the weird highlights
vim.cmd[[hi clear Function]]  -- Had annoying function highlighting in python
vim.cmd[[hi LineNR guibg=None guifg=gray]]
vim.cmd[[hi clear SignColumn ]]
