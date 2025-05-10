local M = {}

function M.get_diagnostics_summary()
  local bufnr = vim.api.nvim_get_current_buf()
  local levels = {
    Error = vim.diagnostic.severity.ERROR,
    Warn = vim.diagnostic.severity.WARN,
    Info = vim.diagnostic.severity.INFO,
    Hint = vim.diagnostic.severity.HINT,
  }

  local counts = {}
  for name, level in pairs(levels) do
    counts[name] = #vim.diagnostic.get(bufnr, { severity = level })
  end

  local parts = {}
  if counts.Error > 0 then
    table.insert(parts, " " .. counts.Error)
  end
  if counts.Warn > 0 then
    table.insert(parts, " " .. counts.Warn)
  end
  if counts.Info > 0 then
    table.insert(parts, " " .. counts.Info)
  end
  if counts.Hint > 0 then
    table.insert(parts, " " .. counts.Hint)
  end

  return table.concat(parts, " ")
end

return M
