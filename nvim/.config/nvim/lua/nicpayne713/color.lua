  
--            _            _             
--   ___ ___ | | ___  _ __| |_   _  __ _ 
--  / __/ _ \| |/ _ \| '__| | | | |/ _` |
-- | (_| (_) | | (_) | | _| | |_| | (_| |
--  \___\___/|_|\___/|_|(_)_|\__,_|\__,_|
--

-- nord is the winner so far
vim.cmd("colorscheme nord")

-- Transparency
vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[hi clear Comment]]  -- comments had big blocks like visual selection - turn it off
vim.cmd[[hi Comment ctermbg=NONE guifg=gray ctermfg=gray]] -- need to set fg for comments after turning off the weird highlights
vim.cmd[[hi clear Function]]  -- Had annoying function highlighting in python
vim.cmd[[hi LineNR guibg=None guifg=gray ctermfg=gray]]
vim.cmd[[hi clear SignColumn ]]
vim.cmd[[hi ColorColumn ctermbg=darkgrey guibg=darkgrey]]
-- vim.cmd[[hi FoldColumn guibg=blue guifg=white ctermbg=red ctermfg=black]]  -- code folds
vim.cmd[[hi Folded ctermfg=darkgray]]



