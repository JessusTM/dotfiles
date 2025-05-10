return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "default", -- <- Evita que se aplique alguno
    },
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      -- Carga el esquema para treesitter, pero no aplica el fondo ni UI
      require("rose-pine").setup({
        disable_background = true,
        disable_float_background = true,
        disable_italics = true,
      })

      -- Aplica solo el resaltado de syntax treesitter
      vim.cmd("colorscheme rose-pine")
      vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
      vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
      vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE")
      vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")
    end,
  },
}
