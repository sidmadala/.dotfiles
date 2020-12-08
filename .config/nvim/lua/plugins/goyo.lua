-- Goyo makes text more readable in center screen

if not pcall(require, '../vimp') then
  vim.cmd [[ echom 'Cannot load `vimp`' ]]
end

vimp.nnoremap("<leader>g", ":Goyo<cr>")

--function! s:goyo_enter()
--	set noshowmode
--	set noshowcmd
--	set scrolloff=999
--	set number relativenumber	" show relative line numbers  
--	" call lightline#enable()
--endfunction

--function! s:goyo_leave()
--	set showmode
--	set showcmd
--	set scrolloff=5
--	set number relativenumber
--	" call lightline#disable()
-- endfunction

--autocmd! User GoyoEnter nested call <SID>goyo_enter()
--autocmd! User GoyoLeave nested call <SID>goyo_leave()
