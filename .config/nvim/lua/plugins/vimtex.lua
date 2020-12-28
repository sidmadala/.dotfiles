-- Latex plugin for vim

-- Setting tex flavor
vim.g.tex_flavor = "latex"

-- Setting up compiler
vim.g.vimtex_compiler_latexrun = 1
-- vim.cmd [[ g:vimtex_compiler_progname="nvr" ]]

-- Setting concealment level
-- vim.cmd [[let g:tex_conceal='']]
vim.g.tex_conceal = ""
