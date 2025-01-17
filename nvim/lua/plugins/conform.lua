return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
    }
  end,
}
