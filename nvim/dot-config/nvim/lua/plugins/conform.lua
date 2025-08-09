return {
	{
		'stevearc/conform.nvim',
		opts = {
			format_on_save = {
				timeout_ms = 500,
				-- lsp_format = 'fallback',
			},
			formatters_by_ft = {
				cpp = { 'clang-format' },
				rust = { 'rustfmt' },
				gdscript = { 'gdformat' },
				typescript = { 'deno_fmt' },
				nix = { 'nixfmt' },
				conform = {},
			},
			formatters = {
				['clang-format'] = {
					command = 'clang-format',
					prepend_args = { '-style={ColumnLimit: 0, IndentWidth: 4, TabWidth: 4}' }
				},
			},
		}
	},
	{
		'zapling/mason-conform.nvim',
		opts = {},
	}
}
