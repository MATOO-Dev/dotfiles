return {
	generator = function ()
		-- search upwards from the current file for a Sconstruct file
		-- if none was found, dont show this template
		local project_root = vim.fs.root(0, 'SConstruct')
		if project_root == nil then
			return 'No Sconstruct file found'
		end

		local template =  {
			name = 'scons_compile',
			desc = 'Scons: compile for linux',
			builder = function ()
				return {
					cmd = 'scons',
					-- cwd = project_root,
					cwd = project_root,
					args = { 'platform=linux', 'compiledb=yes', 'arch=x86_64' },
					components = {
						{ 'on_exit_set_status', success_codes = { 0 } },
						{ 'on_output_quickfix', open_on_exit = 'failure' }
					}
				}
			end,
		}

		return { template }
	end,

	condition = {
		filetype = 'cpp',
	},
}
