local config = {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "Files",
        separator = true,
        text_align = "center",
      },
    },
    separator_style = "slant",
    mode = "buffers",
    numbers = "both",
    show_buffer_close_icons = false,
    color_icons = false,
    show_close_icon = false,
    show_buffer_icons = true,
    themable = true,
    diagnostics = "nvim_lsp",
    diagnostics_update_on_event = true,
  },
}

return {
  "akinsho/bufferline.nvim",
  enabled = true,
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup(config)
  end,
}
