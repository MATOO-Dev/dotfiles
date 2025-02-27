return {
	name = "1) Rust: check compilation",
	builder = function()
		return {
			cmd = { 'cargo', 'check' },
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
			},
		}
	end,
	condition = {
		filetype = { "rust" },
	},
}
