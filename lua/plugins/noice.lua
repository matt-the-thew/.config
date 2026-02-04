return {
  {
    "folke/noice.nvim",
    opts = {
      -- Other noice options...
      cmdline = {
        enabled = true, -- Disables the Noice cmdline UI
        view = "cmdline",
      },
      -- This might disable all noice popups, not just the cmdline,
      -- so use with caution if you want other notifications.
      -- popmenu = { enabled = false },
    },
  },
}
