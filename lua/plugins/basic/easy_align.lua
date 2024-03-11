----------------------------------------------------
-- https://github.com/junegunn/vim-easy-align
----------------------------------------------------
return {
  "junegunn/vim-easy-align",
  config = function()
    cmd([[
      xmap <leader>ea <Plug>(EasyAlign)
    ]])
  end,
}
