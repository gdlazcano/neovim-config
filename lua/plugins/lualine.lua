-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local custom_horizon = require('lualine.themes.horizon')

custom_horizon.normal.c.bg = '#1e222a'

-- configure lualine
lualine.setup {
  options = {
    theme = custom_horizon,
    section_separators = {'', ''},
    component_separators = {'', ''},
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

