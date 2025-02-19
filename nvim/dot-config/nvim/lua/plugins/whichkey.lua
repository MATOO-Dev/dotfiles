return {
	'folke/which-key.nvim',
	event = 'VeryLazy',
	keys = {
		{ 
			'<leader>?', 
			function()
				require 'whichkey'.show{ global = false }
			end,
			desc = 'Show buffer keymaps'
		},
	},
}
