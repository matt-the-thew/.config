return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.g.everforest_background = "hard"
      vim.g.everforest_better_performance = 1
    end,
  },
  {
    "kungfusheep/mfd.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme mfd-flir-bh")
    --
    --   vim.opt.guicursor = {
    --     "n:block-CursorNormal",
    --     "v:block-CursorVisual",
    --     "i:block-CursorInsert",
    --     "r-cr:block-CursorReplace",
    --     "c:block-CursorCommand",
    --   }

    --   require("mfd").enable_cursor_sync()
    -- end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
}
