function ColorMyPencils(color)

	if color == nil or color  == "" then
		color = "nightfox"
	end
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

local current_color = os.getenv("COLOR_SCHEME")
ColorMyPencils(current_color)
