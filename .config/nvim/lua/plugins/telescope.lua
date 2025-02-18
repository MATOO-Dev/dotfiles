return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{
			'<leader>ff',
			function()
				require 'telescope.builtin'.find_files()
			end,
			desc = 'Telescope [F]ind [F]iles'
		}
	},
	config = function()
		require 'telescope'.setup()
	end,
}
