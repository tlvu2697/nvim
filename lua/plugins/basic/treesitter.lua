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
    'typescript',
    'yaml',
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = { 'ruby', 'lua' }
  },
  autotag = { enable = true },
  autopairs = { enable = true },
  matchup = { enable = true },
}
----------------------------------------------------
-- SECTION: nvim-autopairs
----------------------------------------------------
g.completion_confirm_key = ''

local npairs = require('nvim-autopairs')
local Rule   = require('nvim-autopairs.rule')

npairs.setup({
  check_ts = true,
})

_G.MUtils.completion_confirm = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()['selected'] ~= -1 then
    vim.fn['coc#_select_confirm']()
  end

  return npairs.autopairs_cr()
end
map('i', '<CR>', 'v:lua._G.MUtils.completion_confirm()', { expr = true })

npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
npairs.add_rules {
  Rule(' ', ' ')
    :with_pair(function (opts)
      local pair = opts.line:sub(opts.col - 1, opts.col)
      return vim.tbl_contains({ '()', '[]', '{}' }, pair)
    end),
  Rule('( ', ' )')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%)') ~= nil
      end)
      :use_key(')'),
  Rule('{ ', ' }')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%}') ~= nil
      end)
      :use_key('}'),
  Rule('[ ', ' ]')
      :with_pair(function() return false end)
      :with_move(function(opts)
          return opts.prev_char:match('.%]') ~= nil
      end)
      :use_key(']')
}
