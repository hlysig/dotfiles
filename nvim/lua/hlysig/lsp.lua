local null_ls = require("null-ls")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local autoformat = true

local function setup_null()
	local sources = {
		null_ls.builtins.formatting.prettierd,
		require("none-ls.diagnostics.eslint_d"),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.terraform_fmt,
		null_ls.builtins.diagnostics.terraform_validate,
		null_ls.builtins.diagnostics.pylint,
		null_ls.builtins.formatting.black,
	}
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
	null_ls.setup({
		sources = sources,
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						if autoformat then
							vim.lsp.buf.format({ bufnr = bufnr })
						end
					end,
				})
			end
		end,
	})
end

local function setup_ts()
	lspconfig.tsserver.setup({
		capabilities = capabilities,
	})
end

local function setup_python()
	lspconfig.pyright.setup({
		capabilities = capabilities,
	})
end

local function setup_terraformls()
	lspconfig.terraformls.setup({
		capabilities = capabilities,
	})
end

local function setup_lua()
	lspconfig.lua_ls.setup({
		capabilities = capabilities,
	})
end

local function setup()
	setup_ts()
	setup_lua()
	setup_null()
	setup_terraformls()
	setup_python()
end

setup()
