local servers = require 'lsp.servers'

require 'mason-lspconfig'.setup {
	ensure_installed = vim.tbl_keys(servers),
}

-- automatic lsp installation could be achieved using lazy-lsp.nvim
require 'mason-lspconfig'.setup_handlers {
	function(servername)
		local settings = {}
		if servers[servername] ~= nil then
			settings = servers[servername]['settings']
		end
		vim.lsp.config(servername, {
			settings = settings,
		})
		vim.lsp.enable(servername)
	end,
}
