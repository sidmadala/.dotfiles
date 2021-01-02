-- Another vim git integration plugin

if not pcall(require, 'vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

-- Keymaps
vimp.nnoremap({"silent"}, "<leader>lg", ":LazyGit<cr>")
