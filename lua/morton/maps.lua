vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = function(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true })
end

-- Save
map("n", "<leader>w", "<CMD>update<CR>")

-- Quit
map("n", "<leader>q", "<CMD>q<CR>")
map("n", "<leader>qq", "<CMD>qa<CR>")

-- Exit insert mode
map("i", "jk", "<ESC>")

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>r", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

--fzf-lua
map("n", "<leader>ff", "<cmd>FzfLua files<cr>")
map("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>")

-- Diagnostics
map("n", "<leader>d", vim.diagnostic.open_float)
