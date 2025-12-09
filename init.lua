vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>sw", ":source<CR>", { desc = "quickly source config files" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "write file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "quit" })
