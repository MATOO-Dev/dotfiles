-- disable newline comment continuation
vim.cmd('autocmd BufEnter * set formatoptions-=o')
-- t = auto-wrap using textwidth
-- c = auto-wrap using textwidth and enter comment leader
-- r = continue comments on enter
-- o = continue comments on o/O

-- enable wrapping for certain filetypes
vim.cmd('autocmd BufReadPost *.txt setlocal wrap')
vim.cmd('autocmd BufReadPost *.typ setlocal wrap')
vim.cmd('autocmd BufReadPost *.md setlocal wrap')

-- automatically open typst preview
vim.cmd('autocmd BufReadPost *.typ TypstPreview')

-- dont hide symbols in json
vim.cmd('autocmd BufReadPost *.json* setlocal conceallevel=0')

-- automatically connect to godothost server
GDConnected = false
vim.api.nvim_create_autocmd({ 'BufReadPost' }, {
	desc = 'Connect to godothost',
	pattern = { '*.gd', '*.gdshader', '*.tscn', '*.tres' },
	callback = function()
		if GDConnected then
			return end
		local project_file = vim.fn.getcwd() .. '/project.godot'
		if project_file then
			vim.fn.serverstart './godothost'
			print("Connected to godothost")
			GDConnected = true
		end
	end,
})
