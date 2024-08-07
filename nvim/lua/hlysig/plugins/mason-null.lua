return {
	"jay-babu/mason-null-ls.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"nvimtools/none-ls.nvim",
		"nvim-lua/plenary.nvim",
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-null-ls").setup({
			ensure_installed = {
				"eslint_d",
				"prettierd",
				"shellcheck",
				"pylint",
				"black",
				"shfmt",
			},
			automatic_installation = false,
		})
	end,
}
