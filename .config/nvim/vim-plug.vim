"""""""" Manage NVIM Plugins """"""""

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 
Plug 'tpope/vim-fugitive'				" git wrapper for vim
Plug 'tpope/vim-commentary'				" comment text easily
Plug 'yggdroot/indentline'				" show line for indented code
Plug 'jnurmine/zenburn'					" nice theme
Plug 'scrooloose/nerdtree'				" show file bar on terminal
Plug 'itchyny/lightline.vim'			" bottom bar for status 
Plug 'jiangmiao/auto-pairs'				" auto close brackets 
Plug 'junegunn/fzf'						" find files in system
Plug 'junegunn/fzf.vim'					" fzf wrapper for vim
Plug 'junegunn/vim-easy-align'			" align text in vim
Plug 'junegunn/goyo.vim'				" center text for writing
Plug 'junegunn/seoul256.vim'			" another nice theme
Plug 'vim-python/python-syntax'			" python syntax highlighting
Plug 'ryanoasis/vim-devicons'			" icons for vim
Plug 'majutsushi/tagbar'				" ctag viewer for vim
Plug 'rust-lang/rust.vim'				" rust features for vim
Plug 'neovim/nvim-lsp'					" native lsp client for neovim
Plug 'nvim-lua/completion-nvim'			" auto completion framework
call plug#end()



