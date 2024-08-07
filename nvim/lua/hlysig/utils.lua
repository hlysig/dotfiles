local M = {}

function M.setFileTypeOption(filetype, opts)
	vim.api.nvim_create_autocmd("FileType", {
		pattern = filetype,
		callback = function()
			for key, value in pairs(opts) do
				vim.bo[key] = value
			end
		end,
	})
end

return M
