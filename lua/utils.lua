local M = {}

-- https://github.com/seblj/dotfiles/blob/master/nvim/lua/seblj/utils/init.lua
M.reloadConfig = function()
  vim.cmd('source ~/.config/nvim/init.lua')
  for pack, _ in pairs(package.loaded) do
    if pack:match('^config') or pack:match('^plugins') or pack:match('^utils') then
      package.loaded[pack] = nil
      require(pack)
    end
  end
  vim.cmd(':PackerCompile<cr>')
end

-- Does: Function to execute macro over a visual range
M.visualMacroExecute = function()
  vim.cmd('echo "@".getcmdline()')
  vim.cmd([[execute ":'<,'>normal @".nr2char(getchar())]])
end

return M
