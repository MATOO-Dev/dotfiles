local servers = require 'lsp.servers'
local capabilities = vim.lsp.protocol.make_client_capabilities()

local on_attach = function(client, bufnr)
	-- todo
end

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
		require('lspconfig')[servername].setup {
			autostart = true,
			settings = settings,
			capabilities = capabilities,
			on_attach = on_attach,
		}
	end,
}

require 'lspconfig'.gdscript.setup {}
require 'lspconfig'.gdshader_lsp.setup {}
