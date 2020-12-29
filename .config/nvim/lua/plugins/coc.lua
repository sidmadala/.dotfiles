-- Concqueker of Completion

if not pcall(require, 'vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

-- Keymaps
vimp.nmap({"silent"}, "gd", "<Plug>(coc-definition)")
vimp.nmap({"silent"}, "gh", "<Plug>(coc-type-definition)")
vimp.nmap({"silent"}, "gi", "<Plug>(coc-implemenation)")
vimp.nmap({"silent"}, "gr", "<Plug>(coc-references)")
-- vimp.inoremap({"silent"}, "<expr> <c-space>", "coc#refresh()")

-- Use <Tab> and <S-Tab> to navigate the completion list:
vim.cmd [[ inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>" ]]
vim.cmd [[ inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" ]]

-- Use <CR> for confirming completion
vim.cmd [[ inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>" ]]


-- Coc FZF

vimp.nnoremap({"silent"}, "<leader>a", ":<C-u>CocFzfList diagnostics<CR>")
vimp.nnoremap({"silent"}, "<leader>s", ":<C-u>CocFzfList diagnostics --current-buf<CR>")
vimp.nnoremap({"silent"}, "<leader>e", ":<C-u>CocFzfList extensions<CR>")



