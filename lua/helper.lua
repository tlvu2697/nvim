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
