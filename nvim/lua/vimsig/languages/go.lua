local vim_go = require("go")
local vim_go_format = require("go.format")

local config = {
  language_server = "gopls",
  null_tools = {},
  null_sources = {},
  treesitter_languages = { "go" },
}

local setup = function()
  vim_go.setup()
  local go_lang_group = vim.api.nvim_create_augroup("langauge-module-go", {})

  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
      vim_go_format.goimports()
    end,
    group = go_lang_group,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "*.go",
    group = go_lang_group,
    callback = function()
      vim.bo.tabstop = 4
      vim.bo.shiftwidth = 4
      vim.bo.softtabstop = 4
      vim.bo.expandtab = false
      vim.bo.autoindent = true
    end,
  })

  require("lspconfig").gopls.setup({})
end

return {
  config = config,
  setup = setup,
}
