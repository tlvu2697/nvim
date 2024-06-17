----------------------------------------------------
-- https://github.com/EdenEast/nightfox.nvim
----------------------------------------------------
return {
  "EdenEast/nightfox.nvim",
  opts = {
    options = {
      modules = {
        hop = {
          enable = true,
        },
        gitsigns = {
          enable = true,
        },
        coc = {
          enable = true,
        },
        treesitter = {
          enable = false,
        },
        native_lsp = {
          enable = false,
        },
      },
    },
  },
  config = function(_, opts)
    require("nightfox").setup(opts)

    opt.background = "light"
    cmd("colorscheme dayfox")
  end,
}
