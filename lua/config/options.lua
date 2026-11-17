-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.timeoutlen = 300
vim.opt.swapfile = false

vim.opt.scrolloff = 5
vim.opt.jumpoptions = "stack,view"

vim.g.snacks_animate = false

-- UI config
vim.opt.termguicolors = true
-- vim.opt.showtabline = 2

-- Set ruler at line 95
vim.opt.colorcolumn = "95"

-- netrw config
vim.g.netrw_banner = 0
-- Use tree-view as the default list style
vim.g.netrw_liststyle = 3
-- Open files in the previous window (prevents opening new buffers in the explorer pane)
vim.g.netrw_browse_split = 0
-- Open the explorer on the left side of the screen
vim.g.netrw_altv = 1
-- Set fixed width for the netrw window in columns
vim.g.netrw_winsize = 25
-- Hide dotfiles by default (toggle with 'gh')
vim.g.netrw_list_hide = ""
-- wrap is ON by default (big text on small windows is better)
vim.opt.wrap = true
