----------------------------------------------------
-- https://github.com/phaazon/hop.nvim
----------------------------------------------------
cmd([[
  Plug 'phaazon/hop.nvim'
  call plug#end()
]])

require'hop'.setup()

vim.api.nvim_set_keymap('', '<Tab>', "<cmd>lua require'hop'.hint_words()<cr>", { silent = true })
