require("config.lazy")

if vim.fn.argc() == 0 then
  vim.defer_fn(function()
    if vim.bo.filetype ~= "lazy" then
      require("oil").open(vim.fn.getcwd())
    end
  end, 0)
end

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    source = "if_many",
    format = function(diagnostic)
      local message = diagnostic.message
      if #message > 50 then
        return message:sub(1, 47) .. ".."
      end
      return message
    end,
  },
  signs = true,
  underline = true,
  severity_sort = true,
  update_in_insert = false,
})

vim.g.snacks_animate = true

vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "ℹ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "⚑", texthl = "DiagnosticSignHint" })
