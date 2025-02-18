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
					globals = { 'vim' },
				},
			},
		}
	},

	csharp_ls = {},

	rust_analyzer = {},

	texlab = {},

	tinymist = {},
}
