require("toggleterm").setup{
	size = 40,
	open_mapping = "<C-\\>",
	hide_numbers = true,
	shade_filetypes = {},
	autochdir = true,
	highlights = {
		Normal = {
			guibg = '',
		},
		NormalFloat = {
			link = 'Normal'
		},
		FloatBorder = {
			guifg = '',
			guibg = '',
		},
	},
	shade_terminals = true,
	shading_factor = 10,
	start_in_insert = true,
	insert_mappings = true,
	terminal_mappings = true,
	persist_size = true,
	persist_mode = true,
	direction = 'float',
	-- direction = 'vertical' | 'horizontal' | 'tab' | 'float',
	close_on_exit = true,
	shell = vim.o.shell,
	auto_scroll = true,
	float_opts = {
		border = 'double',
		-- border = 'single' | 'double' | 'shadow' | 'curved',
		width = 150,
		height = 40,
		winblend = 3,
		zindex = 10,
	},
	winbar = {
		enabled = false,
		name_formatter = function(term)
			return term.name
		end
	},
}
