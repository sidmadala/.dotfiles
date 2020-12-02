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
set showtabline=2			" always show tabs 
set wrap
set linebreak				" break at end of word for line wrap
set mouse=nv				" allowing mouse support in normal/visual modes
set signcolumn=number		" add column for errors/linting
set cmdheight=2				" sets height of command bar below
set timeoutlen=500			" setting timeout
set breakindent				" enable indentation
" ident by an additional 2 characters on wrapped lines, when line >= 40 characters, put 'showbreak' at start of line
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>			" append '>>' to indent
" set spell					" setting spellcheck

" Prevent repeated line commenting 
autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
