return require('packer').startup(function()
  -- Self
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'itchyny/lightline.vim'
  use 'joshdick/onedark.vim'

  -- Dependencies
  use 'nvim-lua/plenary.nvim'

  -- Basic
  use 'famiu/nvim-reload'
  use 'godlygeek/tabular'
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-unimpaired'
  use 'tpope/vim-repeat'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
  use 'junegunn/fzf.vim'
  use 'szw/vim-maximizer'
  use 'preservim/nerdcommenter'
  use 'tpope/vim-obsession'
  use 'akinsho/nvim-toggleterm.lua'
  use 'preservim/nerdtree'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    requires = { 'windwp/nvim-autopairs', 'windwp/nvim-ts-autotag' }
  }


  -- Development
  use 'honza/vim-snippets'
  use 'tpope/vim-surround'
  use 'ntpeters/vim-better-whitespace'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'ludovicchabant/vim-gutentags'
  use 'phaazon/hop.nvim'
  use 'matze/vim-move'
  use 'meain/vim-printer'
  use 'tpope/vim-projectionist'
  use 'AndrewRadev/splitjoin.vim'
  use 'vim-test/vim-test'
  use 'benmills/vimux'


  -- GIT
  use 'junegunn/gv.vim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'
  use 'kdheepak/lazygit.nvim'


  -- Languages
  use 'galooshi/vim-import-js'
  use 'pangloss/vim-javascript'
end)
