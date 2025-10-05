return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              diagnosticSeverityOverrides = { reportReturnType = "none" },
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
      ruff = {
        init_options = {
          settings = {
            lineLength = 120,
            lint = { ignore = { "E401", "E701" } },
          },
        },
      },
    },
  },
}
