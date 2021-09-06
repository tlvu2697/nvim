----------------------------------------------------
-- https://github.com/sindrets/diffview.nvim
----------------------------------------------------
local cb = require'diffview.config'.diffview_callback

require'diffview'.setup {
  diff_binaries = false,
  file_panel = {
    width = 40,
  },
  key_bindings = {
    disable_defaults = true,
    view = {
      ['<tab>']      = cb('select_next_entry'), -- Open the diff for the next file
      ['<s-tab>']    = cb('select_prev_entry'), -- Open the diff for the previous file
      ['<leader>0']  = cb('focus_files'),      -- Bring focus to the files panel
      ['<leader>ft'] = cb('toggle_files'),     -- Toggle the files panel.
    },
    file_panel = {
      ['j']          = cb('next_entry'),        -- Bring the cursor to the next file entry
      ['k']          = cb('prev_entry'),        -- Bring the cursor to the previous file entry.
      ['<cr>']       = cb('select_entry'),      -- Open the diff for the selected entry.
      ['o']          = cb('select_entry'),
      ['R']          = cb('refresh_files'),     -- Update stats and entries in the file list.
      ['<tab>']      = cb('select_next_entry'), --
      ['<s-tab>']    = cb('select_prev_entry'),
      ['<leader>0']  = cb('focus_files'),
      ['<leader>ft'] = cb('toggle_files'),
    }
  }
}
