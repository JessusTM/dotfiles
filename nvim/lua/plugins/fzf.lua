return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Para íconos opcionales
    config = function()
      require("fzf-lua").setup({
        -- Opciones de configuración aquí
        winopts = {
          height = 0.85,
          width = 0.80,
        },
      })
    end,
  },
}
