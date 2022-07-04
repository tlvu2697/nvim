----------------------------------------------------
-- https://github.com/lewis6991/gitsigns.nvim
----------------------------------------------------
require("gitsigns").setup({
  signs = {
    add          = { hl = "GitSignsAdd",    text = "", numhl = "GitSignsAddNr",    linehl = "GitSignsAddLn" },
    change       = { hl = "GitSignsChange", text = "", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    delete       = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    topdelete    = { hl = "GitSignsDelete", text = "", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    changedelete = { hl = "GitSignsChange", text = "", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
  },
  numhl = true,
  linehl = false,
  keymaps = {
    noremap          = true,
    buffer           = true,
    ["n ]c"]         = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
    ["n [c"]         = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },
    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
  },
})
