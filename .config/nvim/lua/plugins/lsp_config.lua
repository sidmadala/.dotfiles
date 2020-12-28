-- LSP for neovim

if not pcall(require, 'vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

-- Imports
local lspconfig = require("lspconfig")
local completion = require("completion")
local diagnostic = require("vim.lsp.diagnostic")
local util = require("lspconfig.util")

-- Functions

local custom_attach = function(client)

	-- Attaching completion to buffer
	completion.on_attach(client)

	-- Keymaps
	vimp.nnoremap({"silent"}, "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
	vimp.nnoremap({"silent"}, "gh", "<cmd>lua vim.lsp.buf.hover()<cr>")
	vimp.nnoremap({"silent"}, "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
	vimp.nnoremap({"silent"}, "gR", "<cmd>lua vim.lsp.buf.rename()<cr>")
	vimp.nnoremap({"silent"}, "gD", "<cmd>lua vim.lsp.buf.implementation()<cr>")
	vimp.nnoremap({"silent"}, "K", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
	vimp.nnoremap({"silent"}, "1gd", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
	vimp.nnoremap({"silent"}, "g0", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
	vimp.nnoremap({"silent"}, "gW", "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>")
    vimp.nnoremap({"silent"}, "gK", "<cmd>lua vim.lsp.buf.code_action()<cr>")

    -- Getting filetype of buffer
    local filetype = vim.api.nvim_buf_get_option(0, 'filetype')

    -- Rust is currently the only LSP w/ inlay hints
    -- if filetype == 'rust' then
    -- vim.cmd(
    --   [[autocmd BufEnter,BufWritePost <buffer> :lua require('lsp_extensions.inlay_hints').request { ]]
    --     .. [[aligned = true, prefix = " » " ]]
    --   .. [[} ]]
    -- )
    -- end

	print("LSP Attached")
end


-- LSP Servers

-- Lua
lspconfig.sumneko_lua.setup({

	-- Completion and keymaps
	on_attach = custom_attach,

	-- Speeding up LSP attachment
	root_dir = function(fname)
		return util.find_git_ancestor(fname) or util.path.dirname(fname)
	end,

	-- Loading neovim lua globals
	settings = {
      Lua = {
        runtime = {
            version = "LuaJIT",
            path = vim.split(package.path, ";")
            },
        diagnostics = {
          enable = true,
          globals = {
            "vim",
            "describe",
            "it",
            "before_each",
            "after_each",
            "teardown",
            "pending",
            "vimp",
            "use"
          },
        },
        completion = {keywordSnippet = "Disable"},
        workspace = {
          library = {
            -- This loads the `lua` files from nvim into the runtime.
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
          },
        },
      },
    },
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

-- C/Cpp
lspconfig.clangd.setup{
    on_attach = custom_attach
}

-- Latex
lspconfig.texlab.setup{
	on_attach = custom_attach
}

-- Settings

-- Diagnostic

local override_config = {

	-- Disable underline
	underline = false,

	-- Enable virtual text, override spacing to 4
	virtual_text = {
	  spacing = 5,
	  prefix = "»"
	},

	-- Use a function to dynamically turn signs off
	-- and on, using buffer local variables
	-- signs = function(bufnr, client_id)
	--   return vim.bo[bufnr].show_signs == false
	-- end,

	-- Show diagnositic signs
	signs = true,

	-- Don't show diagnostics in insert
	update_in_insert = false,

}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(diagnostic.on_publish_diagnostics, override_config)

-- vim.call(sign_define, "LspDiagnosticsErrorSign", {"text" : "✗", "texthl" : "LspDiagnosticsError"})
vim.cmd [[ call sign_define("LspDiagnosticsErrorSign", {"text" : "✗", "texthl" : "LspDiagnosticsError"}) ]]
vim.cmd [[ call sign_define("LspDiagnosticsWarningSign", {"text" : "B", "texthl" : "LspDiagnosticsWarning"}) ]]
vim.cmd [[ call sign_define("LspDiagnosticsInformationSign", {"text" : "I", "texthl" : "LspDiagnosticsInformation"}) ]]
vim.cmd [[ call sign_define("LspDiagnosticsHintSign", {"text" : "?", "texthl" : "LspDiagnosticsHint"}) ]]
