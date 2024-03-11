----------------------------------------------------
-- https://github.com/matze/vim-move
----------------------------------------------------
return {
  "matze/vim-move",
  init = function()
    g.move_key_modifier = "C"
    g.move_key_modifier_visualmode = "C"
  end,
}
