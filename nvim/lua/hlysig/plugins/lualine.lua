local config = {
	options = {
		icons_enabled = true,
		theme = "onedark",
		always_divide_middle = true,
		globalstatus = true,
	},
}

return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("lualine").setup(config)
	end,
}
