----------------------------------------------------
-- https://github.com/junegunn/fzf
-- https://github.com/junegunn/fzf.vim
----------------------------------------------------
env.FZF_DEFAULT_COMMAND =
  'rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!sorbet/rbi/*"'
env.FZF_DEFAULT_OPTS = "--bind 'ctrl-d:preview-down,ctrl-u:preview-up'"

cmd([[
  function! BuildQuickfixList(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
    copen
    cc
  endfunction
]])

g.fzf_action = {
  ["ctrl-l"] = vim.fn["BuildQuickfixList"],
  ["ctrl-t"] = "tab split",
  ["ctrl-s"] = "split",
  ["ctrl-v"] = "vsplit",
}

g.fzf_layout = { down = "100%" }
map("n", "<c-]>", "<ESC>:Tags <C-R><C-W><CR>", { silent = true })
map("n", "<c-p>", ":Files<CR>", { silent = true })
