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
nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>
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
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'for': ['vim', 'go', ]}
Plug 'fatih/vim-go'
Plug 'junegunn/vim-easy-align' " align text in vim
call plug#end()

" Plugin mapping and config 

" Zenburn colorscheme 
colors zenburn

" Lightline is a statusbar for vim
let g:lightline = {'colorscheme': 'wombat'}

" Goyo makes text more readable in center screen
noremap <leader>g :Goyo<CR>

" Nerdtree eases file navigation
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" Vim-go is vim's premier golang plugin
let g:go_code_completion_enabled = 0
let g:go_def_mapping_enabled = 0
nnoremap <leader>gl :GoLint<CR>

" Kite is an autocomplete engine for Python and Golang
let g:kite_supported_languages = ['python']
let g:kite_tab_complete=1
autocmd CompleteDone * if !pumvisible() | pclose | endif " completion window closes after suggestion
let g:kite_previous_placeholder = '<C-k>'
let g:kite_next_placeholder = '<C-j>'
nmap <silent> <buffer> gK <Plug>(kite-docs)

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------
let g:coc_global_extensions = [ 'coc-marketplace', 'coc-pairs', 'coc-go' ]

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `gp` and `gn` for navigate diagnostics
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>lr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
