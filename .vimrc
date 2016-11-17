

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
set noswapfile
set autowriteall
set clipboard=unnamed


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
Plugin 'tmhedberg/SimpylFold'


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
nmap k gk
nmap j gj
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l


nnoremap <F12> :buffers<CR>:buffer<Space>

map <F10> :runtime! ftplugin/main.vim<CR>
nmap ; :NERDTreeToggle<CR> 
"let NERDTreeQuitOnOpen = 0
nmap <leader>d :TaskList<CR>
nmap <leader>p :TlistToggle<CR>
nnoremap <space> za

let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" disable md folding 
let g:vim_markdown_folding_disabled=1


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
let g:go_fmt_comand = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1

"hide pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


au BufRead,BufNewFile *.json set filetype=json
"au BufRead,BufNewFile *.go set foldmethod=marker
"disable bells
au GUIEnter * set vb t_vb=
"autocmd vimenter * NERDTree
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


colorscheme molokai
