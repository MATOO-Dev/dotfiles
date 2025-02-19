return {
	{
		'williamboman/mason.nvim',
		event = 'VeryLazy',
		opts = {}
	},
	{
		'williamboman/mason-lspconfig.nvim',
		opts = {
			automatic_installation = true,
		},
	}
}
