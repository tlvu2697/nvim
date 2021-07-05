----------------------------------------------------
-- https://github.com/easymotion/vim-easymotion
----------------------------------------------------
cmd([[
  Plug 'easymotion/vim-easymotion'
  call plug#end()
]])

vim.api.nvim_set_keymap('', '<Tab>', '<Plug>(easymotion-bd-w)', { silent = true })
