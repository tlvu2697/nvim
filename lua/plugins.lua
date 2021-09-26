return require('packer').startup(function()
  -- Self
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'hoob3rt/lualine.nvim'
  use 'joshdick/onedark.vim'

  -- Dependencies
  use 'nvim-lua/plenary.nvim'

  -- Basic
  use 'akinsho/nvim-toggleterm.lua'
  use 'benmills/vimux'
  use 'famiu/nvim-reload'
  use 'godlygeek/tabular'
  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install']() end
  }
  use 'junegunn/fzf.vim'
  use 'matze/vim-move'
  use 'ntpeters/vim-better-whitespace'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = {
      'andymass/vim-matchup',
      'windwp/nvim-autopairs',
      'windwp/nvim-ts-autotag',
      'nvim-treesitter/playground'
    }
  }
  use 'preservim/nerdcommenter'
  use {
    'preservim/nerdtree',
    requires = {
      'Xuyuanp/nerdtree-git-plugin'
    }
  }

  use 'szw/vim-maximizer'
  use 'tpope/vim-obsession'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  use 'phaazon/hop.nvim'


  -- Development
  use 'AndrewRadev/splitjoin.vim'
  use 'honza/vim-snippets'
  use 'ludovicchabant/vim-gutentags'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'vim-test/vim-test'


  -- GIT
  use 'junegunn/gv.vim'
  use 'kdheepak/lazygit.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'


  -- Languages
  use 'galooshi/vim-import-js'
  use 'pangloss/vim-javascript'
end)
