----------------------------------------------------
-- https://github.com/phaazon/hop.nvim
----------------------------------------------------
require("hop").setup({
  quit_key = "<Tab>",
  create_hl_autocmd = true,
})

map("", "<Tab>", "<cmd>lua require'hop'.hint_words()<cr>", { silent = true })
