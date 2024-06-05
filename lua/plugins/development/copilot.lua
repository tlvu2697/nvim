----------------------------------------------------
-- https://github.com/github/copilot.vim
----------------------------------------------------
g.copilot_no_tab_map = true

return {
  "github/copilot.vim",
  init = function()
    cmd([[
      inoremap <silent><script><expr> <C-\> copilot#Accept("\<CR>")
      inoremap <silent> <C-j> <Plug>(copilot-next)
      inoremap <silent> <C-k> <Plug>(copilot-previous)
    ]])
  end,
}
