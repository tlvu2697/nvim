----------------------------------------------------
-- https://github.com/ntpeters/vim-better-whitespace
----------------------------------------------------
return {
  "ntpeters/vim-better-whitespace",
  init = function()
    g.strip_whitespace_on_save = 1
    g.strip_whitespace_confirm = 0
    g.better_whitespace_enabled = 1
    g.strip_max_file_size = 0
    g.better_whitespace_filetypes_blacklist = { "diff", "git", "gitcommit", "unite", "qf", "help", "fugitive" }
  end,
}
