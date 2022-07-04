----------------------------------------------------
-- https://github.com/gcmt/taboo.vim
----------------------------------------------------
vim.opt.sessionoptions:append({ "tabpages", "globals" })
vim.g.taboo_tab_format = " [%N] %f /"
vim.g.taboo_renamed_tab_format = " [%N] %l /"
map("n", "<space>tr", ":TabooRename ")
