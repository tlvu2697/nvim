----------------------------------------------------
-- https://github.com/windwp/nvim-autopairs
----------------------------------------------------

return {
  "windwp/nvim-autopairs",
  init = function()
    g.completion_confirm_key = ""
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")
    npairs.setup({ map_cr = false })

    -- Confirm Completion with coc.nvim
    _G.MUtils.completion_confirm = function()
      if fn["coc#pum#visible"]() ~= 0 then
        return fn["coc#pum#stop"]() .. npairs.autopairs_cr()
      end

      return npairs.autopairs_cr()
    end

    map("i", "<CR>", "v:lua._G.MUtils.completion_confirm()", { expr = true, noremap = true, silent = true })

    npairs.add_rules(require("nvim-autopairs.rules.endwise-ruby"))
    npairs.add_rules({
      Rule(" ", " "):with_pair(function(opts)
        local pair = opts.line:sub(opts.col - 1, opts.col)
        return vim.tbl_contains({ "()", "[]", "{}" }, pair)
      end),
      Rule("( ", " )")
          :with_pair(function()
            return false
          end)
          :with_move(function(opts)
            return opts.prev_char:match(".%)") ~= nil
          end)
          :use_key(")"),
      Rule("{ ", " }")
          :with_pair(function()
            return false
          end)
          :with_move(function(opts)
            return opts.prev_char:match(".%}") ~= nil
          end)
          :use_key("}"),
      Rule("[ ", " ]")
          :with_pair(function()
            return false
          end)
          :with_move(function(opts)
            return opts.prev_char:match(".%]") ~= nil
          end)
          :use_key("]"),
    })
  end,
}
