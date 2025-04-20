local rosepine = {
	'rose-pine/neovim',
	name = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
}

local catppuccin = {
	'catppuccin/nvim',
	name = 'catppuccin',
	config = function()
		require 'catppuccin'.setup {
			background = { dark = "mocha" },
			transparent_background = true,
		}
		vim.cmd('colorscheme catppuccin-mocha')
	end
}

local gruvbox = {
	'ellisonleao/gruvbox.nvim',
	name = 'gruvbox',
	config = function()
		vim.cmd('colorscheme gruvbox')
	end
}

local tokyonight = {
	'folke/tokyonight.nvim',
	name = 'tokyonight',
	config = function()
		vim.cmd('colorscheme tokyonight')
	end
}

return catppuccin
