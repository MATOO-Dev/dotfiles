return {
	'altermo/ultimate-autopair.nvim',
	event = {'InsertEnter', 'CmdLineEnter' },
	branch = 'v0.6',
	opts = {
		{ '$', '$', ft = { 'typst' } },
		-- { '<', '>', nft = { 'typst' } },
	}
}
