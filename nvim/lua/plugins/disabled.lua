return {
  {
    "folke/noice.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      explorer = {
        replace_netrw = false, -- no reemplace netrw al iniciar con un directorio
        enabled = false, -- desactiva el explorador completamente
      },
      picker = { enabled = false },
    },
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
}
