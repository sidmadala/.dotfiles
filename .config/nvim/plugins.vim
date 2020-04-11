" Plugins for NVIM

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'yggdroot/indentline'
Plug 'jnurmine/zenburn'
Plug 'scrooloose/nerdtree'
call plug#end()
