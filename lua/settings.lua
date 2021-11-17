----------------------------------------------------
-- SECTION: Important
----------------------------------------------------
g.mapleader = ','
g.loaded_ruby_provider = 0
g.ruby_host_prog = '/usr/local/bin/_neovim-ruby-host'
g.python_host_prog = '/usr/local/bin/_python2.7'
g.python3_host_prog = '/usr/local/bin/_python3.6'
g.loaded_matchit = 1
----------------------------------------------------
-- SECTION: General
----------------------------------------------------
cmd([[
  filetype plugin indent on

  augroup AutoreadFix
    autocmd!
    autocmd BufWritePost * edit
  augroup END
]])
opt.autoindent = true
opt.autoread = true
opt.clipboard = { 'unnamed', 'unnamedplus' }
opt.cursorline = false
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.smartindent = true
opt.softtabstop = 2
opt.splitright = true
opt.splitbelow = true
opt.tabstop = 2
opt.re = 0
opt.wildmenu = true
opt.wrap = true
vim.wo.wrap = true
----------------------------------------------------
-- SECTION: Search
----------------------------------------------------
opt.hlsearch = true
opt.ignorecase = true
opt.inccommand = 'split'
opt.incsearch = true
opt.smartcase = true
map('n', '<CR>', '<ESC>:noh<CR>', { silent = true})
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
----------------------------------------------------
-- SECTION: Commands
----------------------------------------------------
cmd([[
  command! -nargs=? Browse lua _G.MUtils.open_in_browser(<q-args>)
]])
