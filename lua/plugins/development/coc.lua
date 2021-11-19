----------------------------------------------------
-- https://github.com/neoclide/coc.nvim
----------------------------------------------------
g.coc_global_extensions = {
  'coc-eslint',
  'coc-json',
  'coc-markdownlint',
  'coc-prettier',
  'coc-solargraph',
  'coc-snippets',
  'coc-sql',
  'coc-tsserver',
  'coc-yaml',
}

----------------------------------------------------
-- SECTION: <TAB> for Completion
----------------------------------------------------
cmd([[
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
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
  if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
    nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"
    inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1, 2)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0, 2)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1, 2) : "\<C-j>"
    vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0, 2) : "\<C-k>"
  endif
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
-- SECTION: Code Formatting
----------------------------------------------------
cmd([[
  vmap <leader>f <Plug>(coc-format-selected)
  nmap <leader>f <Plug>(coc-format-selected)
  nmap <silent> <leader>ff :call CocAction('format')<CR>
  augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end
]])

----------------------------------------------------
-- SECTION: Code Fixing
----------------------------------------------------
cmd([[
  nmap <silent> <leader>ac <Plug>(coc-codeaction)
  nmap <silent> <leader>ef :CocFix<CR>
]])

----------------------------------------------------
-- SECTION: Misc
----------------------------------------------------
cmd([[
  command! -nargs=0 Format :call CocAction('format')
  command! -nargs=? Fold :call CocAction('fold', <f-args>)

  nnoremap <silent><nowait> <space>ca :<C-u>CocList diagnostics<cr>
  nnoremap <silent><nowait> <space>ce :<C-u>CocList extensions<cr>
  nnoremap <silent><nowait> <space>cc :<C-u>CocList commands<cr>
]])
