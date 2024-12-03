local null_ls = require("null-ls")

local config = {
  language_server = "lua_ls",
  null_tools = { "stylua" },
  null_sources = { null_ls.builtins.formatting.stylua },
  treesitter_languages = { "lua" },
}

local setup = function()
  local lua_lang_group = vim.api.nvim_create_augroup("langauge-module-lua", {})

  vim.api.nvim_create_autocmd("FileType", {
    group = lua_lang_group,
    pattern = "lua",
    callback = function()
      vim.bo.tabstop = 2
      vim.bo.shiftwidth = 2
      vim.bo.softtabstop = 2
      vim.bo.expandtab = true
      vim.bo.autoindent = true
    end,
  })
  require("lspconfig").lua_ls.setup({})
end

return {
  config = config,
  setup = setup,
}
