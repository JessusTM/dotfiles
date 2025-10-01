local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "sv", ":split<Return>", opts)
keymap.set("n", "ss", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Explore
keymap.set("n", "<leader>o", vim.cmd.Ex)

-- Show Errors
keymap.set("n", "<leader>se", vim.diagnostic.open_float, { noremap = true, silent = true })

-- Copilot
keymap.set("n", "<leader>ct", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat: Toggle" })
keymap.set("n", "<leader>ca", "<cmd>CopilotAsk<cr>", { desc = "CopilotChat: Preguntar" })
keymap.set("x", "<leader>cs", ":CopilotAskVisual<cr>", { desc = "CopilotChat: Preguntar selección" })
keymap.set("n", "<leader>cl", "<cmd>CopilotChatReset<cr>", { desc = "CopilotChat: Limpiar chat" })
