return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  requires = { "nvim-tree/nvim-web-devicons", opt = true },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
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
          symbols = { error = " ", warn = " ", info = " ", hint = " " },
        },
      },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" }, -- Added encoding
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {
        { "filename" },
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
