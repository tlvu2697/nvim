----------------------------------------------------
-- https://github.com/akinsho/nvim-toggleterm.lua
----------------------------------------------------
require('toggleterm').setup{}

cmd([[
  command! -count=1 TermCIBranch lua require'toggleterm'.exec('source ~/.git_ci && cib && exit', <count>, 12)
  command! -count=1 TermGitCreatePR lua require'toggleterm'.exec('source ~/.git_ci && create pr && exit', <count>, 12)
]])
