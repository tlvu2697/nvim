cmd([[
  Plug 'nvim-lua/plenary.nvim'
  call plug#end()
]])

cmd([[
  command! -nargs=? Browse lua _G.open_in_browser(<q-args>)
]])

local job = require('plenary.job')
_G.open_in_browser = function(url)
  local command = vim.loop.os_uname().sysname == 'Darwin' and 'open' or 'xdg-open'
  job:new({ command = command, args = { url } }):start()
end
