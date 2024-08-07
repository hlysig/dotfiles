return {
	"lewis6991/hover.nvim",
	config = function()
		require("hover").setup({
			preview_opts = {
				border = "single",
			},
			init = function()
				require("hover.providers.lsp")
			end,
		})

		-- Setup keymaps
		vim.keymap.set("n", "<leader>ck", require("hover").hover, { desc = "hover.nvim" })
		vim.keymap.set("n", "<leader>cs", require("hover").hover_select, { desc = "hover.nvim (select)" })
		vim.keymap.set("n", "<C-p>", function()
			require("hover").hover_switch("previous")
		end, { desc = "hover.nvim (previous source)" })
		vim.keymap.set("n", "<C-n>", function()
			require("hover").hover_switch("next")
		end, { desc = "hover.nvim (next source)" })
	end,
}
