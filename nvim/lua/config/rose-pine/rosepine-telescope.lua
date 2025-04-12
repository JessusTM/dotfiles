local rose_pine = require("rose-pine.palette")

vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopeLoaded",
  callback = function()
    -- Bordes y fondo
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = rose_pine.highlight_med, bg = rose_pine.base })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = rose_pine.text, bg = rose_pine.base })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = rose_pine.surface, bg = rose_pine.surface })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = rose_pine.text, bg = rose_pine.surface })
    vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = rose_pine.love, bg = rose_pine.surface })
    vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = rose_pine.love, bg = "none" })

    -- Selección y cursor
    vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = rose_pine.text, bg = rose_pine.highlight_med })
    vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = rose_pine.rose, bg = rose_pine.highlight_med })

    -- Preview
    vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = rose_pine.highlight_med, bg = rose_pine.base })
    vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = rose_pine.iris, bg = "none" })

    -- Results
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = rose_pine.subtle, bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = rose_pine.highlight_med, bg = rose_pine.base })
  end,
})
