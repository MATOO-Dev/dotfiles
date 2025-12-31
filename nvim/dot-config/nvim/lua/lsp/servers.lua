return {
	clangd = {
		cmd = {
			'clangd',
			'--completion-style=detailed',
			'--function-arg-placeholders',
		},
	},

	lua_ls = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { 'vim', 'nixCats' },
				},
			},
		}
	},

	csharp_ls = {},

	rust_analyzer = {
		diagnostics = {
			enable = true,
			experimental = { enable = false },
		},
	},

	texlab = {},

	tinymist = {},

	nil_ls = {},
}
