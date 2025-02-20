return {
	name = "C: compile & debug flags",
	builder = function()
		local file = vim.fn.expand("%:p")
		return {
			cmd = { "gcc" },
			args = { file, "-g" },
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
			},
		}
	end,
	condition = {
		filetype = { "c" },
	},
}
