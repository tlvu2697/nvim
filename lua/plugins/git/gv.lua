----------------------------------------------------
-- https://github.com/junegunn/gv.vim
----------------------------------------------------
return {
  "junegunn/gv.vim",
  config = function()
    map("n", "<leader>gv", ":%GV!<CR>", { silent = true })
    map("v", "<leader>gv", ":GV<CR>", { silent = true })
  end,
}
