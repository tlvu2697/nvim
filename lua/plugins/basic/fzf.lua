----------------------------------------------------
-- https://github.com/junegunn/fzf
-- https://github.com/junegunn/fzf.vim
----------------------------------------------------
env.FZF_DEFAULT_COMMAND =
  'rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!sorbet/rbi/*"'
env.FZF_DEFAULT_OPTS = "--bind 'ctrl-d:preview-down,ctrl-u:preview-up'"

cmd([[
  function! BuildQuickfixList(lines)
    call setqflist(map(copy(a:lines), '{ "text": "", "filename": v:val, "lnum": 1, "col": 1 }'))
    copen
    cc
  endfunction
]])

_G.MUtils.build_coc_quickfix_list = function(lines)
  local quickfix_list = {}
  for i = 1, #lines do
    quickfix_list[i] = {
      ["text"] = "",
      ["filename"] = lines[i],
      ["lnum"] = 1,
      ["col"] = 1,
    }
  end
  vim.fn.setqflist(quickfix_list)
  cmd("CocList quickfix")
end

g.fzf_action = {
  -- ["ctrl-l"] = vim.fn["BuildQuickfixList"],
  ["ctrl-l"] = _G.MUtils.build_coc_quickfix_list,
  ["ctrl-t"] = "tab split",
  ["ctrl-s"] = "split",
  ["ctrl-v"] = "vsplit",
}

g.fzf_layout = { down = "100%" }
map("n", "<c-]>", "<ESC>:Tags <C-R><C-W><CR>", { silent = true })
map("n", "<c-p>", ":Files<CR>", { silent = true })
