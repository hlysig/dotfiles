local null_ls = require("null-ls")

local config = {
  language_server = "marksman",
  null_tools = { "prettier" },
  null_sources = { null_ls.builtins.formatting.prettier },
  treesitter_languages = { "markdown" },
}

local setup = function()
  local augroup = vim.api.nvim_create_augroup("language-module-markdown", { clear = true })

  vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = "markdown",
    callback = function()
      vim.bo.tabstop = 4
      vim.bo.shiftwidth = 4
      vim.bo.expandtab = true
      vim.wo.wrap = true
      -- Disable auto comment continuation
      vim.bo.formatoptions = vim.bo.formatoptions:gsub("[cro]", "")
    end,
  })

  require("lspconfig").marksman.setup({})
end

return {
  config = config,
  setup = setup,
}
