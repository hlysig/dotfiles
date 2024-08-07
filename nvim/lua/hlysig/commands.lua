vim.api.nvim_create_user_command("HToggleLineNumbers", function()
	vim.o.number = not vim.o.number
end, {})

vim.api.nvim_create_user_command("HToggleRelativeLineNumbers", function()
	vim.o.relativenumber = not vim.o.relativenumber
end, {})

function ToggleColorColumn()
	if _G.colorcolumn_enabled then
		vim.o.colorcolumn = ""
		_G.colorcolumn_enabled = false
	else
		vim.o.colorcolumn = "80"
		_G.colorcolumn_enabled = true
	end
end

vim.api.nvim_create_user_command("HColorColumnToggle", function()
	if vim.o.colorcolumn == nil or vim.o.colorcolumn == "" then
		vim.o.colorcolumn = "80"
	else
		vim.o.colorcolumn = ""
	end
end, { nargs = "?" })
