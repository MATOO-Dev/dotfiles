return {
	'wintermute-cell/gitignore.nvim',
	dependencies = { 'nvim-telescope/telescope.nvim' },
	keys = {
		{ '<leader>gi', ':Gitignore<cr>', desc = 'Generate [G]it[I]gnore' },
	},
	config = function()
		require 'gitignore'
	end
}
