-- LSP setup for nvim
local diagnostic = require('diagnostic')
local completion = require('completion')
local nvim_lsp = require('nvim_lsp')

local on_attach = function(client, bufnr)
  diagnostic.on_attach(client, bufnr)
  completion.on_attach(client, bufnr)

  -- Keybindings for LSPs
  -- Note these are in on_attach so that they don't override bindings in a non-LSP setting
  vim.fn.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "1gD", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "g0", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", {noremap = true, silent = true})
  vim.fn.nvim_set_keymap("n", "gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", {noremap = true, silent = true})
end

-- Python
nvim_lsp.pyls.setup{
	on_attach = on_attach
}

-- Golang 
nvim_lsp.gopls.setup{
	on_attach = on_attach
}

-- Rust
nvim_lsp.rust_analyzer.setup{
	on_attach = on_attach
}

-- nvim_lsp.rls.setup{
-- 	on_attach = on_attach
-- }

-- Javascript 
-- nvim_lsp.tsserver.setup{
-- on_attach = on_attach
-- }
