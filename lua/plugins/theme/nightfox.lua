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

    opt.background = (os.getenv("THEME_MODE") or "light")
    cmd("colorscheme " .. (os.getenv("THEME") or "dayfox"))
  end,
}
