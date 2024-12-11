----------------------------------------------------
-- SECTION: Windows
----------------------------------------------------
map("n", "<space>0", ":TreeFind<CR>", { silent = true })                              --> Window > Find
map("n", "<space>1", ":exe 1 . 'wincmd w'<CR>", { silent = true })                        --> Window 1
map("n", "<space>2", ":exe 2 . 'wincmd w'<CR>", { silent = true })                        --> Window 2
map("n", "<space>3", ":exe 3 . 'wincmd w'<CR>", { silent = true })                        --> Window 3
map("n", "<space>4", ":exe 4 . 'wincmd w'<CR>", { silent = true })                        --> Window 4
map("n", "<space>5", ":exe 5 . 'wincmd w'<CR>", { silent = true })                        --> Window 5
map("n", "<space>6", ":exe 6 . 'wincmd w'<CR>", { silent = true })                        --> Window 6
map("n", "<space>7", ":exe 7 . 'wincmd w'<CR>", { silent = true })                        --> Window 7
map("n", "<space>8", ":exe 8 . 'wincmd w'<CR>", { silent = true })                        --> Window 8
map("n", "<space>9", ":exe 9 . 'wincmd w'<CR>", { silent = true })                        --> Window 9
map("n", "<space>wv", ":wincmd v<CR>", { silent = true })                                 --> Window Vertical
map("n", "<space>ws", ":wincmd s<CR>", { silent = true })                                 --> Window Split
map("n", "<space>w=", ":wincmd =<CR>", { silent = true })                                 --> Window Balance Area
map("n", "<space>j", ":wincmd j<CR>", { silent = true })                                  --> Window Down
map("n", "<space>k", ":wincmd k<CR>", { silent = true })                                  --> Window Up
map("n", "<space>h", ":wincmd h<CR>", { silent = true })                                  --> Window Right
map("n", "<space>l", ":wincmd l<CR>", { silent = true })                                  --> Window Left
map("n", "<space>ww", ":wincmd w<CR>", { silent = true })                                 --> Other Window
map("n", "<space>wr", ":wincmd r<CR>", { silent = true })                                 --> Rotate Window
map("n", "<space>w<S-k>", ":wincmd <S-k><CR>", { silent = true })                         --> Move Window Very Top
map("n", "<space>w<S-j>", ":wincmd <S-j><CR>", { silent = true })                         --> Move Window Very Bottom
map("n", "<space>w<S-h>", ":wincmd <S-h><CR>", { silent = true })                         --> Move Window Far Right
map("n", "<space>w<S-l>", ":wincmd <S-l><CR>", { silent = true })                         --> Move Window Far Left
map("n", "<space>wm", ":TreeClose<CR>:MaximizerToggle<CR>", { silent = true })        --> Window Maximize
map("v", "<space>wm", "<ESC>:TreeClose<CR>:MaximizerToggle<CR>gv", { silent = true }) --> Window Maximize
----------------------------------------------------
-- SECTION: Tabs
----------------------------------------------------
map("n", "<C-t>", ":tabnew<CR>", { silent = true })   --> Tab > New
map("n", "<C-w>", ":tabclose<CR>", { silent = true }) --> Tab > Close
map("n", "<space><Tab>", "gt", { silent = true })     --> Tab > Next
map("n", "<space><S-Tab>", "gT", { silent = true })   --> Tab > Previous
----------------------------------------------------
-- SECTION: Files
----------------------------------------------------
map("n", "<space><space>", "<ESC>:w<CR>", { silent = true })                                                      --> File > Save
map("n", "<space>e", "<ESC>:e<CR>", { silent = true })                                                            --> File > Refresh
map("n", "<space>q", "<ESC>:q<CR>", { silent = true })                                                            --> File > Close
map("n", "<space>wq", "<ESC>:wq<CR>", { silent = true })                                                          --> File > Save & Close
map("n", "<space>ft", ":TreeToggle<CR>", { silent = true })                                                       --> File > Tree
map("n", "<space>fec", ":vsplit config/application.yml<CR>", { silent = true })                                   --> File > Editor > Rails application.yml
map("n", "<space>fed", ":vsplit ~/.config/nvim/init.lua<CR>", { silent = true })                                  --> File > Editor > Definition
map("n", "<space>fez", ":vsplit ~/.zshrc<CR>", { silent = true })                                                 --> File > Editor > ZSH
map("n", "<space>fet", ":vsplit ~/.tmux.conf<CR>", { silent = true })                                             --> File > Editor > Tmux
map("n", "<space>ff", ":Files %:p:h<CR>", { silent = true })                                                      --> File > Find > File in Current Directory
map("n", "<space>fh", ":History<CR>", { silent = true })                                                          --> File > Find > File in History
map("n", "<space>fc", ':saveas <C-R>=expand("%:p:h")<CR>/')                                                       --> File > Copy
map("n", "<space>fyd", ':let @+=fnamemodify(expand("%:h"), ":~:.") | echo @+<CR>', { silent = true })             --> File > Yank > Directory Path
map("n", "<space>fyy", ':let @+=fnamemodify(expand("%"), ":~:.") | echo @+<CR>', { silent = true })               --> File > Yank > Relative File Path
map("n", "<space>fyl", ':let @+=fnamemodify(expand("%"), ":~:.").":".line(".") | echo @+<CR>', { silent = true }) --> File > Yank > Relative File Path with Line number
map("n", "<space>fyY", ':let @+=expand("%:p") | echo @+<CR>', { silent = true })                                  --> File > Yank > Full File Path
map("n", "<space>fyn", ':let @+=expand("%:t:r") | echo @+<CR>', { silent = true })                                --> File > Yank > File Name without extension
map("n", "<space>fyN", ':let @+=expand("%:t") | echo @+<CR>', { silent = true })                                  --> File > Yank > File Name with extension
----------------------------------------------------
-- SECTION: Session
----------------------------------------------------
map("n", "<space>sq", ":tabdo TreeClose<CR>:mksession! Session.vim<CR>:qa!<CR>") --> Session > Save & Quit
map("n", "<space>sl", ":source Session.vim<CR>", { silent = true })            --> Session > Load
----------------------------------------------------
-- SECTION: Search
----------------------------------------------------
-- Buffer
map("n", "<leader>/", ":BLines<CR>", { silent = true })
map("v", "#", "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", { silent = true })
map("v", "*", "y?\\V<C-R>=escape(@\",'/\\')<CR><CR>", { silent = true })
map("n", "#", "/\\<<C-R>=expand('<cword>')<CR>\\><CR>", { silent = true })
map("n", "*", "?\\<<C-R>=expand('<cword>')<CR>\\><CR>", { silent = true })
-- Space
map("n", "<space>/", ":Rg<space>")
map("n", "<space>su", ":Rg<up><CR>", { silent = true })
map("n", "<space>*", ":Rg <C-R><C-W><CR>", { silent = true })
map("v", "<space>*", "y:Rg <C-R>=escape(@\",'/\\')<CR><CR>", { silent = true })
----------------------------------------------------
-- SECTION: Buffers
----------------------------------------------------
map("n", "<space>b", "<C-^><CR>", { silent = true })       --> Last Buffer
map("n", "<space>bb", ":Buffers<CR>", { silent = true })   --> List Buffers
map("n", "<space>bd", ":bdelete<CR>", { silent = true })   --> Delete Buffer
map("n", "<space>bn", ":bnext<CR>", { silent = true })     --> Next Buffer
map("n", "<space>bp", ":bprevious<CR>", { silent = true }) --> Previous Buffer
----------------------------------------------------
-- SECTION: Macro
----------------------------------------------------
map("x", "@", ':<C-u><cmd>lua require("utils").visualMacroExecute()<CR>') --> Apply macro on visual selection
----------------------------------------------------
-- SECTION: Git
----------------------------------------------------
-- Buffer
map("n", "<leader>gb", ":G blame<CR>", { silent = true })         --> Git Blame
map("n", "<leader>gl", ":GBrowse<CR>", { silent = true })         --> Git Browse
map("v", "<leader>gl", ":'<,'>GBrowse<CR>", { silent = true })    --> Git Browse in Visual mode
map("n", "<leader>ge", ":Gedit<CR>", { silent = true })           --> Git Edit
map("n", "<leader>gc", ":BCommits<CR>", { silent = true })        --> Git Buffer Commits
map("n", "<leader>gvd", ":Gvdiffsplit<CR>", { silent = true })    --> Git Diff
-- Space
map("n", "<space>gst", ":GFiles?<CR>", { silent = true })         --> Git Status
map("n", "<space>gpr", ":TermGitCreatePR<CR>", { silent = true }) --> Git Create Pull Request
----------------------------------------------------
-- SECTION: CircleCI
----------------------------------------------------
map("n", "<space>cib", ":TermCIBranch<CR>", { silent = true }) --> CircleCI for branch
----------------------------------------------------
-- SECTION: Test
----------------------------------------------------
map("n", "<leader>tb", ":TestFile<CR>", { silent = true })    --> Run test buffer
map("n", "<leader>tt", ":TestNearest<CR>", { silent = true }) --> Run test at point
map("n", "<leader>tl", ":TestLast<CR>", { silent = true })    --> Run last test
cmd([[
  augroup BufferTest
    autocmd!
    autocmd FileType javascript nnoremap <leader>tb :call VimuxRunCommand('yarn test' . ' ' . expand("%"))<CR>|
    autocmd FileType javascript nnoremap <leader>tl :VimuxRunLastCommand<CR>|

    autocmd FileType typescriptreact nnoremap <leader>tb :call VimuxRunCommand('yarn test' . ' ' . expand("%"))<CR>|
    autocmd FileType typescriptreact nnoremap <leader>tl :VimuxRunLastCommand<CR>|
  augroup END
]])
----------------------------------------------------
-- SECTION: Register
----------------------------------------------------
-- map('v', 'p', '"_dP')                                   --> Don't copy the replaced text after pasting in visual mode
map("n", "<space>re", ":registers<CR>", { silent = true }) --> Registers
map("", "<space>p", '"0p', { silent = true })              --> Paste from register #0
map("", "<space>P", '"0P', { silent = true })              --> Paste from register #0
----------------------------------------------------
-- SECTION: Misc
----------------------------------------------------
map("n", "K", "i<CR><ESC>", { silent = true }) --> Break line at cursor
map("", "$", "g_", { silent = true })          --> To endline but skip linebreak
map("", "Q", "<Nop>", { silent = true })       --> Disable Ex mode
