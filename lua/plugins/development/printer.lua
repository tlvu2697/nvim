----------------------------------------------------
-- https://github.com/matze/vim-move
----------------------------------------------------
cmd([[
  Plug 'meain/vim-printer'
  call plug#end()
]])

g.move_key_modifier = 'C'
g.vim_printer_items = {
  javascript = 'console.log({ {$} });',
  ruby = 'Logger.new($stdout).debug("~~~> {$} = #{{$}.inspect}")'
}
