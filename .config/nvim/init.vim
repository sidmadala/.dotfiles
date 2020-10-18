"""""""" NeoVim Config """"""""

" Initializing settings and keymappings
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keymap.vim

" Installing and initializing plugins 
source $HOME/.config/nvim/vim-plug.vim
source $HOME/.config/nvim/themes/zenburn.vim

for f in split(glob('$HOME/.config/nvim/modules/*.vim'), '\n')
    exe 'source' f
endfor
