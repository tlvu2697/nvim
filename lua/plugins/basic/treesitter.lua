----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/windwp/nvim-autopairs
-- https://github.com/windwp/nvim-ts-autotag
----------------------------------------------------
-- SECTION: nvim-treesitter
----------------------------------------------------
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'dockerfile',
    'html',
    'javascript',
    'json',
    'lua',
    'ruby',
    'yaml',
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = false },
  autotag = { enable = true },
  autopairs = { enable = true }
}
----------------------------------------------------
-- SECTION: nvim-autopairs
----------------------------------------------------
local npairs = require('nvim-autopairs')

npairs.setup({
  check_ts = true,
})

g.completion_confirm_key = ''
map('i', '<CR>', 'v:lua.MUtils.completion_confirm()', { expr = true })
npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
