return {
	'folke/trouble.nvim',
	keys = {
		{ '<leader>tr', ':Trouble diagnostics toggle<cr>', desc = "[TR]ouble diagnostics toggle" },
	},
	opts = {
		warn_no_results = false,
		open_no_results = true,
		focus = true,
	}
}
