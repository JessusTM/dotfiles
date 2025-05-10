return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*",
      css = { rgb_fn = true }, -- habilita funciones rgb() en CSS
      html = { names = false }, -- desactiva nombres como "red", "blue"
    }, {
      mode = "background", -- muestra los colores como texto coloreado
    })
  end,
  event = "BufReadPost", -- carga el plugin cuando abres un archivo
}
