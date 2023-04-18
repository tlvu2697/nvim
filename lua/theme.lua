----------------------------------------------------
-- SECTION: Theme
----------------------------------------------------
require("nightfox").setup({
  options = {
    modules = {
      native_lsp = {
        enable = false,
      },
      hop = true,
      gitsigns = true,
      coc = true,
      treesitter = false,
    },
  },
})

require("onedark").setup({
  highlights = {
    MatchParen = { fg = "$yellow", bg = "none", sp = "none", fmt = "bold" },
  },
})

opt.background = (os.getenv("THEME_MODE") or "light")
cmd("colorscheme " .. (os.getenv("THEME") or "dayfox"))

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
        colored = true,
        update_in_insert = true,
        always_visible = false,
      },
      { "g:trimmed_coc_status" },
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
        colored = true,
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
    "nvim-tree",
    "quickfix",
  },
})
