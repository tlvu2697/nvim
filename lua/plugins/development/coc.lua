----------------------------------------------------
-- https://github.com/neoclide/coc.nvim
----------------------------------------------------
return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    g.coc_global_extensions = {
      "coc-lists",
      -- https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
      "coc-eslint",
      "coc-json",
      "coc-prettier",
      "coc-pyright",
      "coc-sql",
      "coc-lua",
      "coc-tsserver",
      "coc-xml",
      "coc-yaml",
      -- https://github.com/neoclide/coc-sources
      "coc-dictionary",
      "coc-tag",
      "coc-word",
    }

    ----------------------------------------------------
    -- SECTION: Initialization
    ----------------------------------------------------
    _G.CocUtils = {}

    _G.CocUtils.check_back_space = function()
      local col = vim.fn.col(".") - 1
      return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
    end

    _G.CocUtils.show_docs = function()
      local cw = vim.fn.expand("<cword>")
      if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
        vim.api.nvim_command("h " .. cw)
      elseif vim.api.nvim_eval("coc#rpc#ready()") then
        vim.fn.CocActionAsync("doHover")
      else
        vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
      end
    end

    ----------------------------------------------------
    -- SECTION: <TAB> for Completion
    ----------------------------------------------------
    local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
    map(
      "i",
      "<TAB>",
      'coc#pum#visible() ? coc#pum#next(1) : v:lua.CocUtils.check_back_space() ? "<TAB>" : coc#refresh()',
      opts
    )
    map("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

    ----------------------------------------------------
    -- SECTION: Remap <C-u> and <C-d> for scroll float windows/popups.
    ----------------------------------------------------
    local opts = { silent = true, nowait = true, expr = true }
    map("n", "<C-u>", 'coc#float#has_scroll() ? coc#float#scroll(0, 5) : "<C-u>"', opts)
    map("n", "<C-d>", 'coc#float#has_scroll() ? coc#float#scroll(1, 5) : "<C-d>"', opts)
    map("i", "<C-u>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0, 5)<cr>" : "<Left>"', opts)
    map("i", "<C-d>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1, 5)<cr>" : "<Right>"', opts)
    map("v", "<C-u>", 'coc#float#has_scroll() ? coc#float#scroll(0, 5) : "<C-u>"', opts)
    map("v", "<C-d>", 'coc#float#has_scroll() ? coc#float#scroll(1, 5) : "<C-d>"', opts)

    map("n", "<leader>?", "<CMD>lua _G.CocUtils.show_docs()<CR>", { silent = true })

    ----------------------------------------------------
    -- SECTION: GoTo Code Navigation
    ----------------------------------------------------
    local opts = { silent = true }

    map("n", "gdd", "<Plug>(coc-definition)", opts)
    map("n", "gdv", ":call CocAction('jumpDefinition', 'vsplit')<cr>", opts)
    map("n", "gds", ":call CocAction('jumpDefinition', 'split')<cr>", opts)
    map("n", "gdt", ":call CocAction('jumpDefinition', 'tabedit')<cr>", opts)
    map("n", "gii", "<Plug>(coc-implementation)", opts)
    map("n", "giv", ":call CocAction('jumpImplementation', 'vsplit')<cr>", opts)
    map("n", "gis", ":call CocAction('jumpImplementation', 'split')<cr>", opts)
    map("n", "git", ":call CocAction('jumpImplementation', 'tabedit')<cr>", opts)
    map("n", "gy", "<Plug>(coc-type-definition)", opts)
    map("n", "gr", "<Plug>(coc-references)", opts)

    ----------------------------------------------------
    -- SECTION: Linting -> Fixing
    ----------------------------------------------------
    local opts = { silent = true }
    map("v", "<leader>ff", "<Plug>(coc-format-selected)", opts)
    map("n", "<leader>ff", ":call CocActionAsync('format')<cr>", opts)

    ----------------------------------------------------
    -- SECTION: Diagnostics -> Taking Action
    ----------------------------------------------------
    local opts = { silent = true, nowait = true }
    map("n", "[d", "<Plug>(coc-diagnostic-prev)", opts)
    map("n", "]d", "<Plug>(coc-diagnostic-next)", opts)
    map("x", "<leader>ac", "<Plug>(coc-codeaction-selected)", opts) --> CodeActions to selected code block (`<leader>aap` for current paragraph)
    map("v", "<leader>ac", "<Plug>(coc-codeaction-selected)", opts) --> CodeActions to visual block
    map("n", "<leader>al", "<Plug>(coc-codeaction-cursor)", opts)   --> CodeActions at cursor position
    map("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)          --> CodeActions to current buffer
    map("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)         --> Apply preferred quickfix action on current line

    ----------------------------------------------------
    -- SECTION: Diagnostics -> Refactoring
    ----------------------------------------------------
    local opts = { silent = true }
    map("n", "<leader>re", "<Plug>(coc-codeaction-refactor)", opts)
    map("v", "<leader>re", "<Plug>(coc-codeaction-refactor-selected)", opts)
    map("n", "<leader>rn", "<Plug>(coc-rename)", opts)

    ----------------------------------------------------
    -- SECTION: Create User Command
    ----------------------------------------------------
    vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})
    vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

    ----------------------------------------------------
    -- SECTION: Mappings
    ----------------------------------------------------
    local opts = { silent = true, nowait = true }
    map("n", "<space>cl", ":<C-u>CocList <cr>", opts)            --> CocList
    map("n", "<space>ca", ":<C-u>CocList diagnostics<cr>", opts) --> Show all diagnostics
    map("n", "<space>ce", ":<C-u>CocList extensions<cr>", opts)  --> Manage extensions
    map("n", "<space>cc", ":<C-u>CocList commands<cr>", opts)    --> Show commands
    map("n", "<space>co", ":<C-u>CocList outline<cr>", opts)     --> Find symbol of current document
    map("n", "<space>cq", ":<C-u>CocList quickfix<cr>", opts)    --> Quickfix list
    map("n", "<space>cs", ":<C-u>CocList -I symbols<cr>", opts)  --> Search workspace symbols
    map("n", "<space>cj", ":<C-u>CocNext<cr>", opts)             --> Do default action for next item
    map("n", "<space>ck", ":<C-u>CocPrev<cr>", opts)             --> Do default action for previous item
    map("n", "<space>cp", ":<C-u>CocListResume<cr>", opts)       --> Resume latest coc list

    ----------------------------------------------------
    -- SECTION: Misc
    ----------------------------------------------------
    vim.api.nvim_create_autocmd("User", {
      pattern = "CocStatusChange",
      callback = function()
        vim.g.trimmed_coc_status = vim.trim(vim.g.coc_status)
        require("lualine").refresh()
      end,
    })
  end,
}
