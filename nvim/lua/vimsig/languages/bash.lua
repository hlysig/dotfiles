local null_ls = require("null-ls")

local config = {
  language_server = "bashls",
  null_tools = { "shfmt", "shellcheck", "beautysh" },
  null_sources = { null_ls.builtins.formatting.shfmt },
  treesitter_languages = { "bash" },
}

local setup = function()
  require("lspconfig").bashls.setup({})

  local augroup = vim.api.nvim_create_augroup("language-module-bash", {
    clear = true,
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "sh",
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
