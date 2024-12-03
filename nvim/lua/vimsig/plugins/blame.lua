return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    enabled = true,
    config = function()
      require("blame").setup()
    end,
  },
}
