local config = {
  language_server = "graphql",
  null_tools = {},
  null_sources = {},
  treesitter_languages = { "graphql" },
}

local setup = function()
  local graphql_lang_group = vim.api.nvim_create_augroup("langauge-module-graphql", {})

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "graphql",
    group = graphql_lang_group,
    callback = function()
      vim.bo.tabstop = 2
      vim.bo.shiftwidth = 2
      vim.bo.softtabstop = 2
      vim.bo.expandtab = true
      vim.bo.autoindent = true
    end,
  })

  require("lspconfig").graphql.setup({})
end

return {
  config = config,
  setup = setup,
}
