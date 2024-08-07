local api = vim.api

api.nvim_command("autocmd TermOpen * startinsert")
api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber")
api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")
