return {
  "folke/trouble.nvim",
  enabled = true,
  opts = {},
  cmd = "Trouble",
  config = function()
    require("trouble").setup({})

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "Trouble",
      callback = function()
        vim.wo.wrap = true
      end,
    })
  end,
}
