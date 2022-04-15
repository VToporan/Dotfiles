local status_ok, lua_line = pcall(require, "lualine")
if not status_ok then
  return
end

lua_line.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',

    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {{'branch', icon = 'ᚬ'}, 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype', 'encoding'},
    lualine_y = {},
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
  extensions = {'nvim-tree'}
}
