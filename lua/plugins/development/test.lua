----------------------------------------------------
-- https://github.com/vim-test/vim-test
----------------------------------------------------
cmd([[
  Plug 'vim-test/vim-test'
  call plug#end()
]])

g['test#strategy'] = 'vimux'
g['test#preserve_screen'] = 1
g['test#ruby#bundle_exec'] = 1
g['test#ruby#use_binstubs'] = 0
