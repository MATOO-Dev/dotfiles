return {
	'folke/flash.nvim',
	event = 'VeryLazy',
	keys = {
		{
			's',
			mode = { 'n', 'x', 'o' },
			function()
				require 'flash'.jump()
			end,
			desc = 'Flash jump',
		},
		{
			'S',
			mode = { 'n', 'x', 'o' },
			function()
				require 'flash'.treesitter()
			end,
			desc = 'Flash treesitter',
		},
		{
			'r',
			mode = 'o',
			function()
				require 'flash'.remote()
			end,
			desc = 'Flash remote',
		},
		{
			'R',
			mode = { 'x', 'o' },
			function()
				require 'flash'.treesitter_search()
			end,
			desc = 'Flash treesitter remote',
		},
		{
			'<c-s>',
			mode = 'c',
			function()
				require 'flash'.toggle()
			end,
			desc = 'Flash toggle search',
		},
	},
}
