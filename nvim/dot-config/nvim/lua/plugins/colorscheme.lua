local rosepine = {
	'rose-pine/neovim',
	name = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine-moon')
	end
}

local catppuccin = {
	'catppuccin/nvim',
	name = 'catppuccin',
	config = function()
		require 'catppuccin'.setup {
			background = { dark = "macchiato" },
			transparent_background = true,
		}
		vim.cmd('colorscheme catppuccin-macchiato')
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

local onedark = {
	'navarasu/onedark.nvim',
	name = 'onedark',
	config = function()
		vim.cmd('colorscheme onedark-cool')
	end
}

local monokai = {
	'loctvl842/monokai-pro.nvim',
	name = 'monokai',
	config = function ()
		vim.cmd('colorscheme monokai-pro')
	end
}

return catppuccin
