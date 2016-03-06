

set nocompatible
set autoindent
set nobackup
set history=100
set undolevels=200
set ruler
set showcmd
set wrap
set noerrorbells			" no beeps.
set noeb vb t_vb=
set so=5				" scroll offset 5 lines
set listchars=tab:>-,trail:~,eol:$
set iskeyword=@,48-57,192-255,_,-
set tabstop=4
set shiftwidth=4
set expandtab
set ttyscroll=0 
set ttyfast
set showbreak=-  
set nu
set ignorecase
set incsearch
set smartcase
set hlsearch
set tags+=tags

filetype off
filetype plugin indent off
set runtimepath+=/usr/local/go/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'mattn/emmet-vim'
Plugin 'marijnh/tern_for_vim.git'
Plugin 'wincent/command-t'

call vundle#end()


filetype plugin indent on

syntax on

if &t_Co > 2 || has("gui_running")
	colo murphy
    set guifont=Inconsolata:h14
    set guioptions-=r
    set guioptions-=T
endif

let mapleader = ","
imap jj <Esc>
imap <leader>/ </<C-x><C-p>>
nmap k gk
nmap j gj
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
" TODO:map <C-J> <C-w>J
map <C-leader> <C-w><C-w>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

" vim-lldb
nnoremap <silent> <leader>lr :Lrun<CR> 
nnoremap <silent> <leader>lb :Lbreakpoint<CR>
nnoremap <silent> <leader>lc :Lcontinue<CR>
nnoremap <silent> <leader>ln :Lnext<CR>
nnoremap <silent> <leader>ls :Lstep<CR>
nnoremap <silent> <leader>li :Lstepin<CR>
nnoremap <silent> <leader>lo :Lfinish<CR>
nnoremap <silent> <leader>lp :Lprint<CR>
nnoremap <silent> <leader>lv :Lframe variable<CR>

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)

map <F10> :runtime! ftplugin/main.vim<CR>
nmap ; :NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen = 0

au BufRead,BufNewFile *.json set filetype=json
"disable bells
au GUIEnter * set vb t_vb=

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:closetag_html_style=1 
let g:go_fmt_command = "goimports"

"execute pathogen#infect()


