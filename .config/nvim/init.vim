"""""""" NeoVim Config """"""""

"""""""" Native NVIM configuration """"""""
let mapleader=" "			" Setting leader for plugins

set tabstop=4				" number of visual space per tab
set softtabstop=4			" number of spaces in tab
set shiftwidth=4			" number of spaces to use for each step of (auto)indent
set number relativenumber	" show relative line numbers  
set autoindent				" autoindentation on files
set showcmd					" show command in bottom bar
set cursorline				" highlight current line 
set showmatch				" highlight matching braces
set incsearch				" search as characters are entered
set hlsearch				" highlight matches
set ignorecase				" ignore case on search
set hidden					" prevent buffers from closing when switching files

" Keymappings for common commands
nnoremap <leader>wq :wq<CR>
noremap <leader>q :q!
nnoremap <leader>w :w
nnoremap <leader>s :/
nnoremap <leader>t :terminal
nnoremap <silent> <leader><space> :noh<CR>
nnoremap <leader>! :! 
nnoremap <leader>bn :bn<CR>
nnoremap <leader>tb :tab ball<CR>
nnoremap <leader>tn :tabNext<CR>
nnoremap <leader>tp :tabp<CR>
nnoremap <leader>tf :tabfind 
nnoremap <leader>tc :tabclose<CR>

"""""""" Manage NVIM Plugins """"""""

" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

" Adding NVIM plugins
call plug#begin('~/.config/nvim/plugged') 

" Visual 
" 
Plug 'tpope/vim-fugitive'				" git wrapper for vim
Plug 'tpope/vim-commentary'				" comment text easily
Plug 'yggdroot/indentline'				" show line for indented code
Plug 'jnurmine/zenburn'					" nice theme
Plug 'scrooloose/nerdtree'				" show file bar on terminal
Plug 'itchyny/lightline.vim'			" bottom bar for status 
Plug 'jiangmiao/auto-pairs'				" auto close brackets 
Plug 'liuchengxu/vista.vim'				" display ctags in window
Plug 'junegunn/fzf'						" find files in system
Plug 'junegunn/fzf.vim'					" fzf wrapper for vim
Plug 'junegunn/vim-easy-align'			" align text in vim
Plug 'junegunn/goyo.vim'				" center text for writing
call plug#end()

"""Plugin Configuration"""

" Zenburn colorscheme 
colors zenburn

" Lightline is a statusbar for vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Goyo makes text more readable in center screen
noremap <leader>g :Goyo<CR>

" Nerdtree eases file navigation
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
" :m - bring up file editing options 

" FZF is a fuzzy finder system
nnoremap <silent> <leader>ff :FZF<CR> 
nnoremap <silent> <leader>rg :Rg<CR>

" Vista is a ctag navigator
nnoremap <silent> <leader>v :Vista!!<CR>
nnoremap <leader>vf :Vista finder

" Commentary is an autocommenter for vim
" gcc - comment line
" visual gc - comment block
" autocmd FileType apache setlocal commentstring=#\ %s  " add file types 

" Fugitive is vim's premier git integration plugin
" :G - check git status
" :G commit - stage files for commit 
" :G push - push files to branch
