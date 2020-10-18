"""""""" Manage NVIM Plugins """"""""

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 

" Display Settings
Plug 'jnurmine/zenburn'					" nice theme
Plug 'itchyny/lightline.vim'			" bottom bar for status 
Plug 'yggdroot/indentline'				" show line for indented code
Plug 'junegunn/goyo.vim'				" center text for writing
Plug 'ryanoasis/vim-devicons'			" icons for vim
" Plug 'liuchengxu/vim-which-key'			" display keymaps 

" Utilities
Plug 'tpope/vim-fugitive'				" git wrapper for vim
Plug 'tpope/vim-commentary'				" comment text easily
Plug 'scrooloose/nerdtree'				" show file bar on terminal
Plug 'cohama/lexima.vim'				" auto close brackets 
Plug 'junegunn/fzf'						" find files in system
Plug 'junegunn/fzf.vim'					" fzf wrapper for vim
Plug 'junegunn/vim-easy-align'			" align text in vim
Plug 'lervag/vimtex'					" latex support in vim
" Plug 'SirVer/ultisnips'					" snippets for vim

" LSP Support
Plug 'neovim/nvim-lsp'					" native lsp settings for neovim
Plug 'nvim-lua/completion-nvim'			" auto completion framework
Plug 'nvim-lua/diagnostic-nvim'			" better error displays for lsp
Plug 'nvim-treesitter/nvim-treesitter'	" better syntax highlighting for neovim
Plug 'liuchengxu/vista.vim'				" tag/lsp viewer for vim
Plug 'rust-lang/rust.vim'				" rust features for vim

call plug#end()
