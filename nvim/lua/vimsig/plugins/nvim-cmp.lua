-- return {
--	"hrsh7th/nvim-cmp",
--	enabled = true,
--	dependencies = {
--		"hrsh7th/cmp-buffer",
--		"hrsh7th/cmp-path",
--		"hrsh7th/cmp-cmdline",
--		"hrsh7th/cmp-nvim-lsp",
--		"hrsh7th/cmp-vsnip",
--
--		"rafamadriz/friendly-snippets",
--		{
--			"L3MON4D3/LuaSnip",
--			dependencies = { "rafamadriz/friendly-snippets" }, -- Snippets
--			config = function()
--				require("luasnip.loaders.from_vscode").lazy_load()
--				-- https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/go.json
--			end,
--		},
--
--		"saadparwaiz1/cmp_luasnip",
--	},
-- }
return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-vsnip",
    "hrsh7th/vim-vsnip", -- "rafamadriz/friendly-snippets",
    -- {
    --	"L3MON4D3/LuaSnip",
    --	dependencies = { "rafamadriz/friendly-snippets" }, -- Snippets
    --	config = function()
    --		require("luasnip.loaders.from_vscode").lazy_load()
    --		-- https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/go.json
    --	end,
    -- },
    "saadparwaiz1/cmp_luasnip",
  },
}
