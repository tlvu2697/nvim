----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/andymass/vim-matchup
-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
-- https://github.com/nvim-treesitter/playground
-- https://github.com/windwp/nvim-autopairs
-- https://github.com/windwp/nvim-ts-autotag
----------------------------------------------------
-- SECTION: nvim-treesitter
----------------------------------------------------
require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "bash",
    "dockerfile",
    "html",
    "javascript",
    "json",
    "lua",
    "markdown",
    "proto",
    "ruby",
    "typescript",
    "yaml",
  },
  highlight = {
    enable = true,
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
})
----------------------------------------------------
-- SECTION: vim-matchup
----------------------------------------------------
g.matchup_matchparen_offscreen = { method = "none" }
