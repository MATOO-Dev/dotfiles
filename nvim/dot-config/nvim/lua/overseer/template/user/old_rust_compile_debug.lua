return {
	name = "2) Rust: compile in debug mode",
	builder = function()
		return {
			cmd = { 'cargo', 'build' },
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
