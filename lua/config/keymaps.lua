local map = vim.keymap.set
map('n', '<leader>w', ':write<CR>')
map('n', '<leader>q', ':quit<CR>')
map('n', '<leader>o', ':Oil<CR>')

map('n', '<leader>ff', ':Pick files<CR>')
map('n', '<Leader>sg', function()
  require('mini.pick').builtin.grep_live()
end, { desc = 'Live Grep (project-wide search)' })

map('n', '<leader>cd', vim.diagnostic.open_float)
