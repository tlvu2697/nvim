local M = {}

-- Does: Function to execute macro over a visual range
M.visualMacroExecute = function()
  vim.cmd('echo "@".getcmdline()')
  vim.cmd([[execute ":'<,'>normal @".nr2char(getchar())]])
end

return M
