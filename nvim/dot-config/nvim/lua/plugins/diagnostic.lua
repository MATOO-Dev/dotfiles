-- toggle between inline and expanded diagnostics
vim.keymap.set("n", "<leader>ti", function() require("tiny-inline-diagnostic").toggle() vim.diagnostic.config({ virtual_lines = not vim.diagnostic.config().virtual_lines }) end, { desc = "Toggle diagnostic lines" })

return {
	'rachartier/tiny-inline-diagnostic.nvim',
	lazy = false,
	config = function()
		require('tiny-inline-diagnostic').setup {
			preset = 'powerline',
			options = {
				enable_on_insert = true,
				enable_on_select = true,
				show_source = false,
				multilines = {
					enabled = true,
					always_show = true,
				},
			}
		}

		-- disable regular inline diagnostics
		vim.diagnostic.config({
			update_in_insert = true,
			severity_sort = true,
			virtual_lines = false,
			virtual_text = false,
			underline = true,
			signs = false,
		})
	end
}
