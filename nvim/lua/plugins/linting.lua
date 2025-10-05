return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d --no-unused-vars" },
      typescriptreact = { "eslint_d --no-unused-vars" },
      svelte = { "eslint_d" },
      python = { "ruff" },
    }

    -- Ignora E401/E701 también cuando corre Ruff por nvim-lint
    lint.linters.ruff = lint.linters.ruff or require("lint.linters.ruff")
    lint.linters.ruff.args = {
      "check",
      "--quiet",
      "--line-length=120",
      "--ignore",
      "E401,E701",
      "--stdin-filename",
      function()
        return vim.api.nvim_buf_get_name(0)
      end,
      "-",
    }

    lint.ignore = {
      ".eslintrc.cjs",
      ".eslintrc.js",
    }

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
