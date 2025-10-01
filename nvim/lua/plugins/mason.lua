return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "ts_ls",
      "pyright",
      "jdtls",
      "html",
      "cssls",
      "clangd",
      "dockerls",
      "docker_compose_language_service",
      "intelephense",
      "sqlls",
    },
  },
}
