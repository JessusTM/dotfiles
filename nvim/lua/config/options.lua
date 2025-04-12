vim.g.mapleader = " "

-- ENCODING
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- IDENTACIÓN
vim.opt.autoindent = true
vim.opt.smartindent = true

-- DIVISIÓN Y BARRA DE ESTADO
vim.opt.splitkeep = "cursor"
vim.opt.inccommand = "split"
vim.o.cmdheight = 1 -- Mostrar la línea de comandos de forma tradicional
vim.o.laststatus = 2 -- Statusline siempre visible
vim.o.showmode = true -- Mostrar -- INSERT -- en modo inserción
vim.o.ruler = true -- Mostrar posición del cursor (línea,columna)
vim.o.showcmd = true -- Mostrar comandos parciales abajo

vim.o.statusline = "%f %h%m%r %=%-14.(%l,%c%V%) %P %{%v:lua.StatusDiagnostics()%}"

-- PORTAPAPELES DEL SISTEMA
vim.opt.clipboard = "unnamedplus"

vim.cmd([[
  highlight StatusLineError guifg=#ff6c6b guibg=NONE gui=bold
  highlight StatusLineWarn  guifg=#ECBE7B guibg=NONE gui=bold
  highlight StatusLineInfo  guifg=#51afef guibg=NONE gui=bold
  highlight StatusLineHint  guifg=#98be65 guibg=NONE gui=bold
]])

function StatusDiagnostics()
  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  local msg = ""

  if errors > 0 then
    msg = msg .. "%#StatusLineError#" .. errors .. "%* "
  end
  if warnings > 0 then
    msg = msg .. "%#StatusLineWarn#" .. warnings .. "%* "
  end
  if info > 0 then
    msg = msg .. "%#StatusLineInfo#" .. info .. "%* "
  end
  if hints > 0 then
    msg = msg .. "%#StatusLineHint#" .. hints .. "%*"
  end

  return msg
end
