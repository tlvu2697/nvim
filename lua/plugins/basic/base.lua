----------------------------------------------------
-- https://github.com/godlygeek/tabular
-- https://github.com/sheerun/vim-polyglot
----------------------------------------------------
g.polyglot_disabled = { 'ruby', 'javascript', 'markdown', 'autoindent' }

cmd([[
  Plug 'godlygeek/tabular'
  Plug 'sheerun/vim-polyglot'
  call plug#end()
]])
