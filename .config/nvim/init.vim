" NVIM setup and configuration 

" Setting leader for plugins 
let mapleader=" "

" Load plugins
source $HOME/.config/nvim/plugins.vim

" Native NVIM configuration
set tabstop=4 		 " number of visual space per tab
set softtabstop=4	 " number of spaces in tab
set number relativenumber	" show relative line numbers  
set showcmd	" show command in bottom bar
set cursorline	" highlight current line 
set showmatch 	" highlight matching braces
set incsearch	" search as characters are entered
set hlsearch 	" highlight matches
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto comments 

" Keymappings for common commands
map <leader>wq :wq 
map <leader>q :q!  
map <leader>w :w   
map <leader>s :/  
map <leader>t :terminal

" Plugin mapping and config 

" Zenburn colors 
colors zenburn

" Goyo makes text more readable in center screen
map <leader>g :Goyo

" Nerdtree eases file navigation
map <leader>n :NERDTreeToggle<CR>
