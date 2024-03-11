require "_lazy_"

local start_time = vim.fn.reltime()

require "helper"
require "settings"
require "plugins"
require "mappings"

vim.api.nvim_echo(
  { { fn.printf("Loaded [%.0fms]", fn.reltimefloat(fn.reltime(start_time)) * 1000), "None" } },
  false,
  {}
)
