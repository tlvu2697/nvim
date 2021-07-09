require('helper')

cmd('call plug#begin("~/.config/nvim/plugged")')

require('settings')
require('theme')
require('mappings')

require('plugins.basic.base')
require('plugins.basic.fzf')
require('plugins.basic.maximizer')
require('plugins.basic.nerdcommenter')
require('plugins.basic.obsession')
require('plugins.basic.tree')
require('plugins.basic.treesitter')

require('plugins.development.base')
require('plugins.development.better_whitespace')
require('plugins.development.coc')
require('plugins.development.gutentags')
require('plugins.development.hop')
require('plugins.development.move')
require('plugins.development.printer')
require('plugins.development.projectionist')
require('plugins.development.sniprun')
require('plugins.development.splitjoin')
require('plugins.development.test')
require('plugins.development.vimux')

require('plugins.git.base')
require('plugins.git.gitsigns')
require('plugins.git.lazygit')

require('plugins.languages.base')
