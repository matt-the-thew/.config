return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      sections = { lualine_z = {
        function()
          return " " .. os.date("%I:%M%p")
        end,
      } },
    },
  },
}
