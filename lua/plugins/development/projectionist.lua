----------------------------------------------------
-- https://github.com/tpope/vim-projectionist
----------------------------------------------------
cmd([[
  Plug 'tpope/vim-projectionist'
  call plug#end()
]])

g.projectionist_heuristics = {
  ['*.rb'] = {
    ['app/*.rb'] = {
      alternate = 'spec/{}_spec.rb',
      type = 'source'
    },
    ['app/controllers/*_controller.rb'] = {
      alternate = {
        'spec/requests/{}_spec.rb',
        'spec/controllers/{}_controller_spec.rb',
      },
      type = 'source'
    },
    ['spec/requests/*_spec.rb'] = {
      command = 'request',
      alternate = 'app/controllers/{}_controller.rb',
      type = 'test'
    },
    ['lib/*.rb'] = {
      alternate = 'spec/lib/{}_spec.rb',
      type = 'source'
    },
    ['spec/*_spec.rb'] = {
      alternate = {
        'app/{}.rb',
        '{}.rb',
      },
      type = 'test'
    },
  },
  ['*.js'] = {
    ['*.js'] = {
      alternate = {
        '{dirname}/__tests__/{basename}.spec.js',
        '{dirname}/__tests__/integration.spec.js'
      },
      type = 'source'
    },
    ['*/integration.spec.js'] = {
      alternate = '{dirname}/index.js',
      type = 'test'
    },
    ['*.spec.js'] = {
      alternate = '{dirname}/../{basename}.js',
      type = 'test'
    }
  }
}
vim.api.nvim_set_keymap('', '<leader>aa', ':w <bar> :e <bar> :A<CR>', {})
vim.api.nvim_set_keymap('', '<leader>as', ':w <bar> :e <bar> :AS<CR>', {})
vim.api.nvim_set_keymap('', '<leader>av', ':w <bar> :e <bar> :AV<CR>', {})
