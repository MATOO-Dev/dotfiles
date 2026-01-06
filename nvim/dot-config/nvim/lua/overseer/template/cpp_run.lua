return {
	name = 'cpp_run',
	desc = 'C++: run current file',
	builder = function ()
		local binary = vim.fn.expand('%:p:h') .. '/a.out'
		return {
			cmd = binary,
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
				{
					'dependencies',
					task_names = { 'cpp_compile' },
					sequential = true,
				},
			},
		}
	end,
	condition = {
		filetype = { "cpp" },
	},
}
