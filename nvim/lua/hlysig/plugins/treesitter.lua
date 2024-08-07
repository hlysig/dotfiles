return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = false,
			ignore_install = {},
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "javascript", "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			modules = {},
		})
	end,
}
