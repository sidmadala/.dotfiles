-- Maximize current window

if not pcall(require, 'vimp') then
  vim.cmd [[echom 'Cannot load `vimp`' ]]
end

-- Keymaps
vimp.nmap({"silent"}, "<leader>m", ":MaximizerToggle!<CR>")
