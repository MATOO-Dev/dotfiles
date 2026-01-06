return {
	name = 'cpp_debug',
	desc = 'C++: debug current file',
	builder = function ()
		local dap = require 'dap'
		return {
			cmd = { dap.run(dap.configurations.cpp[1], { new = true }) },
			components = {
				{ "on_exit_set_status", success_codes = { 0 } },
				{ "on_output_quickfix", open_on_exit = "failure" },
				{
					'dependencies',
					task_names = { 'cpp_compile_with_debug' },
					sequential = true,
				},
			},
		}
	end,
	condition = {
		filetype = { "cpp" },
	},
}
