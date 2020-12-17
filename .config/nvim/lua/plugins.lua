--[[
Packer plugin configuration
--]]

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]
-- Automatically compile lazy loaders
-- vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

require("packer").startup(function()

	-- Essential
	use {"wbthomason/packer.nvim", opt = true}		-- Packer can manage itself as an optional plugin
	use {"svermeulen/vimpeccable"}

	-- Aesthetic
	use {"jnurmine/zenburn", config = 'require("plugins.colorscheme")'}
	use {"aonemd/kuroi.vim", config = require("plugins.colorscheme"), disable = true}
	use {"itchyny/lightline.vim", config = 'require("plugins.lightline")'}
	use {"datwaft/bubbly.nvim", config = require("plugins.bubbly"), disable = true}
	use {"Yggdroot/indentLine", config = 'require("plugins.indentline")'}
	use {"lukas-reineke/indent-blankline.nvim", disable = true}
	use {"junegunn/goyo.vim", config = 'require("plugins.goyo")'}
	use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons", config = 'require("plugins.tree")'}

	-- LSP
	use {"neovim/nvim-lspconfig", config = 'require("plugins.lsp_config")'}
	use {"nvim-lua/completion-nvim"}
	use {"nvim-treesitter/nvim-treesitter", config = 'require("plugins.treesitter")'}
	use {"ojroques/nvim-lspfuzzy", config = 'require("plugins.lspfuzzy")'}
	use {"liuchengxu/vista.vim", config = 'require("plugins.vista")'}
	use {"rust-lang/rust.vim", config = 'require("plugins.rust")'}

	-- Utilities
	use {"tpope/vim-commentary"}
	use {"jiangmiao/auto-pairs"}
	use {"junegunn/fzf.vim", requires = "junegunn/fzf", config = 'require("plugins.fzf")'}
	use {"junegunn/vim-easy-align"}
	use {"lervag/vimtex", config = 'require("plugins.vimtex")'}
	use {"tpope/vim-fugitive", config = 'require("plugins.fugitive")'}
	use {"tpope/vim-surround"}
	use {"christoomey/vim-tmux-navigator"}

end)
