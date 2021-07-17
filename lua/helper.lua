---------------------------------------------------
-- https://neovim.io/doc/user/lua.html
---------------------------------------------------
cmd = vim.cmd -- Executes multiple lines of Vimscript at once
fn  = vim.fn  -- Invokes |vim-function| or |user-function| {func} with arguments {...}
g   = vim.g   -- Global (|g:|) editor variables
env = vim.env -- Environment variables defined in the editor session
opt = vim.opt -- Conveniences for setting and controlling options

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

cmd([[
  command! -nargs=? Browse lua _G.open_in_browser(<q-args>)
]])

local job = require('plenary.job')

_G.open_in_browser = function(url)
  local command = vim.loop.os_uname().sysname == 'Darwin' and 'open' or 'xdg-open'
  job:new({ command = command, args = { url } }):start()
end
