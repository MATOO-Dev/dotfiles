return {
	{
		'stevearc/dressing.nvim',
		opts = {}
	},
	{
		'stevearc/overseer.nvim',
		dependencies = { 'stevearc/dressing.nvim' },
		keys = {
			{ '<leader>or', ':OverseerRun<cr>',                            desc = '[O]verseer [R]un' },
			{ '<leader>ot', ':OverseerToggle({ direction = "left" })<cr>', desc = '[O]verseer [T]oggle' }
		},
		opts = {
			dap = false,
			templates = {
				-- 'builtin',
				'user.c_compile',
				'user.c_compile_run',
				'user.c_debug',
				'user.cpp_compile',
				'user.cpp_compile_run',
				'user.cpp_debug',
				'user.rust_compile',
				'user.rust_compile_run',
				'user.rust_debug',
			},
		},
	}
}
