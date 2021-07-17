----------------------------------------------------
-- https://github.com/matze/vim-move
----------------------------------------------------
g.move_key_modifier = 'C'
g.vim_printer_items = {
  javascript = 'console.log({ {$} });',
  ruby = 'Logger.new($stdout).debug("~~~> {$} = #{{$}.inspect}")'
}
