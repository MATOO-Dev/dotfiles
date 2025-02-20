return {
	{
		'mfussenegger/nvim-dap',
		keys = {
			{ '<f5>', ':DapContinue<cr>', desc = 'Debug: continue' },
			{ '<s-f5>', ':DapStop<cr>', desc = 'Debug: stop' },
			{ '<c-s-f5>', ':DapRestart<cr>', desc = 'Debug: restart' },
			{ '<f10>', ':DapStepOver<cr>', desc = 'Debug: step over' },
			{ '<f11>', ':DapStepInto<cr>', desc = 'Debug: step into' },
			{ '<s-f11>', ':DapStepOut<cr>', desc = 'Debug: step out' },
			{ '<leader>b', ':DapToggleBreakpoint<cr>', desc = 'Toggle breakpoint' },
		}
	},
	{
		'rcarriga/nvim-dap-ui',
		dependencies = { 'mfussenegger/nvim-dap' },
		keys = {
			{ '<f7>', ':DapUiToggle<cr>', desc = 'Debug: toggle ui' },
		}

	}
}
