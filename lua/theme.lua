----------------------------------------------------
-- SECTION: Theme
----------------------------------------------------
local nightfox = require("nightfox")
nightfox.setup({
  options = {
    modules = {
      hop = true,
      gitsigns = true,
      coc = true,
      treesitter = true,
    },
  },
})
nightfox.compile()

cmd("colorscheme "..(os.getenv("THEME") or 'nightfox'))

opt.encoding = "UTF-8"
opt.laststatus = 2
opt.termguicolors = true
opt.showmode = false

require("lualine").setup({
  options = {
    icons_enabled = false,
    component_separators = { "", "" },
    section_separators = { "", "" },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {
      {
        "diagnostics",
        sources = { "coc" },
        sections = { "error", "warn", "info", "hint" },
        diagnostics_color = {
          error = { bg = "#2C323C" },
          warn = { bg = "#2C323C" },
          info = { bg = "#2C323C" },
          hint = { bg = "#2C323C" },
        },
        colored = true,
        update_in_insert = true,
        always_visible = false,
      },
    },
    lualine_y = { "filetype" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = {
      {
        "diagnostics",
        sources = { "coc" },
        sections = { "error", "warn" },
        diagnostics_color = {
          error = { bg = "#2C323C" },
          warn = { bg = "#2C323C" },
        },
        colored = false,
        update_in_insert = true,
        always_visible = false,
      },
    },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {
    "fzf",
    "nerdtree",
    "quickfix",
  },
})
