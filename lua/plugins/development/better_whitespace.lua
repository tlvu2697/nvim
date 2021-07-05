----------------------------------------------------
-- https://github.com/ntpeters/vim-better-whitespace
----------------------------------------------------
cmd([[
  Plug 'ntpeters/vim-better-whitespace'
  call plug#end()
]])

g.strip_whitespace_on_save = 1
g.strip_whitespace_confirm = 0
g.better_whitespace_enabled = 1
g.strip_max_file_size = 0
