----------------------------------------------------
-- https://github.com/neoclide/coc.nvim
----------------------------------------------------
g.coc_global_extensions = {
  "coc-snippets",
  -- https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
  "coc-eslint",
  "coc-json",
  "coc-kotlin",
  "coc-markdownlint",
  "coc-prettier",
  "coc-protobuf",
  "coc-solargraph",
  "coc-spell-checker",
  "coc-sql",
  "coc-stylua",
  "coc-tsserver",
  "coc-xml",
  "coc-yaml",
  -- https://github.com/neoclide/coc-sources
  "coc-tag",
  "coc-word",
}

----------------------------------------------------
-- SECTION: <TAB> for Completion
----------------------------------------------------
cmd([[
  inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
  inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
]])

----------------------------------------------------
-- SECTION: Snippets
----------------------------------------------------
cmd([[
  imap <C-l> <Plug>(coc-snippets-expand)
  vmap <C-j> <Plug>(coc-snippets-select)
  let g:coc_snippet_next = '<c-j>'
  let g:coc_snippet_prev = '<c-k>'
  imap <C-j> <Plug>(coc-snippets-expand-jump)
]])

----------------------------------------------------
-- SECTION: Remap <C-j> and <C-k> for scroll float windows/popups.
----------------------------------------------------
cmd([[
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 2)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 2)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"
]])

----------------------------------------------------
-- SECTION: GoTo Code Navigation
----------------------------------------------------
cmd([[
  nmap <silent> gdd <Plug>(coc-definition)
  nmap <silent> gdv :call CocAction('jumpDefinition', 'vsplit') <CR>
  nmap <silent> gds :call CocAction('jumpDefinition', 'split') <CR>
  nmap <silent> gdt :call CocAction('jumpDefinition', 'tabedit') <CR>
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
]])

----------------------------------------------------
-- SECTION: Linting -> Fixing
----------------------------------------------------
cmd([[
  vmap <leader>ff <Plug>(coc-format-selected)
  nmap <silent> <leader>ff :call CocActionAsync('format')<CR>
]])

----------------------------------------------------
-- SECTION: Diagnostics -> Taking Action
----------------------------------------------------
cmd([[
  nmap <silent> [d <Plug>(coc-diagnostic-prev)
  nmap <silent> ]d <Plug>(coc-diagnostic-next)
  vmap <leader>ac <Plug>(coc-codeaction-selected)
  nmap <silent> <leader>ac <Plug>(coc-codeaction)
]])

----------------------------------------------------
-- SECTION: Misc
----------------------------------------------------
cmd([[
  command! -nargs=0 Format :call CocActionAsync('format')

  nnoremap <silent><nowait> <space>ca :<C-u>CocList diagnostics<cr>
  nnoremap <silent><nowait> <space>ce :<C-u>CocList extensions<cr>
  nnoremap <silent><nowait> <space>cc :<C-u>CocList commands<cr>
]])
