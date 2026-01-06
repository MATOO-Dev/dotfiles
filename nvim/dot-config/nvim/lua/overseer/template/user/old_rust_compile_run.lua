return {
	name = "3) Rust: compile in debug mode & run",
	builder = function()
		return {
			cmd = { 'cargo', 'run' },
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
				{ 'open_output',        direction = 'float',     focus = true, on_start = 'always' },
			},
		}
	end,
	condition = {
		filetype = { "rust" },
	},
}
