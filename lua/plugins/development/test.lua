----------------------------------------------------
-- https://github.com/vim-test/vim-test
----------------------------------------------------
return {
  "vim-test/vim-test",
  init = function()
    g["test#strategy"] = "vimux"
    g["test#preserve_screen"] = 1
    g["test#ruby#bundle_exec"] = 1
    g["test#ruby#use_binstubs"] = 0
  end,
}
