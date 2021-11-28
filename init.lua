local start_time = vim.fn.reltime()

require('plugins')

require('helper')
require('settings')
require('theme')
require('mappings')

require('plugins.basic.better_whitespace')
require('plugins.basic.easy_align')
require('plugins.basic.fzf')
require('plugins.basic.hop')
require('plugins.basic.maximizer')
require('plugins.basic.move')
require('plugins.basic.nerdcommenter')
require('plugins.basic.nerdtree')
require('plugins.basic.projectionist')
require('plugins.basic.taboo')
require('plugins.basic.toggleterm')
require('plugins.basic.treesitter')
require('plugins.basic.vimux')

require('plugins.development.coc')
require('plugins.development.gutentags')
require('plugins.development.splitjoin')
require('plugins.development.test')

require('plugins.git.gitsigns')
require('plugins.git.lazygit')

require('plugins.languages.import_js')

print(vim.fn.printf('Loaded [%.0fms]', vim.fn.reltimefloat(vim.fn.reltime(start_time))*1000))
