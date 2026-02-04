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
          git_signs = false,
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
            jump = {
              close = true,
            },
            layout = {
              preset = "default",
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
        enabled = true,
        preset = {
          header = {
            [[
                                                                       
                                                 ,,                    
`7MMM.     ,MMF'         mm     mm `7MMF'   `7MF'db                    
  MMMb    dPMM           MM     MM   `MA     ,V                        
  M YM   ,M MM   ,6"Yb.mmMMmm mmMMmm  VM:   ,V `7MM  `7MMpMMMb.pMMMb.  
  M  Mb  M' MM  8)   MM  MM     MM     MM.  M'   MM    MM    MM    MM  
  M  YM.P'  MM   ,pm9MM  MM     MM     `MM A'    MM    MM    MM    MM  
  M  `YM'   MM  8M   MM  MM     MM      :MM;     MM    MM    MM    MM  
.JML. `'  .JMML.`Moo9^Yo.`Mbmo  `Mbmo    VF    .JMML..JMML  JMML  JMML.
                                                                       
                                                                       
]],
          },
        },
      },
    },
  },
}
