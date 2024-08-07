return {
	"navarasu/onedark.nvim",
	lazy = false,
	config = function()
		require("onedark").setup({
			toggle_style_key = "<leader>otn",
			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
			style = "warmer",
			lualine = {
				transparent = true,
			},
		})
		require("onedark").load()
	end,
	init = function() end,
}
