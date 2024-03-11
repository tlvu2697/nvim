----------------------------------------------------
-- https://github.com/phaazon/hop.nvim
----------------------------------------------------
return {
  "phaazon/hop.nvim",
  main = "hop",
  opts = {
    quit_key = "<Tab>",
    create_hl_autocmd = true,
  },
  config = function(_, opts)
    require("hop").setup(opts)

    map("", "<Tab>", "<cmd>lua require'hop'.hint_words()<cr>", { silent = true })
  end,
}
