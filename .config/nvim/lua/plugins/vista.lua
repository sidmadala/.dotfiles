-- LSP based code explorer

if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

-- Settings
-- How each level is indented and what to prepend.
-- This could make the display more compact or more spacious.
-- e.g., more compact: ["▸ ", ""]
-- Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
-- vim.cmd [[g:vista_icon_indent = ["╰─▸ ", "├─▸ "] ]]

-- Executive used when opening vista sidebar without specifying it.
-- See all the avaliable executives via `:echo g:vista#executives`.
-- vim.g.vista_default_executive = "nvim_lsp"

-- Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
vim.cmd [[ let g:vista#renderer#enable_icon=1 ]]

-- Keymaps
vimp.nnoremap("<leader>v", ":Vista!!<cr>")
-- vimp.nnoremap({"silent"}, "<leader>vf", ":Vista finder")
