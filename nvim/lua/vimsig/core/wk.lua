local wk = require("which-key")

wk.add({
  -- c
  { "<localleader>c", group = "code" },

  -- f
  { "<leader>f",      group = "file" },
  { "<leader>fo",     desc = "open" },
  { "<leader>ft",     group = "tree" },

  -- w
  { "<leader>w",      group = "window" },
  { "<leader>ws",     group = "split" },
  { "<leader>wt",     group = "terminal" },

  -- t
  { "<leader>t",      group = "telescope" },
  { "<leader>tg",     group = "git" },
  { "<leader>tv",     group = "vim" },
  { "<leader>tf",     desc = "files" },
})
