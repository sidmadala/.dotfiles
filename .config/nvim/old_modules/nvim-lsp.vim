" Native lsp functionality in neovim

" Remaps in lua/lsp/init.lua

" LSP config in lua
lua require("lsp")

" Diagnostic settings
let g:diagnostic_insert_delay = 1				" don't show diagnostics in insert
let g:diagnostic_show_sign = 1
let g:diagnostic_enable_virtual_text = 1
let g:diagnostic_enable_underline = 0			" disable underline
let g:space_before_virtual_text = 10			" space before warning
let g:diagnostic_virtual_text_prefix = ' '

call sign_define("LspDiagnosticsErrorSign", {"text" : "✗", "texthl" : "LspDiagnosticsError"})
call sign_define("LspDiagnosticsWarningSign", {"text" : "", "texthl" : "LspDiagnosticsWarning"})
call sign_define("LspDiagnosticsInformationSign", {"text" : "ℹ", "texthl" : "LspDiagnosticsInformation"})
call sign_define("LspDiagnosticsHintSign", {"text" : "", "texthl" : "LspDiagnosticsHint"})

" Completion settings
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" let g:completion_enable_auto_paren = 1			" Complete parentheses for functions
set completeopt=menuone,noinsert,noselect		" Set completeopt to have a better completion experience
set shortmess+=c								" Avoid showing message extra message when using completion
