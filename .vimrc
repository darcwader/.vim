

set nocompatible
set autoindent
set nobackup
set history=100
set undolevels=200
set ruler
set showcmd
set wrap
set noerrorbells			" no beeps.
set so=5				" scroll offset 5 lines
set listchars=tab:>-,trail:~,eol:$
set iskeyword=@,48-57,192-255,_,-
set tabstop=4
set shiftwidth=4
set expandtab
set ttyscroll=0 
set ttyfast
set showbreak=-  

set ignorecase
set incsearch
set smartcase
set hlsearch

if &t_Co > 2 || has("gui_running")
	colo murphy
	syntax on
    set guifont=Inconsolata:h14
endif


let mapleader = ","
imap jj <Esc>
nmap k gk
nmap j gj
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
" TODO:map <C-J> <C-w>J
map <C-leader> <C-w><C-w>
nmap <leader>q :q<CR>

map <F10> :runtime! ftplugin/main.vim<CR>
nmap ; :NERDTreeToggle<CR> 


filetype plugin indent on
au BufRead,BufNewFile *.json set filetype=json

execute pathogen#infect()


