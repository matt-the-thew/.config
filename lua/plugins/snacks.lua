return {
  {
    "folke/snacks.nvim",
    opts = {
      styles = {
        transparent = false,
      },
      zen = {
        toggles = {
          dim = false,
          git_signs = true,
          diagnostics = true,
          line_number = true,
          relative_number = true,
        },
        win = {
          backdrop = { transparent = false },
        },
        show = {
          statusline = true,
          tabline = true,
        },
      },
      picker = {
        sources = {
          explorer = {
            auto_open = false,
            layout = {
              preset = "sidebar",
              layout = {
                position = "left",
              },
            },
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
      dashboard = {
        width = 40,
        enabled = true,
        preset = {
          header = [[
          Study hard what interests you the most in the most undisciplined, 
          irreverent and original manner possible.
                                                  -R. Feynman
slow is fast 
kr was here]],
          sections = {
            { section = "header", padding = 2 },
            { section = "keys", gap = 1, padding = 2 },
            { section = "recent_files", padding = 2 },
            { section = "startup" },
          },
          keys = {
            { icon = "F ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "N ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = "G ", key = "g", desc = "Grep Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "R ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "L ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = "Q ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
