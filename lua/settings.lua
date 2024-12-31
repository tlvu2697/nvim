----------------------------------------------------
-- SECTION: Important
g.mapleader = ","

-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
  g["loaded_" .. provider .. "_provider"] = 0
end
----------------------------------------------------
-- SECTION: General Options
vim.cmd("filetype plugin indent on")             -- Enable filetype plugins and indentation
vim.opt.swapfile = false                         -- Disable swapfile
vim.opt.autoread = true                          -- Reload files edited externally
vim.opt.clipboard = { "unnamed", "unnamedplus" } -- Use system clipboard
vim.opt.modeline = false                         -- Disable modeline
vim.opt.updatetime = 100                         -- Faster completion and diagnostics updates
vim.opt.encoding = "UTF-8"                       -- Set UTF-8 encoding
vim.opt.wrap = true                              -- Enable line wrapping
vim.wo.wrap = true                               -- Enable wrapping for current window
vim.o.mouse = ""                                 -- Disable mouse support
----------------------------------------------------
-- SECTION: Indentation and Tabs
vim.opt.autoindent = true                        -- Enable auto-indentation
vim.opt.smartindent = true                       -- Enable smart indentation
vim.opt.expandtab = true                         -- Use spaces instead of tabs
vim.opt.tabstop = 2                              -- Number of spaces for a tab
vim.opt.shiftwidth = 2                           -- Number of spaces for indentation
vim.opt.softtabstop = 2                          -- Number of spaces for <Tab> in insert mode
----------------------------------------------------
-- SECTION: Window Management
vim.opt.splitright = true                        -- Vertical splits open to the right
vim.opt.splitbelow = true                        -- Horizontal splits open below
----------------------------------------------------
-- SECTION: Search and Completion
vim.opt.re = 2                                   -- Use auto regex engine
vim.opt.wildmenu = true                          -- Enable command-line completion menu
vim.opt.shortmess:append({ c = true })           -- Reduce completion messages
vim.opt.switchbuf:append({ "useopen" })          -- Reuse open buffers
----------------------------------------------------
-- SECTION: Backup and Update
vim.opt.backup = false                           -- Disable backup files
vim.opt.writebackup = false                      -- Disable write backup files
----------------------------------------------------
-- SECTION: Sign Column and UI
vim.opt.signcolumn = "yes"                       -- Always show the sign column
vim.opt.number = true                            -- Show absolute line numbers
vim.opt.relativenumber = true                    -- Show relative line numbers
vim.opt.cursorline = false                       -- Disable cursorline highlight
vim.opt.termguicolors = true                     -- Enable GUI colors in the terminal
vim.opt.laststatus = 2                           -- Always show status line
vim.opt.showmode = false                         -- Hide mode information in the status line
----------------------------------------------------
-- SECTION: Search Settings
vim.opt.hlsearch = true                          -- Highlight search results
vim.opt.ignorecase = true                        -- Case-insensitive search
vim.opt.inccommand = "split"                     -- Live preview for search/replace
vim.opt.incsearch = true                         -- Highlight matches as you type
vim.opt.smartcase = true                         -- Smart case sensitivity in search
----------------------------------------------------
-- SECTION: Folding
vim.opt.foldenable = true                        -- Enable code folding
vim.opt.foldlevelstart = 5                       -- Start with folds at level 5
vim.opt.foldnestmax = 5                          -- Maximum fold nesting
vim.opt.foldmethod = "indent"                    -- Fold based on indentation



map("n", "<CR>", "<ESC>:noh<CR>", { silent = true })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
-- opt.foldexpr= 'nvim_treesitter#foldexpr()'
map("n", "zV", ":normal zMzvzz<CR>")
----------------------------------------------------
-- SECTION: Commands
----------------------------------------------------
cmd("command! -nargs=? Browse lua _G.MUtils.open_in_browser(<q-args>)")
----------------------------------------------------
-- SECTION: Language Specific
----------------------------------------------------
vim.api.nvim_create_augroup("LanguageSpecific", {})

vim.api.nvim_create_autocmd("FileType", {
  group = "LanguageSpecific",
  pattern = "ruby",
  command = "setlocal indentkeys-=.",
})

vim.api.nvim_create_autocmd("FileType", {
  group = "LanguageSpecific",
  pattern = "python",
  command = "let b:coc_root_patterns = ['.git', '.env']",
})

vim.api.nvim_create_autocmd("FileType", {
  group = "LanguageSpecific",
  pattern = "cs",
  command = "setlocal shiftwidth=4 tabstop=4",
})

vim.api.nvim_create_autocmd("BufNewFile", {
  group = "LanguageSpecific",
  pattern = "*.js",
  command = "set filetype=javascript.jsx",
})

vim.api.nvim_create_autocmd("BufRead", {
  group = "LanguageSpecific",
  pattern = "*.js",
  command = "set filetype=javascript.jsx",
})

vim.api.nvim_create_autocmd("BufNewFile", {
  group = "LanguageSpecific",
  pattern = "*.erb",
  command = "set filetype=html",
})

vim.api.nvim_create_autocmd("BufRead", {
  group = "LanguageSpecific",
  pattern = "*.erb",
  command = "set filetype=html",
})
