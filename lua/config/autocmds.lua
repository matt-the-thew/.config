--- Auto Commands and function configuration
--- Last modified by Matthew Morton Nov 2026


-- LSP progress, from :h lsp
vim.api.nvim_create_autocmd('LspProgress', { buffer = buf, callback = function(ev)
    local value = ev.data.params.value
    vim.api.nvim_echo({ { value.message or 'done' } }, false, {
      id = 'lsp.' .. ev.data.params.token,
      kind = 'progress',
      source = 'vim.lsp',
      title = value.title,
      status = value.kind ~= 'end' and 'running' or 'success',
      percent = value.percentage,
    })
  end,
})



-- Diagnostics (Inline)
--

vim.diagnostic.config({
  virtual_text = {
    spacing = 2,
    prefix = "●" -- could be "■", "▎", ""
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Omni complete
--

vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  end
  return "<C-x><C-o>"
end, { expr = true})

vim.keymap.set("i", "<S-Tab>", function()
  if vim.fn.pumvisible() == 0 then
    return "<C-p>"
  end
  return "<S-Tab>"
end, {expr = true})
