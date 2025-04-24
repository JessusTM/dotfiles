return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_extend("force", opts.ensure_installed or {}, {
        "javascript",
        "typescript",
        "css",
        "gitignore",
        "graphql",
        "http",
        "json",
        "scss",
        "sql",
        "vim",
        "python",
        "java",
        "lua",
        "xml",
        "dockerfile",
        "git_config",
        "jsdoc",
        "make",
        "toml",
        "vimdoc",
      })
      opts.ignore_install = { "help" }

      opts.query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      }
    end,
  },
}
