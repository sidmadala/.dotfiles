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

-- local use = require("packer").use

require("packer").startup(function()

	-- Essential
	use {"wbthomason/packer.nvim", opt = true}		-- Packer can manage itself as an optional plugin
	use {"svermeulen/vimpeccable"}

	-- Aesthetic
    use {"glepnir/dashboard-nvim", confg = 'require("plugins.dashboard")', disable = true}
	use {"jnurmine/zenburn", config = 'require("plugins.colorscheme")'}
    use {"ghifarit53/tokyonight-vim", config = 'require("plugins.colorscheme")'}
	use {"aonemd/kuroi.vim", config = 'require("plugins.colorscheme")'}
    use {"morhetz/gruvbox", config = 'require("plugins.colorscheme")'}
	use {"itchyny/lightline.vim", config = 'require("plugins.lightline")'}
	use {"Yggdroot/indentLine", config = 'require("plugins.indentline")', disable = true}
    use {"lukas-reineke/indent-blankline.nvim", config = 'require("plugins.indentblankline")', branch = "lua"}
	use {"junegunn/goyo.vim", config = 'require("plugins.goyo")'}
	use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons", config = 'require("plugins.tree")'}
    use {"romgrk/barbar.nvim", confg = 'require(plugins.barbar)'}

	-- LSP
    use {"neoclide/coc.nvim", branch = "release", run = "yarn install --frozen-lockfile", config = 'require("plugins.coc")'}
    use {"antoinemadec/coc-fzf", branch = "release"}
	use {"nvim-treesitter/nvim-treesitter", config = 'require("plugins.treesitter")'}
	use {"liuchengxu/vista.vim", config = 'require("plugins.vista")'}
	use {"rust-lang/rust.vim", config = 'require("plugins.rust")'}


    -- Debugging
    use {"puremourning/vimspector", config = 'require("plugins.vimspector")'}

	-- Utilities
    use {"SirVer/ultisnips", config = 'require("plugins.ultisnips")', disable = true}
    use {"honza/vim-snippets"}
	use {"tpope/vim-commentary"}
	use {"jiangmiao/auto-pairs"}
	use {"junegunn/fzf.vim", requires = "junegunn/fzf", config = 'require("plugins.fzf")'}
	use {"junegunn/vim-easy-align"}
	use {"lervag/vimtex", config = 'require("plugins.vimtex")'}
	use {"tpope/vim-fugitive", config = 'require("plugins.fugitive")'}
	use {"tpope/vim-surround"}
	use {"christoomey/vim-tmux-navigator"}
    use {"kdheepak/lazygit.nvim", config = 'require("plugins.lazygit")'}
    use {"szw/vim-maximizer", config = 'require("plugins.maximizer")'}
    use {"tweekmonster/startuptime.vim"}
end)
