--[[
General settings and keymapping
--]]

-- Variable definition
local configuration_folder = "~/.config/nvim/"

-- Header declaration
if not pcall(require, 'vimp') then
   vim.cmd [[ echom 'Cannot load `vimp`' ]]
   return
end

-- Providers
vim.g.python3_host_prog = "~/.local/share/rtx/installs/python/miniforge3-22.11.1-4/bin/python"
vim.g.loaded_python_provider = 0  -- disabling python2 support


-- Imports
-- local vimp = require("vimp")
local global, opt, buf, win, cmd = vim.g, vim.o, vim.bo, vim.wo, vim.cmd

-- Keymaps 
 global.mapleader = " "

vimp.nnoremap("<leader>wq", ":wq<cr>")
vimp.nnoremap("<leader>q", ":q!")
vimp.nnoremap("<leader>ww", ":w")
--vimp.nnoremap("<leader>hh", ":h ")
-- vimp.nnoremap("<leader>s", ":/")
vimp.nnoremap("<leader>tt", ":terminal")
vimp.nnoremap({"silent"}, "<leader><space>", ":noh<cr>")
vimp.nnoremap("<leader>1", ":!") 
vimp.nnoremap("<leader>bn", ":bn<cr>")
vimp.nnoremap("<leader>tb", ":tab ball<cr>")
vimp.nnoremap("<leader>tn", ":tabNext<cr>")
vimp.nnoremap("<leader>tp", ":tabp<cr>")
vimp.nnoremap("<leader>tf", ":tabfind")
vimp.nnoremap("<leader>tc", ":tabclose<cr>")

-- Settings

-- Line numbers
win.relativenumber = true
win.number = true
win.cursorline = true
opt.scrolloff = 5
opt.sidescrolloff = 5

-- Tabs
opt.tabstop = 4
buf.tabstop = 4
opt.softtabstop = 4
buf.softtabstop = 4
opt.shiftwidth = 4
buf.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true
buf.expandtab = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Search
global.incsearch = true			-- search as characters are entered
opt.hlsearch = true				-- highlight matches
opt.ignorecase = true			-- ignore case on search

-- Buffers
opt.hidden = true
opt.backup = false
opt.writebackup = false
opt.updatetime = 100				-- shorter update times
opt.timeoutlen = 500				-- setting timeout
opt.cmdheight = 2					-- sets height of command bar below
win.signcolumn = "yes"  	        -- add column for errors/linting
global.showcmd = true				-- show command in bottom bar
global.showmatch = false			-- no highlight matching braces
opt.mouse = "a"						-- allowing mouse support in all modes
-- opt.showtabline = 0                 -- show tabs
opt.termguicolors = true            -- setting colors for terminal gui

-- Dropdowns
opt.completeopt = "menuone,noinsert,noselect"     -- Set completeopt to have a better completion experience
opt.shortmess = vim.o.shortmess .. 'c'

-- Formatting
win.breakindent = true				-- enable indentation
win.conceallevel = 0				-- display all text normally
win.wrap = true
win.linebreak = true					-- break at end of word for line wrap
-- indent by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
cmd [[set breakindentopt=shift:2,min:40,sbr]]
global.showbreak = string.rep(" ", 3)	-- append '   ' to indent

-- Prevent repeated line commenting
cmd [[autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions-=u]]

-- Extra
-- set spell							-- setting spellcheck
