----------------------------------------------------
-- https://github.com/ludovicchabant/vim-gutentags
----------------------------------------------------
return {
  "ludovicchabant/vim-gutentags",
  init = function()
    g.gutentags_ctags_exclude = {
      "*.min.js",
      "*.min.css",
      "build",
      "vendor",
      ".git",
      "node_modules",
      "*.vim/bundle/*",
    }
  end,
}
