return {
	{
		'williamboman/mason.nvim',
		version = "^1.0.0",
		event = 'VeryLazy',
		opts = {}
	},
	{
		'williamboman/mason-lspconfig.nvim',
		version = "^1.0.0",
		opts = {
			automatic_installation = true,
		},
	}
}
