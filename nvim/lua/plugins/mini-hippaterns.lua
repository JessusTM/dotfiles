return {
  "nvim-mini/mini.hipatterns",
  event = "BufReadPre",
  opts = function()
    local hip = require("mini.hipatterns")
    return {
      highlighters = {
        hsl_color = {
          pattern = "hsl%(%d+,%s*%d+%%%s*,%s*%d+%%%)",
          group = function(_, match)
            local h, s, l = match:match("hsl%((%d+),%s*(%d+)%%,%s*(%d+)%%%)")
            h, s, l = tonumber(h), tonumber(s), tonumber(l)
            local hex_color = require("utils.hsl").hslToHex(h, s, l)
            return hip.compute_hex_color_group(hex_color, "bg")
          end,
        },
      },
    }
  end,
}
