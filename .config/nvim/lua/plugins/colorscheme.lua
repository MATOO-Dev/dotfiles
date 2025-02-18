local rosepine = {
	'rose-pine/neovim',
	name = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
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

return rosepine
