local ensure_installed = {
	"tsserver",
	"lua_ls",
	"marksman",
	"pyright",
	"marksman",
	"bashls",
}

local config = {
	ensure_installed = ensure_installed,
	automatic_installation = false,
	handlers = nil,
}

return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	enabled = true,
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup(config)
	end,
}
