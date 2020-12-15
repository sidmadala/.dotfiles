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

-- Imports
-- local vimp = require("vimp")
local global, opt, buf, win, cmd = vim.g, vim.o, vim.bo, vim.wo, vim.cmd

-- Keymaps 
 global.mapleader = " "

vimp.nnoremap("<leader>wq", ":wq<cr>")
vimp.nnoremap("<leader>q", ":q!")
vimp.nnoremap("<leader>ww", ":w")
--vimp.nnoremap("<leader>hh", ":h ")
vimp.nnoremap("<leader>s", ":/")
vimp.nnoremap("<leader>tt", ":terminal")
vimp.nnoremap({"silent"}, "<leader><space>", ":noh<cr>")
vimp.nnoremap("<leader>!", ":!") 
vimp.nnoremap("<leader>bn", ":bn<cr>") vimp.nnoremap("<leader>tb", ":tab ball<cr>")
vimp.nnoremap("<leader>tn", ":tabNext<cr>")
vimp.nnoremap("<leader>tp", ":tabp<cr>")
vimp.nnoremap("<leader>tf", ":tabfind")
vimp.nnoremap("<leader>tc", ":tabclose<cr>")
vimp.nnoremap({"silent"}, "<leader>h", ":wincmd h<cr>")
vimp.nnoremap({"silent"}, "<leader>j", ":wincmd j<cr>")
vimp.nnoremap({"silent"}, "<leader>k", ":wincmd k<cr>")
vimp.nnoremap({"silent"}, "<leader>l", ":wincmd l<cr>")

-- Settings

-- Line numbers
win.relativenumber = true 
win.number = true
win.cursorline = true

-- Tabs
buf.tabstop = 4
buf.softtabstop = 4
buf.shiftwidth = 4
buf.autoindent = true 

-- Search
global.incsearch = true				-- search as characters are entered
global.hlsearch = true				-- highlight matches
global.ignorecase = true			-- ignore case on search


-- Formatting
win.breakindent = true				-- enable indentation
win.conceallevel = 0				-- display all text normally
win.wrap = true 
win.linebreak = true					-- break at end of word for line wrap
-- indent by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
cmd [[set breakindentopt=shift:2,min:40,sbr]] 
global.showbreak = string.rep(" ", 3)	-- append '>>' to indent

-- " Prevent repeated line commenting 
cmd [[autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions-=u]]

-- Extra
global.showcmd = true				-- show command in bottom bar
global.showmatch = false			-- no highlight matching braces
global.hidden = true				-- prevent buffers from closing when switching files
cmd [[set showtabline=2]]			-- always show tabs 
opt.mouse = 'a'						-- allowing mouse support in normal/visal modes
cmd [[set signcolumn=yes]]			-- add column for errors/linting
opt.cmdheight = 2					-- sets height of command bar below
global.timeoutlen = 500				-- setting timeout
global.updatetime = 300				-- shorter update times

-- set spell							-- setting spellcheck

cmd [[set termguicolors]]				-- setting colors for terminal gui
