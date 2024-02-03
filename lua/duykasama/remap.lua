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

vim.keymap.set("n", "<leader>O", "O<Esc>j")
vim.keymap.set("n", "<leader>o", "o<Esc>k")

vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "<", "<><Left>")
vim.keymap.set("i", "\"", "\"\"<Left>")
vim.keymap.set("i", "\'", "\'\'<Left>")

vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")

-- treesitter-context
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })
vim.keymap.set("n", "]c", function()
	require("treesitter-context").go_to_context(-vim.v.count1)
end, { silent = true })

-- workspaces
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

-- ufo
vim.keymap.set('n', '<leader>ua', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds)
vim.keymap.set('n', '<leader>fa', require('ufo').closeFoldsWith)
vim.keymap.set('n', '<leader>fo', 'za')

-- nvim-dap
vim.keymap.set("n", "<leader>dc", require("dap").continue)
vim.keymap.set("n", "<leader>dr", require("dap").repl.open)
vim.keymap.set("n", "<leader>ds", require("dap").step_over)
vim.keymap.set("n", "<leader>di", require("dap").step_into)
vim.keymap.set("n", "<leader>do", require("dap").step_out)
vim.keymap.set("n", "<leader>db", require("dap").toggle_breakpoint)
vim.keymap.set("n", "<leader>dB", require("dap").set_breakpoint)
vim.keymap.set("n", "<leader>dt", function() vim.cmd.DapTerminate() end)

-- set font
vim.keymap.set("n", "<leader>sf", function ()
	local font = vim.fn.input("Color scheme: ")
	ColorMyPencils(font)
	vim.cmd("call setenv(\"COLOR_SCHEME\", \"" .. font .. "\")")
end)
