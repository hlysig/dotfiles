local null_ls = require("null-ls")

local config = {
  language_server = "yamlls",
  null_tools = { "yamllint" },
  null_sources = { null_ls.builtins.diagnostics.yamllint },
  treesitter_languages = { "yaml" },
}

local setup = function()
  require("lspconfig").yamlls.setup({})

  local augroup = vim.api.nvim_create_augroup("language-module-yaml", {
    clear = true,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "yaml",
    group = augroup,
    callback = function()
      vim.bo.expandtab = true
      vim.bo.shiftwidth = 2
      vim.bo.tabstop = 2
    end,
  })
end

return {
  config = config,
  setup = setup,
}
