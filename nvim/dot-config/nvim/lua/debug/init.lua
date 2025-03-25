return {
	{
		'mfussenegger/nvim-dap',
		keys = {
			{ '<f5>',      ':DapContinue<cr>',         desc = 'Debug: continue' },
			{ '<s-f5>',    ':DapStop<cr>',             desc = 'Debug: stop' },
			{ '<c-s-f5>',  ':DapRestart<cr>',          desc = 'Debug: restart' },
			{ '<f10>',     ':DapStepOver<cr>',         desc = 'Debug: step over' },
			{ '<f11>',     ':DapStepInto<cr>',         desc = 'Debug: step into' },
			{ '<s-f11>',   ':DapStepOut<cr>',          desc = 'Debug: step out' },
			{ '<leader>b', ':DapToggleBreakpoint<cr>', desc = 'Toggle breakpoint' },
		},
		config = function()
			local dap = require("dap")
			dap.adapters.godot = {
				type = 'server',
				host = '127.0.0.1',
				port = 6006
			}
			dap.configurations.gdscript = {
				{
					type = 'godot',
					request = 'launch',
					name = 'Launch godot scene',
					project = '${workspaceFolder}',
					launch_scene = true,
				}
			}
		end
	},
	{
		'rcarriga/nvim-dap-ui',
		dependencies = { 'mfussenegger/nvim-dap' },
		keys = {
			{ '<f7>', ':DapUiToggle<cr>', desc = 'Debug: toggle ui' },
		}
	}
}
