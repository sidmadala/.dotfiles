-- LSP for neovim

if not pcall(require, 'vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

-- Imports
local lspconfig = require("lspconfig")
local completion = require("completion")
local diagnostic = require("vim.lsp.diagnostic")

-- Functions

local custom_attach = function()

	-- Attaching completion and diagnostics for buffer
	completion.on_attach()


	-- Keymaps
	


	print("LSP Attached")
end


-- LSP Servers

-- Lua
lspconfig.sumneko_lua.setup({
	on_attach = custom_attach

	-- settings = {
      -- Lua = {
        -- runtime = {
            -- version = "LuaJIT", 
            -- path = vim.split(package.path, ";")
            -- },
        -- diagnostics = {
          -- enable = true,
          -- globals = {
            -- "vim",
            -- "describe",
            -- "it",
            -- "before_each",
            -- "after_each",
            -- "teardown",
            -- "pending",
          -- },
        -- },
        -- completion = {keywordSnippet = "Disable"},
        -- workspace = {
          -- library = {
            -- -- This loads the `lua` files from nvim into the runtime.
            -- [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            -- [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
          -- },
        -- },
      -- },
    -- },
})


-- Python
lspconfig.pyls.setup{
	on_attach = custom_attach
}

-- Golang
lspconfig.gopls.setup{
	on_attach = custom_attach
}

-- Rust
lspconfig.rust_analyzer.setup{
	on_attach = custom_attach
}

-- Latex
lspconfig.texlab.setup{
	on_attach = custom_attach
}

-- Settings

-- Diagnostic

-- Completion
vim.cmd [[ inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>" ]]	-- Use <Tab> to navigate down popup menu
vim.cmd [[ inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" ]]	-- Use <S-Tab> to navigate up popup menu
-- let g:completion_enable_auto_paren = 1									-- Complete parentheses for functions
-- vim.opt.completeopt = { "menuone" , "noinsert", "noselect" }				-- Set completeopt to have a better completion experience
vim.cmd [[ set completeopt=menuone,noinsert,noselect ]]
vim.cmd [[ set shortmess+=c ]]												-- Avoid showing message extra message when using completion

