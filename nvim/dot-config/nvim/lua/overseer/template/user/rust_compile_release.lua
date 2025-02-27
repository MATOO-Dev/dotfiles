return {
	name = "4) Rust: compile in release mode",
	builder = function()
		return {
			cmd = { 'cargo', 'build' },
			args = { '--release' },
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
