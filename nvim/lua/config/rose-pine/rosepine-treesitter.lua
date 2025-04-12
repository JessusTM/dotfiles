local rose_pine = require("rose-pine.palette")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "@function", { fg = rose_pine.foam })
    vim.api.nvim_set_hl(0, "@keyword", { fg = rose_pine.pine })
    vim.api.nvim_set_hl(0, "@variable", { fg = rose_pine.text })
    vim.api.nvim_set_hl(0, "@type", { fg = rose_pine.iris })
    vim.api.nvim_set_hl(0, "@parameter", { fg = rose_pine.rose })
    vim.api.nvim_set_hl(0, "@property", { fg = rose_pine.gold })
    vim.api.nvim_set_hl(0, "@comment", { fg = rose_pine.muted, italic = true })
    vim.api.nvim_set_hl(0, "@constant", { fg = rose_pine.love })
    vim.api.nvim_set_hl(0, "@string", { fg = rose_pine.gold })
    vim.api.nvim_set_hl(0, "@number", { fg = rose_pine.foam })
    vim.api.nvim_set_hl(0, "@boolean", { fg = rose_pine.pine })
    vim.api.nvim_set_hl(0, "@operator", { fg = rose_pine.subtle })
    vim.api.nvim_set_hl(0, "@punctuation", { fg = rose_pine.subtle })
  end,
})
