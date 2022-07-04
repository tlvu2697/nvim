----------------------------------------------------
-- https://github.com/davidgranstrom/nvim-markdown-preview
----------------------------------------------------
-- vim.cmd([[
  -- augroup MarkdownPreview
    -- autocmd FileType markdown MarkdownPreview
  -- augroup END
-- ]])
map('n', '<space>fp', ':MarkdownPreview<CR>/')
