local M = {}

function M.apply()
  -- Transparencia
  vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
  vim.cmd("hi NormalFloat guibg=NONE ctermbg=NONE")
  vim.cmd("hi EndOfBuffer guibg=NONE ctermbg=NONE")

  -- Rose Pine + Treesitter
  local highlights = {
    ["@keyword"] = { fg = "#eb6f92", italic = true },
    ["TSKeyword"] = { fg = "#eb6f92", italic = true },
    ["@function"] = { fg = "#c4a7e7", bold = true },
    ["TSFunction"] = { fg = "#c4a7e7", bold = true },
    ["@variable"] = { fg = "#e0def4" },
    ["TSVariable"] = { fg = "#e0def4" },
    ["@comment"] = { fg = "#6e6a86", italic = true },
    ["TSComment"] = { fg = "#6e6a86", italic = true },
    ["@string"] = { fg = "#ebbcba" },
    ["@number"] = { fg = "#f6c177" },
  }

  for group, style in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, style)
  end
end

return M
