----------------------------------------------------
-- https://github.com/preservim/nerdtree
----------------------------------------------------
g.NERDTreeMapOpenSplit = "s"
g.NERDTreeMapOpenVSplit = "v"
g.NERDTreeWinSize = 40
g.NERDTreeGitStatusConcealBrackets = 1
g.NERDTreeGitStatusUseNerdFonts = 1

vim.api.nvim_create_user_command("TreeFind", "NERDTreeFind", {})
vim.api.nvim_create_user_command("TreeClose", "NERDTreeClose", {})
vim.api.nvim_create_user_command("TreeToggle", "NERDTreeToggle", {})
