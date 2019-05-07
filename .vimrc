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
set viminfo='10,\"100,:20,%,n~/.viminfo


filetype off
filetype plugin indent off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'Yggdroot/indentLine'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'tmhedberg/SimpylFold'
"Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
"Plugin 'dkprice/vim-easygrep'
"Plugin 'mtth/scratch.vim'
"Plugin 'ervandew/screen'
Plugin 'leafgarland/typescript-vim'
"Plugin 'kylef/apiblueprint.vim'



call vundle#end()

filetype plugin indent on


if &t_Co > 2 || has("gui_running")
    colo murphy
    set guifont=Inconsolata:h10
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
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
nnoremap <F12> :buffers<CR>:buffer<Space>
map <F10> :runtime! ftplugin/main.vim<CR>
noremap H ^
noremap L $
vnoremap L g_


"error navigation
nnoremap <left> :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz
nmap <C-down> :cclose<CR>
nmap <C-up> :copen<CR>

nmap ; :NERDTreeToggle<CR> 
nnoremap <space> <C-d>
nnoremap zz :q<CR>
nmap <leader>s :w<CR>
nmap <leader>/ /asdf/<CR>
nmap <leader>p :TlistToggle<CR>
nmap <leader><tab> :Scratch<CR>
nmap <leader>b :w<CR>:make<CR>

"invisible chars toggle
noremap <leader>i :set list!<cr>
"let NERDTreeQuitOnOpen = 0 "use this to keep NERDTREE open on left side
"
"let $Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:ctrlp_extensions = ['tag']

let g:CommandTMaxFiles=200000

" disable md folding 
let g:vim_markdown_folding_disabled=1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_warning_symbol = ">"
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_enable_diagnostic_signs = 0
"let g:ycm_extra_conf_globlist = ['/Volumes/STASH/darshansonde/Work/Repos/cpp/*']
"let g:enable_ycm_at_startup = 1
let g:ycm_path_to_python_interpreter="/usr/bin/python"
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
let g:vim_json_syntax_conceal = 0
"disable bells
au GUIEnter * set vb t_vb=
autocmd BufEnter * silent! lcd %:p:h

"autocmd vimenter * NERDTree
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key = '<leader>'
autocmd FileType html,css,sass,scss,less EmmetInstall

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" flag bad whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"  property load folding for python sympylfold plugin
"autocmd BufWinEnter *.py setlocal foldmethod=indent
"autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
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

syntax on
let g:rehash256 = 1

let g:ScreenImpl = "Tmux"
let g:ScreenShellTmuxInitArgs = '-2'

nmap <leader>r :!python %<CR>
"nmap <leader>rr :ScreenSend<cr>
"vmap <leader>rr :ScreenSend<cr>
"nmap <leader>rx :ScreenQuit<cr>

colorscheme delek
