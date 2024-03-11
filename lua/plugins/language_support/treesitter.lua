----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/andymass/vim-matchup
-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
-- https://github.com/windwp/nvim-ts-autotag
----------------------------------------------------
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "andymass/vim-matchup",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "proto",
      "python",
      "regex",
      "ruby",
      "sql",
      "typescript",
      "yaml",
    },
    highlight = {
      enable = true,
      disable = { "vimdoc" },
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
      disable = { "ruby" },
    },
    autotag = { enable = true },
    autopairs = { enable = true },
    matchup = { enable = true },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = false,
        goto_next_start = {
          ["]]"] = "@function.outer",
        },
        goto_previous_start = {
          ["[["] = "@function.outer",
        },
      },
    },
  },
  init = function()
    g.matchup_matchparen_offscreen = { method = "none" }
  end,
}
