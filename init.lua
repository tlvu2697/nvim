local start_time = vim.fn.reltime()

require('plugins')

require('helper')
require('settings')
require('theme')
require('mappings')

for _, path in ipairs({
  'basic',
  'development',
  'git',
  'languages'
}) do
  -- requireAllAt(path)
  require('load-all')(vim.fn.stdpath('config')..'/lua/plugins/'..path)
end

print(vim.fn.printf('Loaded [%.0fms]', vim.fn.reltimefloat(vim.fn.reltime(start_time))*1000))
