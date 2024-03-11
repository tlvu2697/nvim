----------------------------------------------------
-- https://github.com/nvim-lualine/lualine.nvim
----------------------------------------------------
return {
  "nvim-lualine/lualine.nvim",
  main = "lualine",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = { "", "" },
      section_separators = { "", "" },
      disabled_filetypes = {},
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {},
      lualine_c = {
        { "filename" },
        { "b:gitsigns_status" }
      },
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
      lualine_c = {
        { "filename" },
        { "b:gitsigns_status" }
      },
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
  }
}
