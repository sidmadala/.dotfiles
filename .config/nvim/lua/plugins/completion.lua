-- Configuration for completion prompts


-- Autopopup
vim.g.completion_enable_auto_popup = 1
vim.g.completion_trigger_keyword_length = 2  -- 2 letters before completion

-- Completion timing
vim.g.completion_timer_cycle = 40  -- 80

-- Keymaps
vim.cmd [[ inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" ]]	-- Use <Tab> to navigate down popup menu
vim.cmd [[ inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" ]]	-- Use <S-Tab> to navigate up popup menu

-- Snippets
vim.g.completion_enable_snippet = "UltiSnips"

-- Options
vim.cmd [[hi markdownError guifg=None guibg=None]]
-- vim.g.completion_enable_auto_paren = 1			-- Complete parentheses for functions


-- Attach on every buffer
vim.api.nvim_command([[ autocmd BufEnter * lua require'completion'.on_attach() ]])



