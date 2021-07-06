----------------------------------------------------
-- https://github.com/kyazdani42/nvim-tree.lua
----------------------------------------------------
cmd([[
  Plug 'kyazdani42/nvim-tree.lua'
  call plug#end()
]])

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

g.nvim_tree_disable_window_picker = 1
g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 0,
  folder_arrows = 1,
}

local mc_cb = tree_cb('copy') .. tree_cb('paste') .. '<cmd>call feedkeys("r")<CR>'

g.nvim_tree_bindings = {
  { key = 'v',  cb = tree_cb('vsplit') },
  { key = 's',  cb = tree_cb('split') },
  { key = 't',  cb = tree_cb('tabnew') },
  { key = 'ma', cb = tree_cb('create') },
  { key = 'md', cb = tree_cb('remove') },
  { key = 'mm', cb = tree_cb('rename') },
  { key = 'mc', cb = mc_cb }
}
