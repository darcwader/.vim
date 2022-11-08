" Vim color file
" Maintainer:   Yegappan Lakshmanan
" Last Change:  2001 Sep 9

" Color settings similar to that used in Borland IDE's.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="borland"

hi Normal       term=NONE cterm=bold ctermfg=190 ctermbg=19
hi Normal       gui=NONE cterm=bold guifg=190 guibg=19
hi NonText      term=NONE cterm=bold ctermfg=White ctermbg=19
hi NonText      gui=NONE guifg=White guibg=19

hi Statement    term=NONE cterm=bold ctermfg=White  ctermbg=19
hi Statement    gui=NONE guifg=White guibg=19
hi Special      term=NONE cterm=bold ctermfg=Cyan ctermbg=19
hi Special      gui=NONE guifg=Cyan guibg=19
hi Constant     term=NONE cterm=bold ctermfg=202 ctermbg=19
hi Constant     gui=NONE guifg=202 guibg=19
hi Comment      term=NONE cterm=bold ctermfg=Gray ctermbg=19
hi Comment      gui=NONE guifg=Gray guibg=19
hi Preproc      term=NONE cterm=bold ctermfg=Green ctermbg=19
hi Preproc      gui=NONE guifg=Green guibg=19
hi Type         term=NONE cterm=bold ctermfg=White ctermbg=19
hi Type         gui=NONE guifg=White guibg=19
hi Identifier   term=NONE cterm=bold ctermfg=White ctermbg=19
hi Identifier   gui=NONE guifg=White guibg=19

hi StatusLine   term=bold cterm=bold ctermfg=Black ctermbg=White
hi StatusLine   gui=bold guifg=Black guibg=White

hi StatusLineNC term=NONE cterm=bold ctermfg=Black ctermbg=White
hi StatusLineNC gui=NONE guifg=Black guibg=White

hi Visual       term=NONE cterm=bold ctermfg=Black ctermbg=DarkCyan
hi Visual       gui=NONE guifg=Black guibg=DarkCyan

hi Search       term=NONE cterm=bold ctermbg=Gray
hi Search       gui=NONE guibg=Gray

hi VertSplit    term=NONE cterm=bold ctermfg=Black ctermbg=White
hi VertSplit    gui=NONE guifg=Black guibg=White

hi Directory    term=NONE cterm=bold ctermfg=Green ctermbg=19
hi Directory    gui=NONE guifg=Green guibg=19

hi WarningMsg   term=standout cterm=bold ctermfg=Red ctermbg=19
hi WarningMsg   gui=standout guifg=Red guibg=19

hi Error        term=NONE cterm=bold ctermfg=White ctermbg=Red
hi Error        gui=NONE guifg=White guibg=Red

hi Cursor       ctermfg=Black cterm=bold ctermbg=190
hi Cursor       guifg=Black guibg=190

