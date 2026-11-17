return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = opts.servers or {}
    opts.servers.tsserver = { enabled = true }
    opts.servers.vtsls = { enabled = false }
    opts.servers.ts_ls = { enabled = false }
  end,
}
