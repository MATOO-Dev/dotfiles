return {
	'stevearc/oil.nvim',
	dependencies = {
		{ 'nvim-tree/nvim-web-devicons' },
	},
	lazy = false,
	keys = {
		{
			'<leader>ol',
			function()
				require 'oil'.open()
			end,
			desc = '[O]i[l]'
		}
	},
	opts = {
		default_file_explorer = true,
		view_options = { show_hidden = true },
		columns = { 'icon' },
		use_default_keymaps = true,
		keymaps = {
			['<bs>'] = 'actions.parent',
		},
	},
}
