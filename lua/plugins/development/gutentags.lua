----------------------------------------------------
-- https://github.com/ludovicchabant/vim-gutentags
----------------------------------------------------
cmd([[
  Plug 'ludovicchabant/vim-gutentags'
  call plug#end()
]])

g.gutentags_ctags_exclude = {
  '*.min.js',
  '*.min.css',
  'build',
  'vendor',
  '.git',
  'node_modules',
  '*.vim/bundle/*'
}
