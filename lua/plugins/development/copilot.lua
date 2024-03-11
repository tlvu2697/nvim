----------------------------------------------------
-- https://github.com/github/copilot.vim
----------------------------------------------------
return {
  "github/copilot.vim",
  config = function()
    cmd([[
      inoremap <silent><script><expr> <C-\> copilot#Accept("\<CR>")
      inoremap <silent> <C-j> <Plug>(copilot-next)
      inoremap <silent> <C-k> <Plug>(copilot-previous)
      let g:copilot_no_tab_map = v:true
    ]])
  end,
}
