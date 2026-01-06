return {
	name = 'cpp_compile_with_debug',
	desc = 'C++: compile with debug flags (clang)',
	builder = function ()
		local file = vim.fn.expand '%:p'
		local parent_dir = vim.fn.expand '%:p:h'
		return {
			cmd = 'clang++',
			args = { '-g', file, '-o', parent_dir .. '/a.out' },
			components = {
				{ 'on_exit_set_status', success_codes = { 0 } },
				{ 'on_output_quickfix', open_on_exit = 'failure' }
			}
		}
	end,
	condition = {
		filetype = 'cpp'
	},
}
