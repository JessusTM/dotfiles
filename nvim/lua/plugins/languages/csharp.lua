return {
  "iabdelkareem/csharp.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "Tastyep/structlog.nvim",
  },
  config = function()
    require("mason").setup()
    require("csharp").setup()
  end,
}
