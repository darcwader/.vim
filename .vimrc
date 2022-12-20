set nocompatible
set autoindent
set nobackup
set history=100
set undolevels=200
set ruler
set wrap
set noerrorbells			" no beeps.
set noeb vb t_vb=
set so=5				" scroll offset 5 lines
set listchars=tab:>-,trail:~,eol:$
set iskeyword=@,48-57,192-255,_,-
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ttyscroll=0 
set ttyfast
set showbreak=-  
set nu
set relativenumber
set ignorecase
set incsearch
set smartcase
set nohlsearch "dont like highlits everywhere
set tags+=tags
set showmatch
set wildmenu
set wildmode=list:longest

set re=1 "ruby file is very slow so keep this to 
set laststatus=2
set backspace=indent,eol,start
set noswapfile
set nobackup
set splitright
set splitbelow
set autowrite
set hidden
set noshowmatch
set completeopt=menu,menuone
set pumheight=10 "prompt height
set nocursorcolumn
set nocursorline
set lazyredraw

set autowriteall
set clipboard=unnamed

set scrolloff=3
set showmode
set showcmd
set gdefault
set textwidth=79
set formatoptions=qrn1
set modeline


filetype off
filetype plugin indent off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'mattn/emmet-vim'
Plugin 'wincent/command-t'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'godlygeek/tabular'
Plugin 'davidhalter/jedi-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Yggdroot/indentLine'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'dkprice/vim-easygrep'
Plugin 'mtth/scratch.vim'
Plugin 'ervandew/screen'
Plugin 'lilydjwg/colorizer'


call vundle#end()

filetype plugin indent on


if &t_Co > 2 || has("gui_running")
    colo murphy
    set guifont=Inconsolata:h12
    set guioptions-=r
    set guioptions-=T
endif

if has('unnamedplus')
    set clipboard^=unnamed
    set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif


let mapleader = ","

"moving
inoremap jj <Esc>
nmap k gk
nmap j gj
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

"searching
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap Y y$
nnoremap <tab> %
vnoremap <tab> %
nnoremap <c-s> :%s/
vnoremap <c-s> :s/

"disable F1 mistakes
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"navigation
noremap H ^
noremap L $
vnoremap L g_
nnoremap <left> <c-o>
nnoremap <right> <c-i>
nnoremap <F12> :buffers<CR>:buffer<Space>
nmap <down> :bnext<CR>
nmap <up> :bprev<CR>

nmap ; :NERDTreeToggle<CR> 
nnoremap <space> <C-d>

"leader mappings
nmap <leader>s :w<CR>
nmap <leader>/ /asdf/<CR>
nmap <leader>p :TlistToggle<CR>
nmap <leader><tab> :Scratch<CR>

nmap <leader>bl :buffers<CR>:buffer<Space>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bu :CtrlPMRU<cr>
nmap <leader>bn :bnext<cr>
nmap <leader>bp :bprev<cr>

"invisible chars toggle
noremap <leader>i :set list!<cr>

"let NERDTreeQuitOnOpen = 0 "use this to keep NERDTREE open on left side
"let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:ctrlp_extensions = ['tag']

let g:CommandTMaxFiles=200000

" disable md folding 
let g:vim_markdown_folding_disabled=1

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'

let g:go_fmt_comand = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1

"hide pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"save last cursor location
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au FocusLost * :wa "save on losing focus

au BufRead,BufNewFile *.json set filetype=json
"disable bells
au GUIEnter * set vb t_vb=
autocmd BufEnter * silent! lcd %:p:h

"autocmd vimenter * NERDTree
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" flag bad whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"  property load folding for python sympylfold plugin
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

set encoding=utf-8

set foldlevelstart=20
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

syntax on
let g:rehash256 = 1

let g:ScreenImpl = "Tmux"
let g:ScreenShellTmuxInitArgs = '-2'

nmap <leader>rr :.ScreenSend<cr>
vmap <leader>rr :ScreenSend<cr>
nmap <leader>rx :ScreenQuit<cr>

colorscheme blue
