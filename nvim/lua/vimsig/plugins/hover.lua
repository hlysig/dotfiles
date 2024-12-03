return {
  "lewis6991/hover.nvim",
  config = function()
    require("hover").setup({
      init = function()
        require("hover.providers.lsp")
        require("hover.providers.diagnostic")
        require("hover.providers.dictionary")
      end,
      preview_opts = {
        border = "single",
      },
      title = true,
    })
  end,
}
