" NVIM setup and configuration 

" Setting leader for plugins 
let mapleader =" "

" Load plugins
source $HOME/.config/nvim/plugins.vim

" Native NVIM configuration
set tabstop=4 		 " number of visual space per tab
set softtabstop=4	 " number of spaces in tab
set number	" show line numbers  
set showcmd	" show command in bottom bar
set cursorline	" highlight current line 
set showmatch 	" highlight matching braces
set incsearch	" search as characters are entered
set hlsearch 	" highlight matches
