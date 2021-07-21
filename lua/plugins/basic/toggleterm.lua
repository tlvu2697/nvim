----------------------------------------------------
-- https://github.com/akinsho/nvim-toggleterm.lua
----------------------------------------------------
require("toggleterm").setup{
  size = 12,
  open_mapping = [[<c-\>]],
  shade_terminals = false,
  persist_size = true,
  direction = 'horizontal',
  shell = vim.o.shell,
}

cmd([[
  command! -count=1 TermCIBranch lua require'toggleterm'.exec('cib && exit', <count>, 12)
  command! -count=1 TermGitCreatePR lua require'toggleterm'.exec('create pr && exit', <count>, 12)
]])
