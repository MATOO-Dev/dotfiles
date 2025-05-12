return {
	'm4xshen/hardtime.nvim',
	dependencies = {
		'muniftanjim/nui.nvim',
	},
	opts = {
		enabled = true,
		disable_mouse = true,
		-- re-enable up/down, so mouse scrolling can be used
		disabled_keys = {
			["<Up>"] = {},
			["<Down>"] = {},
		},
	},
}
