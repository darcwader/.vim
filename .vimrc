

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
set relativenumber
set ignorecase
set incsearch
set smartcase
set hlsearch
set tags+=tags
set showmatch
set wildmenu


filetype off
filetype plugin indent off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'mattn/emmet-vim'
Plugin 'wincent/command-t'
Plugin 'vim-scripts/taglist.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'


call vundle#end()

filetype plugin indent on

syntax on

set noantialias
if &t_Co > 2 || has("gui_running")
	colo murphy
    set guifont=Monaco:h10
    set guioptions-=r
    set guioptions-=T
endif

let mapleader = ","
imap jj <Esc>
nmap k gk
nmap j gj
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

map <F10> :runtime! ftplugin/main.vim<CR>
nmap ; :NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen = 0

" disable md folding 
let g:vim_markdown_folding_disabled=1


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_warning_symbol = ">"
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_extra_conf_globlist = ['/Volumes/STASH/darshansonde/Work/Repos/cpp/*']


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
let g:go_fmt_comand = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1


au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.go set foldmethod=marker
"disable bells
au GUIEnter * set vb t_vb=


colorscheme molokai
