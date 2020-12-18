
if not pcall(require, 'vimp') then

  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

vimp.nnoremap("<leader>pp", 'lua require(telescope.builtin).find_files{}<cr>')
