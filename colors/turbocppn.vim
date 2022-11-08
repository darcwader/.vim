" Vim color file
"
" Author: Arunkumar Maniam Rajan
"
"

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="turbocpp"

"
" Support for 256-color terminal
"
if &t_Co > 255
   hi Normal          ctermfg=251 ctermbg=19     
   hi Normal          ctermfg=251 ctermbg=19     
   hi CursorLine      ctermfg=16  ctermbg=226   
   hi CursorLineNr    ctermfg=0                 
   hi Boolean         ctermfg=190                 
   hi Character       ctermfg=226               
   hi Number          ctermfg=190                 
   hi String          ctermfg=190                
   hi Conditional     ctermfg=161               
   hi Constant        ctermfg=190                 
   hi Cursor          ctermfg=16  ctermbg=253   
   hi Debug           ctermfg=225               
   hi Define          ctermfg=81                
   hi Delimiter       ctermfg=241               

   hi DiffAdd                     ctermbg=24    
   hi DiffChange      ctermfg=181 ctermbg=239   
   hi DiffDelete      ctermfg=162 ctermbg=53    
   hi DiffText                    ctermbg=102   

   hi Directory       ctermfg=118               
   hi Error           ctermfg=219 ctermbg=89    
   hi ErrorMsg        ctermfg=199 ctermbg=16    
   hi Exception       ctermfg=118               
   hi Float           ctermfg=135               
   hi FoldColumn      ctermfg=67  ctermbg=16    
   hi Folded          ctermfg=67  ctermbg=16    
   hi Function        ctermfg=118 
   hi Identifier      ctermfg=208               
   hi Ignore          ctermfg=244 ctermbg=232   
   hi IncSearch       ctermfg=193 ctermbg=16    

   hi keyword         ctermfg=93               
   hi Label           ctermfg=229               
   hi Macro           ctermfg=193               
   hi SpecialKey      ctermfg=81                

   hi MatchParen      ctermfg=233  ctermbg=208  
   hi ModeMsg         ctermfg=229               
   hi MoreMsg         ctermfg=229               
   hi Operator        ctermfg=93                

   " complete menu
   hi Pmenu           ctermfg=16  ctermbg=87    
   hi PmenuSel        ctermfg=255 ctermbg=242   
   hi PmenuSbar                   ctermbg=232   
   hi PmenuThumb      ctermfg=81                

   hi PreCondit       ctermfg=199               
   hi PreProc         ctermfg=199               
   hi Question        ctermfg=81                
   hi Repeat          ctermfg=161               
   hi Search          ctermfg=0   ctermbg=222   

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=124   
   hi SpecialChar     ctermfg=161               
   hi SpecialComment  ctermfg=245               
   hi Special         ctermfg=81                
   if has("spell")
       hi SpellBad                ctermbg=52    
       hi SpellCap                ctermbg=17    
       hi SpellLocal              ctermbg=17    
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=118               
   hi StatusLine      ctermfg=238 ctermbg=253   
   hi StatusLineNC    ctermfg=244 ctermbg=232   
   hi StorageClass    ctermfg=208               
   hi Structure       ctermfg=81                
   hi Tag             ctermfg=161               
   hi Title           ctermfg=166               
   hi Todo            ctermfg=231 ctermbg=232   

   hi Typedef         ctermfg=81                
   hi Type            ctermfg=81                
   hi Underlined      ctermfg=244               

   hi VertSplit       ctermfg=19  ctermbg=6     
   hi VisualNOS                   ctermbg=238   
   hi Visual                      ctermbg=165   
   hi WarningMsg      ctermfg=231 ctermbg=238   
   hi WildMenu        ctermfg=81  ctermbg=16    

   hi Comment         ctermfg=251               
   hi CursorColumn                ctermbg=236   
   hi ColorColumn                 ctermbg=20    
   hi LineNr          ctermfg=0   ctermbg=81    
   hi NonText         ctermfg=51               

   hi SpecialKey      ctermfg=59                

end

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

