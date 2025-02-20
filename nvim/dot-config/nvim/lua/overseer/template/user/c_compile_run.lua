return {
	name = "C: compile & run",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			name = "C: compile & run",
			strategy = {
				"orchestrator",
				tasks = {
					{
						cmd = { "gcc" },
						args = { file },
						components = {
							{ "on_exit_set_status", success_codes = { 0 } },
							{ "on_output_quickfix", open_on_exit = "failure" },
						},
					},
					{
						cmd = { "./a.out" },
						components = {
							{ "on_exit_set_status", success_codes = { 0 } },
							{ "open_output", direction = "float", focus = true, on_start = "always" },
						},
					},
				},
			},
		}
	end,
	condition = {
		filetype = { "c" },
	},
}
