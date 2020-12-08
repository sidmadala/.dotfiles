-- Fuzzy finder for vim

if not pcall(require, '/vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

-- Keymaps

vimp.nnoremap("<leader>ff", ":Files<cr>")
vimp.nnoremap("<leader>fg", ":GFiles<cr>")
vimp.nnoremap("<leader>fc", ":Commits<cr>")
vimp.nnoremap("<leader>rg", ":Rg")
vimp.nnoremap("<leader>b", ":Buffers")

-- Always enable preview window on the right with 60% width
-- vim.g.fzf_preview_window = "right:60"


