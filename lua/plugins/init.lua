local plugins = {
  -- GROUP: Theme
  require "plugins.theme.nightfox",
  require "plugins.theme.lualine",

  -- GROUP: Basic
  require "plugins.basic.vimux",
  require "plugins.basic.fzf",
  require "plugins.basic.easy_align",
  require "plugins.basic.indent_blankline",
  require "plugins.basic.move",
  require "plugins.basic.better_whitespace",
  require "plugins.basic.comment",
  require "plugins.basic.nvim_tree",
  require "plugins.basic.maximizer",
  require "plugins.basic.projectionist",
  require "plugins.basic.hop",
  require "plugins.basic.taboo",
  "tpope/vim-repeat",
  "tpope/vim-surround",
  "tpope/vim-unimpaired",
  "nvim-lua/plenary.nvim",

  -- GROUP: Development
  require 'plugins.development.coc',
  require 'plugins.development.splitjoin',
  require 'plugins.development.test',
  require 'plugins.development.copilot',
  require 'plugins.development.gutentags',

  -- GROUP: Language Support
  require "plugins.language_support.treesitter",
  require "plugins.language_support.autopairs",

  -- GROUP: GIT
  require 'plugins.git.gitsigns',
  require 'plugins.git.gv',
  require 'plugins.git.lazygit',
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
}

local lazy_configs = {
  performance = {
    rtp = {
      disabled_plugins = {
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
        "gzip",
        "zip",
        "zipPlugin",
        "tar",
        "tarPlugin",
        "getscript",
        "getscriptPlugin",
        "vimball",
        "vimballPlugin",
        "2html_plugin",
        "logipat",
        "rrhelper",
        "spellfile_plugin",
        "matchit",
        ---
        "bugreport",
        "tohtml",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
      },
    },
  },
}

require("lazy").setup(plugins, lazy_configs)
