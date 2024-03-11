----------------------------------------------------
-- https://github.com/junegunn/fzf
-- https://github.com/junegunn/fzf.vim
----------------------------------------------------
return {
  "junegunn/fzf.vim",
  dependencies = {
    "junegunn/fzf",
    build = function()
      fn["fzf#install"]()
    end,
  },
  init = function()
    env.FZF_DEFAULT_COMMAND =
    'rg --files --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!sorbet/rbi/*"'
    env.FZF_DEFAULT_OPTS = "--bind 'ctrl-d:preview-down,ctrl-u:preview-up'"

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
      fn.setqflist(quickfix_list)
      cmd("CocList quickfix")
    end

    g.fzf_action = {
      ["ctrl-l"] = _G.MUtils.build_coc_quickfix_list,
      ["ctrl-t"] = "tab split",
      ["ctrl-s"] = "split",
      ["ctrl-v"] = "vsplit",
    }
    g.fzf_layout = { down = "100%" }
  end,
  config = function()
    map("n", "<c-]>", "<ESC>:Tags <C-R><C-W><CR>", { silent = true })
    map("n", "<c-p>", ":Files<CR>", { silent = true })
  end,
}
