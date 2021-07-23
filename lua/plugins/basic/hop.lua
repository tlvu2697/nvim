----------------------------------------------------
-- https://github.com/phaazon/hop.nvim
----------------------------------------------------
require('hop').setup({
  quit_key = '<Tab>'
})

map('', '<Tab>', "<cmd>lua require'hop'.hint_words()<cr>", { silent = true })
