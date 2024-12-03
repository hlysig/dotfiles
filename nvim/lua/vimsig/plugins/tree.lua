local config = {
  filters = {
    custom = { "^\\.git$", "^\\node_modules$", "^\\.DS_Store" },
  },
}

return {
  "nvim-tree/nvim-tree.lua",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("nvim-tree").setup(config)
  end,
}
