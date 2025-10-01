return {
  { "github/copilot.vim" },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      local select = require("CopilotChat.select")
      return {
        question_header = "## Question",
        answer_header = "## Copilot",
        error_header = "## Error",
        auto_follow_cursor = false,
        show_help = false,
        selection = select.buffer, -- por defecto, usa el buffer entero
        prompts = nil, -- sin prompts predefinidos (más simple)
      }
    end,
    config = function(_, opts)
      local chat = require("CopilotChat")
      local select = require("CopilotChat.select")

      chat.setup(opts)

      -- Buffer del chat más cómodo de leer
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "copilot-chat",
        callback = function()
          vim.opt_local.number = true
          vim.opt_local.relativenumber = true
          vim.bo.filetype = "markdown"
        end,
      })

      -- Comandos para que los mapees en keymap.lua
      -- Pregunta libre (usa todo el buffer actual)
      vim.api.nvim_create_user_command("CopilotAsk", function()
        local q = vim.fn.input("Pregunta: ")
        if q ~= "" then
          chat.ask(q, { selection = select.buffer })
        end
      end, {})

      -- Pregunta sobre la SELECCIÓN visual
      vim.api.nvim_create_user_command("CopilotAskVisual", function(args)
        chat.ask(args.args ~= "" and args.args or "Explain/Review this selection", {
          selection = select.visual,
        })
      end, { nargs = "?", range = true })
    end,
    event = "VeryLazy",
  },
}
