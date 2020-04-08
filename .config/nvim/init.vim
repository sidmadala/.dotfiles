" NVIM setup and configuration 

" Setting leader for plugins 
let mapleader =" "

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
call plug#end()

" Native NVIM configuration
set tabstop=4 		 " number of visual space per tab
set softtabstop=4	 " number of spaces in tab
set number	" show line numbers  
set showcmd	" show command in bottom bar
set cursorline	" highlight current line 
set showmatch 	" highlight matching braces
set incsearch	" search as characters are entered
set hlsearch 	" highlight matches