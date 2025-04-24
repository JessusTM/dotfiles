return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      globalstatus = true,
      theme = {
        normal = {
          a = { bg = "#5e5c70", gui = "bold" },
          b = { bg = "#353351" },
          c = { bg = "#26233a" },
          z = { bg = "#5e5c70" },
        },
        insert = {
          a = { fg = "#191724", bg = "#9ccfd8", gui = "bold" },
          b = { bg = "#353351" },
          c = { bg = "#26233a" },
          z = { bg = "#5e5c70" },
        },
        visual = {
          a = { fg = "#191724", bg = "#c4a7e7", gui = "bold" },
          b = { bg = "#353351" },
          c = { bg = "#26233a" },
          z = { bg = "#5e5c70" },
        },
        replace = {
          a = { fg = "#191724", bg = "#f6c177", gui = "bold" },
          b = { bg = "#353351" },
          c = { bg = "#26233a" },
          z = { bg = "#5e5c70" },
        },
        inactive = {
          a = { fg = "#908caa", bg = "#26233a", gui = "bold" },
          b = { bg = "#26233a" },
          c = { bg = "#26233a" },
          z = { bg = "#5e5c70" },
        },
      },
    },
    sections = {
      lualine_a = {
        { "mode", icon = "" },
      },
      lualine_b = {
        { "branch", icon = "" },
        { "diff", symbols = { added = "+", modified = "~", removed = "-" } },
        {
          "diagnostics",
          sources = { "nvim_lsp" },
          symbols = { error = " ", warn = " ", info = " ", hint = " " },
        },
      },
      lualine_c = {
        {
          "filename",
          path = 3,
        },
      },

      lualine_x = {
        {
          "filetype",
        },
      },
      lualine_y = {
        {
          "progress",
        },
      },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          path = 3,
        },
      },

      lualine_x = {
        { "filetype" },
      },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
