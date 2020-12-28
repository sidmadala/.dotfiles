--[[
Packer plugin configuration
--]]

-- Install Packer.nvim if not on machine
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

-- Automatically compile lazy loaders
vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

require("packer").startup(function()

	-- Essential
	use {"wbthomason/packer.nvim", opt = true}		-- Packer can manage itself as an optional plugin
	use {"svermeulen/vimpeccable"}

	-- Aesthetic
	use {"jnurmine/zenburn", config = 'require("plugins.colorscheme")'}
	use {"aonemd/kuroi.vim", config = 'require("plugins.colorscheme")'}
	use {"itchyny/lightline.vim", config = 'require("plugins.lightline")'}
	use {"datwaft/bubbly.nvim", config = 'require("plugins.bubbly")', disable = true}
	use {"Yggdroot/indentLine", config = 'require("plugins.indentline")'}
	use {"lukas-reineke/indent-blankline.nvim", disable = true}
	use {"junegunn/goyo.vim", config = 'require("plugins.goyo")'}
	use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons", config = 'require("plugins.tree")'}

	-- LSP
	use {"neovim/nvim-lspconfig", config = 'require("plugins.lsp_config")'}
	use {"nvim-lua/completion-nvim", config = 'require("plugins.completion")'}
	use {"nvim-treesitter/nvim-treesitter", config = 'require("plugins.treesitter")'}
	use {"ojroques/nvim-lspfuzzy", config = 'require("plugins.lspfuzzy")'}
	use {"liuchengxu/vista.vim", config = 'require("plugins.vista")'}
	use {"rust-lang/rust.vim", config = 'require("plugins.rust")'}
    use {"nvim-telescope/telescope.nvim", requires = {"nvim-lua/plenary.nvim", "nvim-lua/popup.nvim"}, config = 'require("plugins.telescope")', disable = true}


	-- Utilities
    use {"SirVer/ultisnips", requires = "honza/vim-snippets", config = 'require("plugins.ultisnips")'}
	use {"tpope/vim-commentary"}
	use {"jiangmiao/auto-pairs"}
	use {"junegunn/fzf.vim", requires = "junegunn/fzf", config = 'require("plugins.fzf")'}
	use {"junegunn/vim-easy-align"}
	use {"lervag/vimtex", config = 'require("plugins.vimtex")'}
	use {"tpope/vim-fugitive", config = 'require("plugins.fugitive")'}
	use {"tpope/vim-surround"}
	use {"christoomey/vim-tmux-navigator"}
    use {"tweekmonster/startuptime.vim"}
end)
