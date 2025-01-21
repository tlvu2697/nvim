----------------------------------------------------
-- https://github.com/folke/which-key.nvim
----------------------------------------------------
vim.opt.timeoutlen=10000
return {
  "folke/which-key.nvim",
  opts = {
    delay = function(ctx)
      return ctx.plugin and 0 or 5000
    end,
    icons = {
      mappings = true
    },
    keys = {
      scroll_down = "<c-j>", -- binding to scroll down inside the popup
      scroll_up = "<c-k>",   -- binding to scroll up inside the popup
    },
    layout = {
      width = { min = vim.o.columns }, -- Set min and max to full width
    },
    plugins = {
      marks = true,     -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      spelling = {
        enabled = false,  -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 20, -- how many suggestions should be shown in the list?
      },
      presets = {
        operators = false,   -- adds help for operators like d, y, ...
        motions = true,      -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = false,     -- default bindings on <c-w>
        nav = false,         -- misc bindings to work with windows
        z = true,            -- bindings for folds, spelling and others prefixed with z
        g = true,            -- bindings for prefixed with g
      },
    },
    -- Document existing key chains
    spec = {
      { '<leader>c', group = '[C]ode',     mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    },
  },
  config = function()
    map("n", "?", "<cmd>lua require('which-key').show({ global = true })<cr>", { silent = true })
    map("n", "<leader>?", "<cmd>lua require('which-key').show({ global = false })<cr>", { silent = true })
  end,
}
