return {
	name = "0) Make",
	builder = function()
		return {
			cmd = { "make" },
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
			},
		}
	end,
	condition = {
		filetype = { "c", "cpp", "glsl" },
	},
}
