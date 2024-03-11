----------------------------------------------------
-- https://github.com/kdheepak/lazygit.nvim
----------------------------------------------------
return {
  "kdheepak/lazygit.nvim",
  init = function()
    g.it_floating_window_winblend = 0
    g.lazygit_floating_window_scaling_factor = 1
    g.lazygit_floating_window_use_plenary = 0
    g.lazygit_use_neovim_remote = 0
  end,
  config = function()
    map("n", "<space>gg", ":LazyGit<CR>", { silent = true })
  end,
}
