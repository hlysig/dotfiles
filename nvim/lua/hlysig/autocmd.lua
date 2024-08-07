vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)

		if client == nil then
			return
		end

		client.server_capabilities.semanticTokensProvider = nil

		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "definition" })
		-- We use neovim hover.
		--		vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { buffer = ev.buf, desc = "hover" })
		--		vim.keymap.set("n", "<leader>ci", vim.lsp.buf.implementation, { buffer = ev.buf, desc = "implementation" })
		--		vim.keymap.set("n", "<leader>ck", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "signature-help" })
		--		vim.keymap.set("n", "<leader>ct", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "type-definition" })
		vim.keymap.set("n", "<leader>cm", vim.lsp.buf.rename, { buffer = ev.buf, desc = "rename" })
		vim.keymap.set("n", "<leader>cr", vim.lsp.buf.references, { buffer = ev.buf, desc = "references" })
		vim.keymap.set("n", "<leader>cf", function()
			vim.lsp.buf.format({ async = true })
		end, { buffer = ev.buf, desc = "format" })
	end,
})
