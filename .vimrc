"------------------------------------------------------------------------------
" Standard stuff.
"------------------------------------------------------------------------------

set nocompatible        " Disable vi compatibility.
set nobackup            " Do not keep a backup file.
set history=100         " Number of lines of command line history.
set undolevels=200      " Number of undo levels.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set ignorecase          " Case insensitive matching.
set incsearch           " Incremental search.
set smartcase           " match /foo to FOO and fOo but, /FOO to only former
"set noautoindent        " I indent my code myself.
set autoindent
set cindent
set vb t_vb= "visual beep
set virtualedit=all "cursor can move any damn where,.. pretty wicked
"set nocindent           " I indent my code myself.
set scrolloff=5         " Keep a context when scrolling.
set noerrorbells        " No beeps.
" set nomodeline          " Disable modeline.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set tabstop=4           " Number of spaces  counts for.
set expandtab
set shiftwidth=4    
set ttyscroll=0         " Turn off scrolling (this is faster).
set ttyfast             " We have a fast terminal connection.
set hlsearch            " Highlight search matches.
" set encoding=utf-8      " Set default encoding to UTF-8.
" set showbreak=+         " Show a '+' if a line is longer than the screen.
" set laststatus=2        " When to show a statusline.
" set autowrite           " Automatically save before :next, :make etc.

set nostartofline       " Do not jump to first character with page commands,
                        " i.e., keep the cursor in the current column.
set viminfo='20,\"50    " Read/write a .viminfo file, don't store more than
                        " 50 lines of registers.

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Tell vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
set listchars=tab:>-,trail:·,eol:$

" Enable syntax-highlighting.
if has("syntax")
  syntax on
endif

" Use brighter colors if your xterm has a dark background.
if &term =~ "xterm"
  set background=dark
endif

colo desert


"------------------------------------------------------------------------------
" Function keys.
"------------------------------------------------------------------------------
       	        
let mapleader = ","
nmap j gj
nmap k gk
nmap <C-e> :e#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap ; :NERDTreeToggle<CR>

" F1: Toggle hlsearch (highlight search matches).
nmap <F1> :set hls!<CR>
nmap <leader>md :%!/usr/local/bin/markdown.pl --html4tags <cr>

noremap 2 <C-f>
noremap 1 <C-b>

" F2: Toggle list (display unprintable characters).
"nnoremap  :set list!

"switch between headsr and no header
"set alternateNoDefaultAlternate 1
map <F2> :A <CR>
map <S-F2> :AS <CR>

" F3: Toggle expansion of tabs to spaces.
"nmap <F3>  :set expandtab!
 
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth=50
let Tlist_Close_On_Select=1
map <F4> :TlistToggle<CR><C-W><C-W>


map <F5> :tselect<CR>

map  <F8> :!ctags -R -f /home/sonde/.vim/tags/hb /home/sonde/Code/QtUi/workarea/src


" split window size control
noremap <F9> <C-W>\<
noremap <F10> <C-W>-
noremap <F11> <C-W>+
noremap <F12> <C-W>\>

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Enable this if you mistype :w as :W or :q as :Q.
" nmap :W :w
" nmap :Q :q


imap jj <ESC>


execute pathogen#infect()


"------------------------------------------------------------------------------
" Abbreviations.
"------------------------------------------------------------------------------

" My name + email address.
"ab uhh Uwe Hermann 

" Use 'g' to go to the top of the file.
"map g 1G

" Quit with 'q' instead of ':q'. VERY useful!


"------------------------------------------------------------------------------
" HTML.
"------------------------------------------------------------------------------

" Print an empty  tag.
"map! ;h 5hi

" Wrap an  tag around the URL under the cursor.
"map ;H lBi3hi


"------------------------------------------------------------------------------
" Miscellaneous stuff.
"------------------------------------------------------------------------------

" Spellcheck.
"map V :!ispell -x %:e!

" ROT13 decode/encode the selected text (visual mode).
" Alternative: 'unmap g' and then use 'g?'.

" Make p in visual mode replace the selected text with the "" register.
"vnoremap p :let current_reg = @"gvdi=current_reg
"------------------------------------------------------------------------------
" Local settings.
"------------------------------------------------------------------------------

" Source a local configuration file if available.
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

set tags=./tags,./TAGS,tags,TAGS,/home/sonde/.vim/tags/hb,/home/sonde/.vim/tags/qt

au BufRead,BufNewFile *.json set filetype=json


filetype plugin on
