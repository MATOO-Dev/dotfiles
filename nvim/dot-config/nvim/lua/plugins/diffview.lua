return {
	'sindrets/diffview.nvim',
	keys = {
		{
			'<leader>do',
			mode = 'n',
			function()
				if require 'diffview.lib'.get_current_view() then
					vim.cmd.DiffviewClose()
				else
					vim.cmd.DiffviewOpen()
				end
			end,
			desc = 'Toggle diff view'
		},
		{
			'<leader>du',
			mode = 'n',
			function() vim.cmd.DiffviewRefresh() end,
			desc = 'Update diff view'
		},
		{
			'<leader>dy',
			mode = 'n',
			function() vim.cmd.DiffviewToggleFiles() end,
			desc = 'Toggle diff file list'
		},
		{
			'<leader>dh',
			mode = 'n',
			function() vim.cmd.DiffviewFileHistory() end,
			desc = 'Open file history diff'
		}
	},
	opts = {
		view = {
			merge_tool = {
				layout = "diff3_mixed"
			}
		}
	}
}
