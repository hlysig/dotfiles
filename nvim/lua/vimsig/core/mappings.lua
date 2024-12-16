local hover = require("hover")

-- Here we define LSP mappings
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    if client == nil then
      return
    end

    client.server_capabilities.semanticTokensProvider = nil

    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    vim.keymap.set("n", "<localleader>cd", vim.lsp.buf.definition, {
      buffer = ev.buf,
      desc = "definition",
      noremap = true,
    })

    vim.keymap.set("n", "<localleader>cm", vim.lsp.buf.rename, {
      buffer = ev.buf,
      desc = "rename",
      noremap = true,
    })

    vim.keymap.set("n", "<localleader>cr", vim.lsp.buf.references, {
      buffer = ev.buf,
      desc = "references",
      noremap = true,
    })

    vim.keymap.set("n", "<localleader>ca", vim.lsp.buf.code_action, {
      buffer = ev.buf,
      desc = "action",
      noremap = true,
    })

    vim.keymap.set("n", "<localleader>co", "<cmd>Outline<CR>", {
      buffer = ev.buf,
      desc = "outline",
      noremap = true,
    })

    vim.keymap.set("n", "<localleader>ch", require("hover").hover, {
      noremap = true,
      silent = true,
      desc = "hover",
    })

    vim.keymap.set("n", "<localleader>cf", function()
      vim.lsp.buf.format({
        async = true,
      })
    end, {
      buffer = ev.buf,
      desc = "format",
    })
  end,
})

vim.keymap.set("n", "<leader>fw", ":w<cr>", {
  noremap = true,
  silent = false,
  desc = "write",
})

vim.keymap.set("n", "<leader>fo", function()
  vim.ui.open(vim.fn.expand("%"))
end, {
  desc = "open",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>ftt", ":NvimTreeToggle<cr>", {
  noremap = true,
  silent = true,
  desc = "toggle",
})

vim.keymap.set("n", "<leader>ftf", ":NvimTreeFindFile<cr>", {
  noremap = true,
  silent = true,
  desc = "find",
})

vim.keymap.set("n", "<leader>fo", function()
  vim.ui.open(vim.fn.expand("%"))
end, {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wsh", ":split<cr>", {
  noremap = true,
  silent = true,
  desc = "horizontal",
})

vim.keymap.set("n", "<leader>wsv", ":vsplit<cr>", {
  noremap = true,
  silent = true,
  desc = "vertical",
})

vim.keymap.set("n", "<leader>wc", ":close<cr>", {
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader>wtv", ":vsplit|:terminal<cr>", {
  noremap = true,
  silent = true,
  desc = "vertical",
})

vim.keymap.set("n", "<leader>wth", ":split|:terminal<cr>", {
  noremap = true,
  silent = true,
  desc = "horizontal",
})

vim.keymap.set("n", "<leader>tt", ":Telescope git_files<cr>", {
  noremap = true,
  desc = "git files",
  silent = true,
})

vim.keymap.set("n", "<leader>tgf", ":Telescope git_files<cr>", {
  noremap = true,
  desc = "files",
  silent = true,
})

vim.keymap.set("n", "<leader>tvr", ":Telescope registers<cr>", {
  noremap = true,
  silent = true,
  desc = "registers",
})

vim.keymap.set("n", "<leader>tff", ":Telescope find_files<cr>", {
  noremap = true,
  silent = true,
  desc = "files",
})

vim.keymap.set("n", "<leader>tvb", ":Telescope buffers<cr>", {
  noremap = true,
  silent = true,
  desc = "buffers",
})

vim.keymap.set("n", "<leader>tvk", ":Telescope keymaps<cr>", {
  noremap = true,
  silent = true,
  desc = "keymaps",
})

vim.keymap.set("n", "<leader>tgs", ":Telescope git_status<cr>", {
  noremap = true,
  silent = true,
  desc = "status",
})

vim.api.nvim_set_keymap("n", "]h", "&diff ? ']h' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'", {
  noremap = true,
  expr = true,
  desc = "next hunk",
})

vim.api.nvim_set_keymap("n", "[h", "&diff ? '[h' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'", {
  noremap = true,
  expr = true,
  desc = "next hunk",
})

vim.keymap.set("n", "<leader><Left>", ":bprevious<CR>", {
  desc = "buffer left",
  noremap = true,
  silent = true,
})

vim.keymap.set("n", "<leader><Right>", ":bnext<CR>", {
  noremap = true,
  silent = true,
  desc = "buffer right",
})

vim.keymap.set("n", "<C-S-Up>", ":resize -1<CR>", {
  noremap = true,
  silent = true,
  desc = "resize window",
})

vim.keymap.set("n", "<C-S-Down>", ":resize +1<CR>", {
  noremap = true,
  silent = true,
  desc = "resize window",
})

vim.keymap.set("n", "<C-S-Left>", ":vertical resize +1<CR>", {
  noremap = true,
  silent = true,
  desc = "resize window",
})

vim.keymap.set("n", "<C-S-Right>", ":vertical resize -1<CR>", {
  noremap = true,
  silent = true,
  desc = "resize window",
})

vim.keymap.set("n", "<C-h>", "<C-w>h", {
  noremap = true,
  silent = true,
  desc = "move to left split",
})

vim.keymap.set("n", "<C-j>", "<C-w>j", {
  noremap = true,
  silent = true,
  desc = "move to bottom split",
})

vim.keymap.set("n", "<C-k>", "<C-w>k", {
  noremap = true,
  silent = true,
  desc = "move to top split",
})

vim.keymap.set("n", "<C-l>", "<C-w>l", {
  noremap = true,
  silent = true,
  desc = "move to right split",
})

vim.keymap.set("n", "<localleader>y", '"*y', {
  noremap = true,
  silent = true,
  desc = "yank to system clipboard",
})

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {
  silent = true,
})

vim.keymap.set("n", "<C-p>", function()
  hover.hover_switch("previous")
end, { desc = "hover.nvim (previous source)", noremap = true })

vim.keymap.set("n", "<C-n>", function()
  hover.hover_switch("next")
end, { desc = "hover.nvim (next source)", noremap = true })
