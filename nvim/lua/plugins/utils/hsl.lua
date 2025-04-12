local M = {}

function M.hex_to_rgb(hex)
  if not hex or #hex ~= 7 or hex:sub(1, 1) ~= "#" then
    error("Formato hexadecimal inválido. Debe ser del tipo #RRGGBB.")
  end

  hex = string.lower(hex)
  local ret = {}
  for i = 0, 2 do
    local byte = tonumber(hex:sub(i * 2 + 2, i * 2 + 3), 16)
    if not byte then
      error("Carácter hexadecimal inválido.")
    end
    ret[i + 1] = byte / 255.0
  end
  return ret
end

function M.rgbToHsl(r, g, b)
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local h, s, l = 0, 0, (max + min) / 2

  if max ~= min then
    local d = max - min
    s = (l > 0.5) and (d / (2 - max - min)) or (d / (max + min))
    if max == r then
      h = ((g - b) / d) % 6
    elseif max == g then
      h = (b - r) / d + 2
    else
      h = (r - g) / d + 4
    end
    h = h / 6
  end

  return h * 360, s * 100, l * 100
end

local function hue2rgb(p, q, t)
  if t < 0 then
    t = t + 1
  end
  if t > 1 then
    t = t - 1
  end
  if t < 1 / 6 then
    return p + (q - p) * 6 * t
  end
  if t < 1 / 2 then
    return q
  end
  if t < 2 / 3 then
    return p + (q - p) * (2 / 3 - t) * 6
  end
  return p
end

function M.hslToRgb(h, s, l)
  if s == 0 then
    return l * 255, l * 255, l * 255
  end

  local q = (l < 0.5) and (l * (1 + s)) or (l + s - l * s)
  local p = 2 * l - q
  local r = hue2rgb(p, q, h + 1 / 3)
  local g = hue2rgb(p, q, h)
  local b = hue2rgb(p, q, h - 1 / 3)

  return r * 255, g * 255, b * 255
end

function M.hexToHSL(hex)
  local rgb = M.hex_to_rgb(hex)
  local h, s, l = M.rgbToHsl(rgb[1], rgb[2], rgb[3])

  return string.format("hsl(%d, %d%%, %d%%)", math.floor(h + 0.5), math.floor(s + 0.5), math.floor(l + 0.5))
end

function M.hslToHex(h, s, l)
  local r, g, b = M.hslToRgb(h / 360, s / 100, l / 100)

  return string.format("#%02x%02x%02x", math.floor(r + 0.5), math.floor(g + 0.5), math.floor(b + 0.5))
end

function M.replaceHexWithHSL()
  local line_number = vim.api.nvim_win_get_cursor(0)[1]
  local line_content = vim.api.nvim_buf_get_lines(0, line_number - 1, line_number, false)[1]

  if not line_content then
    return
  end

  for hex in line_content:gmatch("#[0-9a-fA-F]+") do
    local hsl = M.hexToHSL(hex)
    line_content = line_content:gsub(hex, hsl)
  end

  vim.api.nvim_buf_set_lines(0, line_number - 1, line_number, false, { line_content })
end

return M
