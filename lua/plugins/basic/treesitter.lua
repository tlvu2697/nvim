----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/windwp/nvim-autopairs
-- https://github.com/windwp/nvim-ts-autotag
----------------------------------------------------
cmd([[
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  call plug#end()
]])

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
  autopairs = {enable = true}
}

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils= {}

vim.g.completion_confirm_key = ""

MUtils.completion_confirm=function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info()['selected'] ~= -1 then
    vim.fn['coc#_select_confirm']()
    return npairs.esc('<cr>')
  else
    return npairs.autopairs_cr()
  end
end


remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})


npairs.setup({
  check_ts = true,
})

npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
