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
		}
	},
	{
		'zapling/mason-conform.nvim',
		opts = {},
	}
}
