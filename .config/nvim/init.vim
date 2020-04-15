"""""""" NeoVim Config """"""""

"""""""" Native NVIM configuration """"""""
let mapleader=" "	 " Setting leader for plugins
set tabstop=4 		 " number of visual space per tab
set softtabstop=4	 " number of spaces in tab
set shiftwidth=4	 " number of spaces to use for each step of (auto)indent
set number relativenumber	" show relative line numbers  
set autoindent		 " autoindentation on files
set showcmd	" show command in bottom bar
set cursorline	" highlight current line 
set showmatch 	" highlight matching braces
set incsearch	" search as characters are entered
set hlsearch 	" highlight matches
set ignorecase  " ignore case on search
set hidden		" prevent buffers from closing when switching files
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto comments 

" Keymappings for common commands
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q!
nnoremap <leader>w :w
nnoremap <leader>s :/
nnoremap <leader>t :terminal
nnoremap <silent> <leader><space> :noh<CR>
nnoremap <leader>! :! 
nnoremap <leader>e :e 
nnoremap <leader>bn :bn<CR>
nnoremap <leader>tb :tab ball<CR>
nnoremap <leader>tf :tabfind 
nnoremap <leader>tc :tabclose<CR>
noremap % :v%
"""""""" Manage NVIM Plugins """"""""

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 
Plug 'junegunn/goyo.vim'  " center text for writing
Plug 'junegunn/fzf.vim'	  " find files in system
Plug 'yggdroot/indentline'  " show line for indented code
Plug 'jnurmine/zenburn'   " nice theme
Plug 'scrooloose/nerdtree'  " show file bar on terminal
Plug 'itchyny/lightline.vim'  " bottom bar for status 
" Plug 'tpope/vim-surround'
" Plug 'jiangmiao/auto-pairs'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Plugin mapping and config 

" Zenburn colorscheme 
colors zenburn

" Goyo makes text more readable in center screen
noremap <leader>g :Goyo<CR>

" Nerdtree eases file navigation
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Kite is a Python/Go autocomplete module
" let g:kite_tab_complete=1

