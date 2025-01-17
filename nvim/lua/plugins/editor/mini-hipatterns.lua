return {
  "echasnovski/mini.hipatterns",
  event = "BufReadPre", -- Carga antes de leer un buffer
  opts = {
    highlighters = {
      hsl_color = {
        pattern = "hsl%(%d+,? %d+%%,? %d+%%%)", -- Patrón que coincide con hsl(h, s%, l%)
        group = function(_, match)
          -- Extrae valores H, S, L del patrón encontrado
          local h, s, l = match:match("hsl%((%d+),? (%d+)%%,? (%d+)%%%)")
          h, s, l = tonumber(h), tonumber(s), tonumber(l)

          -- Utiliza la función personalizada para convertir HSL a Hex
          local hex_color = require("utils.hsl").hslToHex(h, s, l)

          -- Genera el grupo de resaltado dinámico usando el color Hex
          return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
        end,
      },
    },
  },
}
