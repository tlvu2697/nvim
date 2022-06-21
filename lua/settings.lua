for _, plugin in pairs({
  'netrw', 'netrwPlugin', 'netrwSettings', 'netrwFileHandlers',
  'gzip', 'zip', 'zipPlugin', 'tar', 'tarPlugin', 'getscript',
  'getscriptPlugin', 'vimball', 'vimballPlugin', '2html_plugin',
  'logipat', 'rrhelper', 'spellfile_plugin', 'matchit',
}) do
   g["loaded_" .. plugin] = 1
end
----------------------------------------------------
-- SECTION: Important
----------------------------------------------------
g.mapleader = ','
g.loaded_ruby_provider = 0
g.ruby_host_prog = '/usr/local/bin/_neovim-ruby-host'
g.python3_host_prog = '/usr/local/bin/_python3'
----------------------------------------------------
-- SECTION: General
----------------------------------------------------
cmd 'filetype plugin indent on'
opt.swapfile = false
opt.autoindent = true
opt.smartindent = true
opt.autoread = true
opt.clipboard = { 'unnamed', 'unnamedplus' }
opt.cursorline = false
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 8
opt.shiftwidth = 2
opt.softtabstop = 2
opt.splitright = true
opt.splitbelow = true
opt.re = 0
opt.wildmenu = true
opt.wrap = true
vim.wo.wrap = true
opt.backup = false
opt.writebackup = false
opt.updatetime = 100
opt.signcolumn = 'yes'
opt.shortmess:append { c = true }
opt.switchbuf:append { 'useopen' }
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
-- SECTION: Folding
----------------------------------------------------
opt.foldenable = true
opt.foldlevelstart = 5
opt.foldnestmax = 5
opt.foldmethod= 'indent'
-- opt.foldexpr= 'nvim_treesitter#foldexpr()'
map('n', 'zV', ':normal zMzvzz<CR>')
----------------------------------------------------
-- SECTION: Commands
----------------------------------------------------
cmd 'command! -nargs=? Browse lua _G.MUtils.open_in_browser(<q-args>)'
