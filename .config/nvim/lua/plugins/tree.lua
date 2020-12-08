-- File explorer

-- Keymaps
if not pcall(require, '../vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

vimp.nnoremap({"silent"}, "<leader>n", ":LuaTreeToggle<cr>")
