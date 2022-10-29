----------------------------------------------------
-- https://github.com/akinsho/nvim-toggleterm.lua
----------------------------------------------------
require("toggleterm").setup({
  size = 12,
  open_mapping = [[<c-\>]],
  shade_terminals = false,
  persist_size = true,
  direction = "horizontal",
  shell = vim.o.shell,
})

cmd([[
  command! -count=1 TermCIBranch lua require'toggleterm'.exec('cib && exit', <count>, 12)
  command! -count=1 TermGitCreatePR lua require'toggleterm'.exec('create pr && exit', <count>, 12)
]])

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "tab",
  float_opts = {
    border = "single",
  },
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

map("n", "<space>gg", "<cmd>lua _lazygit_toggle()<CR>", { silent = true })
