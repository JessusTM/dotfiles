return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    use_default_keymaps = false, -- Desactiva los keymaps por defecto
    keymaps = {
      ["<C-h>"] = false, -- Desactiva específicamente <C-h>
      ["<CR>"] = "actions.select", -- Restaura la funcionalidad de Enter
      ["."] = "actions.parent", -- Retrocede al directorio padre
    },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
