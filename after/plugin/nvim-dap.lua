local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = 'D:/Program Files/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
	justMyCode = false,
    program = function()
		local project_name = vim.fn.input('Project name: ')
		local debug_path = ''
		if (string.find(vim.fn.getcwd(), 'Debug')) then
			debug_path = vim.fn.getcwd() .. '\\'
		else
			debug_path = vim.fn.getcwd() .. '\\' .. project_name .. '\\bin\\Debug\\net7.0\\'
		end

		vim.cmd('chdir ' .. debug_path)
        return vim.fn.input('Path to dll: ', debug_path .. project_name .. '.dll', 'file')
    end,
	env = {
		ASPNETCORE_ENVIRONMENT = "Development",
		ASPNETCORE_URLS = function()
			local port = vim.fn.input('Port: ')
			return "https://localhost:" .. port
		end,
	},
  },
}
