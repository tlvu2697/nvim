----------------------------------------------------
-- https://github.com/michaelb/sniprun
----------------------------------------------------
cmd([[
  Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
  call plug#end()
]])

map('v', '<leader>sr', "<cmd>lua require'sniprun'.run('v')<cr>")
map('n', '<leader>sr', "<cmd>lua require'sniprun'.run()<cr>")
map('n', '<leader>sc', ':SnipClose<CR>', { silent = true })
