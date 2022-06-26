----------------------------------------------------
-- SECTION: Theme
----------------------------------------------------
cmd('colorscheme onedark')

opt.background = 'dark'
opt.encoding = 'UTF-8'
opt.laststatus = 2
opt.termguicolors = true
opt.showmode = false

require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'onedark',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {
      {
        'diagnostics',
        sources = { 'coc' },
        sections = { 'error', 'warn', 'info', 'hint' },
        diagnostics_color = {
          error = { bg = '#2C323C' },
          warn  = { bg = '#2C323C' },
          info  = { bg = '#2C323C' },
          hint  = { bg = '#2C323C' },
        },
        colored = true,
        update_in_insert = true,
        always_visible = false,
      }
    },
    lualine_y = {'filetype'},
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
  extensions = {
    'fzf',
    'nerdtree',
    'quickfix'
  }
}
