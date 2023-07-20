-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/sidmadala/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/sidmadala/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/sidmadala/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/sidmadala/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/sidmadala/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["coc-fzf"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/coc-fzf",
    url = "https://github.com/antoinemadec/coc-fzf"
  },
  ["coc.nvim"] = {
    config = { 'require("plugins.coc")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  fzf = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    config = { 'require("plugins.fzf")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["goyo.vim"] = {
    config = { 'require("plugins.goyo")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  gruvbox = {
    config = { 'require("plugins.colorscheme")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("plugins.indentblankline")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kuroi.vim"] = {
    config = { 'require("plugins.colorscheme")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/kuroi.vim",
    url = "https://github.com/aonemd/kuroi.vim"
  },
  ["lazygit.nvim"] = {
    config = { 'require("plugins.lazygit")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lightline.vim"] = {
    config = { 'require("plugins.lightline")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("plugins.tree")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { 'require("plugins.treesitter")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["rust.vim"] = {
    config = { 'require("plugins.rust")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["tokyonight-vim"] = {
    config = { 'require("plugins.colorscheme")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/tokyonight-vim",
    url = "https://github.com/ghifarit53/tokyonight-vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fugitive"] = {
    config = { 'require("plugins.fugitive")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-maximizer"] = {
    config = { 'require("plugins.maximizer")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vimpeccable",
    url = "https://github.com/svermeulen/vimpeccable"
  },
  vimspector = {
    config = { 'require("plugins.vimspector")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  vimtex = {
    config = { 'require("plugins.vimtex")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["vista.vim"] = {
    config = { 'require("plugins.vista")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  },
  zenburn = {
    config = { 'require("plugins.colorscheme")' },
    loaded = true,
    path = "/Users/sidmadala/.local/share/nvim/site/pack/packer/start/zenburn",
    url = "https://github.com/jnurmine/zenburn"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-maximizer
time([[Config for vim-maximizer]], true)
require("plugins.maximizer")
time([[Config for vim-maximizer]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("plugins.tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("plugins.treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
require("plugins.coc")
time([[Config for coc.nvim]], false)
-- Config for: rust.vim
time([[Config for rust.vim]], true)
require("plugins.rust")
time([[Config for rust.vim]], false)
-- Config for: vimspector
time([[Config for vimspector]], true)
require("plugins.vimspector")
time([[Config for vimspector]], false)
-- Config for: goyo.vim
time([[Config for goyo.vim]], true)
require("plugins.goyo")
time([[Config for goyo.vim]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
require("plugins.vimtex")
time([[Config for vimtex]], false)
-- Config for: gruvbox
time([[Config for gruvbox]], true)
require("plugins.colorscheme")
time([[Config for gruvbox]], false)
-- Config for: vista.vim
time([[Config for vista.vim]], true)
require("plugins.vista")
time([[Config for vista.vim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("plugins.indentblankline")
time([[Config for indent-blankline.nvim]], false)
-- Config for: zenburn
time([[Config for zenburn]], true)
require("plugins.colorscheme")
time([[Config for zenburn]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
require("plugins.fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: kuroi.vim
time([[Config for kuroi.vim]], true)
require("plugins.colorscheme")
time([[Config for kuroi.vim]], false)
-- Config for: tokyonight-vim
time([[Config for tokyonight-vim]], true)
require("plugins.colorscheme")
time([[Config for tokyonight-vim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
require("plugins.fzf")
time([[Config for fzf.vim]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
require("plugins.lazygit")
time([[Config for lazygit.nvim]], false)
-- Config for: lightline.vim
time([[Config for lightline.vim]], true)
require("plugins.lightline")
time([[Config for lightline.vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
