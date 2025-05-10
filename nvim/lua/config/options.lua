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
vim.o.laststatus = 3 -- Barra de estado global (solo una barra abajo)
vim.opt.showmode = true
vim.opt.cmdheight = 1

-- PORTAPAPELES DEL SISTEMA
vim.opt.clipboard = "unnamedplus"

-- SOPORTE COLORES
vim.opt.termguicolors = true
