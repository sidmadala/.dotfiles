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
Plug 'tpope/vim-surround'
" Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
let g:kite_tab_complete=1

"""""""""""" Coc is an intellisense engine for Vim/Neovim """"""""""""

let g:coc_global_extensions = [
	\ 'coc-marketplace',
	\ 'coc-eslint',
	\ 'coc-python',
	\ 'coc-pairs',
	\ 'coc-go',
	\ ]

set hidden " TextEdit might fail if hidden is not set

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>fc <Plug>(coc-fix-current)

" Manage extensions.
nnoremap <silent> <space>ce  :<C-u>CocList extensions<cr>

