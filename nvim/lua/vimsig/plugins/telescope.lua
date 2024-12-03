local config = {
  file_ignore_patterns = { "node_modules", ".git" },
}

return {
  "nvim-telescope/telescope.nvim",
  enabled = true,
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("telescope").setup(config)
  end,
}
