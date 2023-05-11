return require("packer").startup({
  function()
    use("lewis6991/impatient.nvim")

    -- GROUP: Self
    use("wbthomason/packer.nvim")

    -- GROUP: Theme
    use("EdenEast/nightfox.nvim")
    use("nvim-lualine/lualine.nvim")
    use("navarasu/onedark.nvim")

    -- GROUP: Dependencies
    use("nvim-lua/plenary.nvim")
    use("mrjones2014/load-all.nvim")

    -- GROUP: Language Support
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
      requires = {
        "andymass/vim-matchup",
        "nvim-treesitter/nvim-treesitter-textobjects",
        "nvim-treesitter/playground",
        "windwp/nvim-autopairs",
        "windwp/nvim-ts-autotag",
      },
    })

    -- GROUP: Basic
    use("benmills/vimux")
    use("chentoast/marks.nvim")
    use("gcmt/taboo.vim")
    use({
      "junegunn/fzf",
      run = function()
        vim.fn["fzf#install"]()
      end,
    })
    use({ "tlvu2697/fzf.vim", branch = "release" })
    use("junegunn/vim-easy-align")
    use("lukas-reineke/indent-blankline.nvim")
    use("matze/vim-move")
    use("ntpeters/vim-better-whitespace")
    use("numToStr/Comment.nvim")
    use({
      "nvim-tree/nvim-tree.lua",
      requires = {
        "nvim-tree/nvim-web-devicons",
      },
    })
    use("szw/vim-maximizer")
    use("tpope/vim-projectionist")
    use("tpope/vim-repeat")
    use("tpope/vim-surround")
    use("tpope/vim-unimpaired")
    use("phaazon/hop.nvim")

    -- GROUP: Development
    use("AndrewRadev/splitjoin.vim")
    use("github/copilot.vim")
    use("ludovicchabant/vim-gutentags")
    use({ "neoclide/coc.nvim", branch = "release" })
    use("vim-test/vim-test")

    -- GROUP: GIT
    use("junegunn/gv.vim")
    use("kdheepak/lazygit.nvim")
    use({ "lewis6991/gitsigns.nvim", tag = "release" })
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")

    -- GROUP: Languages
    use("pangloss/vim-javascript")
    use({
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end,
    })

    -- GROUP: Deprecated
    --
    ---- GROUP: Basic
    -- use("akinsho/nvim-toggleterm.lua")
    -- use({
    --   "folke/noice.nvim",
    --   requires = {
    --     "MunifTanjim/nui.nvim",
    --     "rcarriga/nvim-notify",
    --   },
    -- })
    -- use({
    --   "preservim/nerdtree",
    --   requires = {
    --     "Xuyuanp/nerdtree-git-plugin",
    --   },
    -- })
    -- use("preservim/nerdcommenter")
    -- use("tpope/vim-obsession")
    --
    ---- GROUP: GIT
    -- use("sindrets/diffview.nvim")
    --
    ---- GROUP: Languages
    -- use("galooshi/vim-import-js")
  end,
  config = {
    log = { level = "warn" },
  },
})
