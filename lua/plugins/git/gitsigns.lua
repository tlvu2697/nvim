----------------------------------------------------
-- https://github.com/lewis6991/gitsigns.nvim
----------------------------------------------------
cmd([[
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  call plug#end()
]])

require('gitsigns').setup()
