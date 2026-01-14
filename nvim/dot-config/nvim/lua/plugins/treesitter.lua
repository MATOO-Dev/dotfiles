return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
		ensure_installed = {
			'bash',
			'c',
			'cpp',
			'gdscript',
			'gdshader',
			'godot_resource',
			'lua',
			'luadoc',
			'markdown',
			'markdown_inline',
			'rust',
			'vim',
			'vimdoc',
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	},
}
