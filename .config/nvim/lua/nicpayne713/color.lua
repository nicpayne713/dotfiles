  
--            _            _             
--   ___ ___ | | ___  _ __| |_   _  __ _ 
--  / __/ _ \| |/ _ \| '__| | | | |/ _` |
-- | (_| (_) | | (_) | | _| | |_| | (_| |
--  \___\___/|_|\___/|_|(_)_|\__,_|\__,_|
--

local M = {}
local api = vim.api

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.g.nb_style = 'midnight'

require('nebulous').setup()

api.nvim_set_keymap('n', '<leader><cr>', ":lua require'nicpayne713.color'.nobg()<cr>", { noremap = true, silent = true })

