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
			-- function() require("sessions").load(nil, { silent = true }) end
		},
    }
}

vim.keymap.set("n", "<leader>wo", function ()
	require("workspaces").open(vim.fn.input("Open workspace: "))
end)

vim.keymap.set("n", "<leader>wl", function ()
	require("workspaces").list()
end)

vim.keymap.set("n", "<leader>wa", function ()
	require("workspaces").add(vim.fn.input("Add workspace: "))
end)

vim.keymap.set("n", "<leader>wr", function ()
	require("workspaces").remove(vim.fn.input("Remove workspace: "))
end)
