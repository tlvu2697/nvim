----------------------------------------------------
-- SECTION: Theme
----------------------------------------------------
cmd([[
  Plug 'itchyny/lightline.vim'
  Plug 'joshdick/onedark.vim'
  call plug#end()

  colorscheme onedark
]])

opt.background = 'dark'
opt.encoding = 'UTF-8'
opt.laststatus = 2
opt.termguicolors = true

g.lightline = {
  colorscheme = 'onedark',
  active = {
    left = {
      { 'short_mode' },
      { 'readonly', 'filename', 'modified' }
    },
    right = {
      { 'lineinfo' },
      { 'filetype' }
    }
  },
  inactive = {
    left = { { 'filename' } },
    right = { { 'lineinfo' } }
  },
  component = {
    short_mode = '%{toupper(mode())}',
  },
}
g['lightline#bufferline#enable_devicons'] = 0
