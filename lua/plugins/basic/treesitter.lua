----------------------------------------------------
-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/windwp/nvim-autopair
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
  autopairs = { enable = true },
  autotag = { enable = true },
}

require'nvim-autopairs'.setup {
  check_ts = true,
  enable_check_bracket_line = false,
}
