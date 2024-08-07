local wk = require("which-key")

wk.add({
  -- f
  { "<leader>f",       group = "file" },
  { "<leader>fw",      desc = "write" },
  { "<leader>ft",      group = "tree" },
  { "<leader>ftt",     desc = "toggle" },
  { "<leader>ftf",     desc = "focus" },

  -- w
  { "<leader>w",       group = "window" },
  { "<leader>ws",      group = "split" },
  { "<leader>wsv",     desc = "vertical" },
  { "<leader>wsh",     desc = "horizontal" },
  { "<leader>wt",      group = "terminal" },

  { "<leader>wtv",     desc = "vertical" },
  { "<leader>wth",     desc = "horizontal" },

  -- t
  { "<leader>t",       group = "telescope" },
  { "<leader>tg",      desc = "git files" },
  { "<leader>tb",      desc = "buffers" },
  { "<leader>tr",      desc = "registers" },
  { "<leader>tf",      desc = "files" },

  -- x
  { "<leader>x",       group = "trouble" },

  -- c
  { "<leader>c",       group = "code" },
  { "<leader>ck",      desc = "hover.nvim" },

  -- o
  { "<leader>o",       group = "option" },

  -- <leader>
  { "<leader><Left>",  desc = "left buffer" },
  { "<leader><Right>", desc = "right buffer" },
})
