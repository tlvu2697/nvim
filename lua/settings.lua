----------------------------------------------------
-- SECTION: Important
----------------------------------------------------
g.mapleader = ","

-- disable some default providers
for _, provider in ipairs { "node", "perl", "python3", "ruby" } do
  g["loaded_" .. provider .. "_provider"] = 0
end
----------------------------------------------------
-- SECTION: General
----------------------------------------------------
cmd("filetype plugin indent on")
opt.swapfile = false
opt.autoindent = true
opt.smartindent = true
opt.autoread = true
opt.clipboard = { "unnamed", "unnamedplus" }
opt.cursorline = false
opt.expandtab = true
opt.modeline = false
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.splitright = true
opt.splitbelow = true
opt.re = 0
opt.wildmenu = true
opt.wrap = true
vim.wo.wrap = true
opt.backup = false
opt.writebackup = false
opt.updatetime = 100
opt.signcolumn = "yes"
opt.shortmess:append({ c = true })
opt.switchbuf:append({ "useopen" })
vim.o.mouse = ""
----------------------------------------------------
-- SECTION: Theme
----------------------------------------------------
opt.encoding = "UTF-8"
opt.laststatus = 2
opt.termguicolors = true
opt.showmode = false
----------------------------------------------------
-- SECTION: Search
----------------------------------------------------
opt.hlsearch = true
opt.ignorecase = true
opt.inccommand = "split"
opt.incsearch = true
opt.smartcase = true
map("n", "<CR>", "<ESC>:noh<CR>", { silent = true })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
----------------------------------------------------
-- SECTION: Folding
----------------------------------------------------
opt.foldenable = true
opt.foldlevelstart = 5
opt.foldnestmax = 5
opt.foldmethod = "indent"
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
