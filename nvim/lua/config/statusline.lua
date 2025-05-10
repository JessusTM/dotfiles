local M = {}
local diag = require("config.statusline-diagnostics")

function M.setup()
  -- Colores de la statusline
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("hi StatusLine guifg=#e0def4 guibg=#2a273f")
      vim.cmd("hi StatusLineNC guifg=#6e6a86 guibg=#2a273f")
    end,
  })

  -- Redibujar cuando cambien los diagnósticos
  vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
      vim.cmd("redrawstatus")
    end,
  })

  -- Redibujar cuando el LSP termina de analizar el buffer
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      -- Solo para el buffer actual
      local client_id = args.data.client_id
      local client = vim.lsp.get_client_by_id(client_id)
      if client then
        -- Espera breve y luego fuerza un redibujado
        vim.defer_fn(function()
          vim.cmd("redrawstatus")
        end, 100) -- espera 100ms para dar tiempo a que aparezcan diagnósticos
      end
    end,
  })
end

vim.o.statusline = table.concat({
  "%f",
  " %m",
  " %= ",
  "%{%v:lua.require'config.statusline-diagnostics'.get_diagnostics_summary()%}",
  " %= ",
  "%l:%c",
})

return M
