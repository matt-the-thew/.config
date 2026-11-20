vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.timeoutlen = 300
vim.opt.swapfile = false
vim.opt.mouse = 'a' -- allow mouse

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- UI config
vim.opt.termguicolors = true
vim.opt.scrolloff = 5
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showmode = false
vim.opt.wrap = true -- wrap is ON by default (big text on small windows is better)

-- Searching 
vim.opt.incsearch = true
vim.opt.hlsearch = true 
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.jumpoptions = "stack,view"

vim.g.snacks_animate = false

-- vim.opt.showtabline = 2

-- Set ruler at line 95
vim.opt.colorcolumn = "95"

-- netrw config
vim.g.netrw_banner = 1
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
