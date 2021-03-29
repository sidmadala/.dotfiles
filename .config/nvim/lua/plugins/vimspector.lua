-- Debugging in vim

-- Mappings
vim.g.vimspector_enable_mappings = "HUMAN"

-- for normal mode - the word under the cursor
-- nmap <Leader>di <Plug>VimspectorBalloonEval

-- for visual mode, the visually selected text
-- xmap <Leader>di <Plug>VimspectorBalloonEval

-- Stack mappings
-- nmap <LocalLeader><F11> <Plug>VimspectorUpFrame
-- nmap <LocalLeader><F12> <Plug>VimspectorDownFrame

-- Debuggers
vim.g.vimspector_install_gadgets = {"debugpy", "CodeLLDB", "local-lua-debugger-vscode"}
