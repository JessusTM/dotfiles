return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline",
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        lsp_doc_border = true,
      },
      routes = {
        {
          filter = {
            event = "notify",
            kind = "warn",
            find = "jdtls",
          },
          opts = { skip = true },
        },
      },
    })
  end,
}
