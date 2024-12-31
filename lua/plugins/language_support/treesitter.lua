----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
-- https://github.com/andymass/vim-matchup
-- https://github.com/windwp/nvim-ts-autotag
----------------------------------------------------
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "RRethy/nvim-treesitter-endwise",
    {
      "andymass/vim-matchup",
      init = function()
        g.matchup_matchparen_offscreen = { method = "none" }
      end,
    },
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require('nvim-ts-autotag').setup({
          opts = {
            enable_close = true,         -- Auto close tags
            enable_rename = true,        -- Auto rename pairs of tags
            enable_close_on_slash = true -- Auto close on trailing </
          }
        })
      end
    }
  },
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "lua",
        "ruby",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = {
        enable = true,
        disable = {
          "ruby",
        }
      },
      matchup = { enable = true },
      endwise = { enable = true },
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
  end,
}
