require('notify').setup({
	-- Animation style (see below for details)
	stages = "fade_in_slide_out",

	-- Default timeout for notifications
	timeout = 100,

	-- For stages that change opacity this is treated as the highlight behind the window
	background_colour = "#000000",

	-- Icons for the different levels
	icons = {
		ERROR = "",
		WARN = "",
		INFO = "",
		DEBUG = "",
		TRACE = "✎",
	},

	-- Which level of logs should be reported
	sev_threshold = "INFO",

	-- Default windows options passed to nvim_open_win
	win_opts = {
		wrap = false,
		border = "single",
		-- style = "minimal",
		relative = "cursor",
		width = 40,
		height = 1,
		row = 0,
		col = 0,
		focusable = false,
		anchor = "SW",
	},
})
