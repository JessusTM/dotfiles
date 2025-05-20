local M = {}

function M.StatusDiagnostics()
  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  local msg = ""
  if errors > 0 then
    msg = msg .. "%#StatusLineError# " .. errors .. "%* "
  end
  if warnings > 0 then
    msg = msg .. "%#StatusLineWarn# " .. warnings .. "%* "
  end
  if info > 0 then
    msg = msg .. "%#StatusLineInfo# " .. info .. "%* "
  end
  if hints > 0 then
    msg = msg .. "%#StatusLineHint# " .. hints .. "%*"
  end
  return msg
end

function M.setup()
  vim.cmd([[
    highlight StatusLineError guifg=#ff6c6b guibg=NONE gui=bold
    highlight StatusLineWarn  guifg=#ECBE7B guibg=NONE gui=bold
    highlight StatusLineInfo  guifg=#51afef guibg=NONE gui=bold
    highlight StatusLineHint  guifg=#98be65 guibg=NONE gui=bold
  ]])

  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("hi StatusLine guifg=#e0def4 guibg=#2a273f")
      vim.cmd("hi StatusLineNC guifg=#6e6a86 guibg=#2a273f")
    end,
  })

  vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
      vim.cmd("redrawstatus")
    end,
  })

  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client then
        vim.defer_fn(function()
          vim.cmd("redrawstatus")
        end, 100)
      end
    end,
  })

  vim.o.statusline = table.concat({
    "%f", -- nombre de archivo
    " %m",
    " %= ",
    "%{%v:lua.require'config.statusline'.StatusDiagnostics()%}",
    " %= ",
    "%l:%c",
  })
end

return M
