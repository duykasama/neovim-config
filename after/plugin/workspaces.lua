require("workspaces").setup {
    path = vim.fn.stdpath("data") .. "/workspaces",
    cd_type = "global",
    sort = true,
    mru_sort = true,
    auto_open = true,
    notify_info = true,
    hooks = {
        add = {},
        remove = {},
        rename = {},
        open_pre = {},
        open = {
			"Telescope find_files",
			function() require("sessions").load(nil, { silent = true }) end
		},
    }
}
