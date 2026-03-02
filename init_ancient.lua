--Hello world,
--It's Morton.
local o = vim.opt
--dark mode
o.background = "dark"
--relative numbers
o.number = true
o.relativenumber = true
o.wrap = false
--tab handling
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true

o.swapfile = false
o.winborder = "rounded"
o.clipboard = "unnamedplus"
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.pack.add({
    { src = "https://github.com/neanias/everforest-nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/chomosuke/typst-preview.nvim" },
    { src = "https://github.com/chentoast/marks.nvim" },
    { src = "https://github.com/sphamba/smear-cursor.nvim" },
})
require "mini.pick".setup()
require "oil".setup()
require 'marks'.setup {
    default_mappings = true,
    builtin_marks = { ".", "<", ">", "^" },
    cyclic = true,
}
require("smear_cursor").setup({
    stiffness = 0.8,
    trailing_stiffness = 0.5,
    distance_stop_animating = 0.5,
})

vim.keymap.set('n', '<leader><leader>', ":Pick files<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>o', ":Oil<CR>")
vim.lsp.enable({ "lua_ls", "rust-analyzer", "clangd" })

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                buffer = args.buf,
                callback = function()
                    -- Use async = false for synchronous formatting on save
                    vim.lsp.buf.format({ async = false, id = client.id })
                end
            })
        end
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "lua", "javascript", "typescript", "c", "cpp", "rust" },
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "python" },
    callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
    end,
})

vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float)

--Colorscheme
vim.g.everforest_background = "hard"
vim.g.everforest_better_performance = 1
vim.g.everforest_enable_italic = 1
vim.cmd("colorscheme everforest")
