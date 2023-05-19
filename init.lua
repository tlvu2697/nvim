local start_time = vim.fn.reltime()

vim.loader.enable()
require("plugins")

require("helper")
require("settings")
require("mappings")

for _, path in ipairs({
  "basic",
  "development",
  "git",
  "language_support",
  "languages",
}) do
  -- requireAllAt(path)
  require("load-all")(vim.fn.stdpath("config") .. "/lua/plugins/" .. path)
end

vim.api.nvim_echo(
  { { vim.fn.printf("Loaded [%.0fms]", vim.fn.reltimefloat(vim.fn.reltime(start_time)) * 1000), "None" } },
  false,
  {}
)

require("theme")
