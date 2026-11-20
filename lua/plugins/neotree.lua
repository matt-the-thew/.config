return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    opts = {
      window = {
        position = "right",
      },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {},
          never_show = {
            ".DS_Store",
          }
        }
      }
    },
    keys = {
      {"<Leader>e", "<CMD>Neotree toggle right<CR>", desc = "NeoTree"},
      {"<Leader>b", "<CMD>Neotree toggle show buffers right<CR>", desc = "NeoTree Buf View"},
      {"<Leader>g", "<CMD>Neotree toggle show git_status right<CR>", desc = "NeoTree Buf View"}
    },
    lazy = false, -- neo-tree will lazily load itself
  }
}
