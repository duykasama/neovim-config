vim.g.mapleader = " "
vim.keymap.set("n", "<leader>bv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- treesitter-context
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

vim.keymap.set("n", "<C-B>", "<C-V>")

-- Workspaces
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

vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {buffer = 0})

-- ufo
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith)
