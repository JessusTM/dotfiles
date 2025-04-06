vim.g.mapleader = " "

vim.opt.termguicolors = true
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.g.snacks_animate = true -- Desactivar animaciones.

vim.opt.autoindent = true -- Identación automática en nuevas líneas. Al presionar ENTER la nueva línea mantiene la misma sangría que la anterior.
vim.opt.smartindent = true -- Detecta estructuras como {} y añade identación automáticamente.

vim.opt.scrolloff = 10 -- Número de líneas visibiles por encima y debajo del cursor.
vim.opt.inccommand = "split"
vim.opt.ignorecase = true -- Búsqueda insensible a mayúsculas y minúsculas.
vim.opt.splitkeep = "cursor" -- Controla cómo se ajusta la pantalla al dividir ventanas - Cursor mantiene el cursor en la misma posición visual tras un split
vim.g.snacks_dashboard = false -- Desactivar dashboard de LazyVim.

vim.opt.clipboard = "unnamedplus" -- Copiar en NVIM y pegar en otra aplicación.
