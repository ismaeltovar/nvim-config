vim.g.mapleader = " "

--file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--tabs
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>tr", vim.cmd.tabn)
vim.keymap.set("n", "<leader>tl", vim.cmd.tabp)
vim.keymap.set("n", "<leader>tcc", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tco", vim.cmd.tabonly)

