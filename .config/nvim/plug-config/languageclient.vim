" " LanguageClient-neovim is an lsp handler 
" let g:LanguageClient_serverCommands = {
"     \ 'rust': ['~/.config/cargo/bin/rustup', 'run', 'stable', 'rls'],
" 	\ 'python': ['/usr/local/Caskroom/miniconda/base/bin/pyls'],
"     \ }

" " Sensible maps for commands 
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" " Setting up omnifunc completions
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
