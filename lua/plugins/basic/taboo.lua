----------------------------------------------------
-- https://github.com/gcmt/taboo.vim
----------------------------------------------------
return {
  "gcmt/taboo.vim",
  init = function()
    opt.sessionoptions:append({ "tabpages", "globals" })
    g.taboo_tab_format = " [%N] %f /"
    g.taboo_renamed_tab_format = " [%N] %l /"
  end,
  config = function()
    map("n", "<space>tr", ":TabooRename ")
  end,
}
