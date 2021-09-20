lua require("nicpayne713")

nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
"nnoremap <C-p> <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>p <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf <cmd>lua require('telescope.builtin').find_files({hidden=true})<CR>
nnoremap <Leader>pg <cmd>lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>pw <cmd>lua require('telescope.builtin').grep_string { search =  vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb <cmd>lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>ch <cmd>lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc <cmd>lua require('nicpayne713.telescope').search_dotfiles()<CR>
nnoremap <leader>a <cmd>lua require('nicpayne713.telescope').bg_selector()<CR>
