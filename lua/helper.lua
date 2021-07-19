---------------------------------------------------
-- https://neovim.io/doc/user/lua.html
----------------------------------------------------
-- SECTION: Global Variables
----------------------------------------------------
cmd = vim.cmd -- Executes multiple lines of Vimscript at once
fn  = vim.fn  -- Invokes |vim-function| or |user-function| {func} with arguments {...}
g   = vim.g   -- Global (|g:|) editor variables
env = vim.env -- Environment variables defined in the editor session
opt = vim.opt -- Conveniences for setting and controlling options
----------------------------------------------------
-- SECTION: MUtils
----------------------------------------------------
_G.MUtils= {}

_G.MUtils.open_in_browser = function(url)
  local command = vim.loop.os_uname().sysname == 'Darwin' and 'open' or 'xdg-open'
  require('plenary.job'):new({ command = command, args = { url } }):start()
end
----------------------------------------------------
-- SECTION: Functions
----------------------------------------------------
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function tableMerge(t1, t2)
  for k, v in pairs(t2) do
    if type(v) == 'table' then
      if type(t1[k] or false) == 'table' then
        tableMerge(t1[k] or {}, t2[k] or {})
      else
        t1[k] = v
      end
    else
      t1[k] = v
    end
  end
  return t1
end

function tablesMerge(...)
  local mergedTables = {}

  for i, _table in ipairs({...}) do
    mergedTables = tableMerge(mergedTables, _table)
  end

  return mergedTables
end

function sendEscape()
  vim.api.nvim_feedkeys(
    vim.api.nvim_replace_termcodes('<cr>', true, false, true),
    'm',
    true
  )
end
