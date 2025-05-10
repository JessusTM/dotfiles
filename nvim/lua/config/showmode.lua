local M = {}

local mode_colors = {
  n = "#9ccfd8", -- normal → foam
  i = "#9ccfd8", -- insert → rose
  v = "#c4a7e7", -- visual → iris
  V = "#c4a7e7", -- visual line
  [""] = "#c4a7e7", -- visual block
  R = "#f6c177", -- replace → gold
  c = "#31748f", -- command → pine
}

local function update_mode_color()
  local mode = vim.fn.mode()
  local color = mode_colors[mode] or "#e0def4"
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = color, bg = "NONE", bold = true })
end

function M.setup()
  vim.api.nvim_create_autocmd({ "ModeChanged", "VimEnter", "InsertCharPre" }, {
    callback = update_mode_color,
  })
end

return M
