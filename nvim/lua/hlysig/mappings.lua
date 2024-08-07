vim.keymap.set("n", "<leader>fw", ":w<cr>", {
  noremap = true,
  silent = false,
})

vim.keymap.set("n", "<leader>ftt", ":NvimTreeToggle<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>ftf", ":NvimTreeFocus<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wsh", ":split<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wsv", ":vsplit<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wc", ":close<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wtv", ":vsplit|:terminal<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wth", ":split|:terminal<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>tg", ":Telescope git_files<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>tr", ":Telescope registers<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>tf", ":Telescope find_files<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>tb", ":Telescope buffers<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader><Right>", ":bnext<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-S-Up>", ":resize -1<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-S-Down>", ":resize +1<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-S-Left>", ":vertical resize +1<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-S-Right>", ":vertical resize -1<CR>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-h>", "<C-w>h", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-j>", "<C-w>j", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-k>", "<C-w>k", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<C-l>", "<C-w>l", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<localleader>y", '"*y', {
  noremap = true,
  silent = true,
})

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {
  silent = true,
})

vim.keymap.set("n", "<leader>on", ":HToggleLineNumbers<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>or", ":HToggleRelativeLineNumbers<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>oc", ":HColorColumnToggle<cr>", {
  noremap = true,
  silent = true,
})
