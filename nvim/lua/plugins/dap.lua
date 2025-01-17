return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    dap.adapters.java = {
      type = "server",
      host = "127.0.0.1",
      port = 5005,
    }

    dap.configurations.java = {
      {
        type = "java",
        request = "launch",
        name = "Debug Java Program",
        mainClass = "${file}",
      },
    }
  end,
}
