----------------------------------------------------
-- https://github.com/davidgranstrom/nvim-markdown-preview
----------------------------------------------------
vim.cmd([[
  augroup MarkdownPreview
    autocmd FileType markdown MarkdownPreview
  augroup END
]])
