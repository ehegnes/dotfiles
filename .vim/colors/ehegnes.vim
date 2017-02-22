" Vim color file

" Author: Eric Hegnes <eric.hegnes@gmail.com>

" Description: The prettiest fucking Vim theme you've ever fucking seen in
"              your miserable fucking life where you spend hours searching
"              online through random folk's github dotfiles for 'that one
"              perfect theme,' you miserable fuck.
"
" Credits: Original file based on Molokai theme by Tomas Restrepo.


" Beginning stuffs
hi clear

if version > 580
    "no guarantees for version 5.8 and below, but this makes it stop
    "complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="ehegnes"


" Colors (support for 256-color terminal)
hi Normal          ctermfg=252  ctermbg=none
hi CursorLine      ctermbg=236                cterm=none
hi CursorLineNr    ctermfg=179  ctermbg=236   cterm=none

hi Boolean         ctermfg=169
hi Character       ctermfg=222
hi Number          ctermfg=169
hi String          ctermfg=113
hi Conditional     ctermfg=197                cterm=bold
hi Constant        ctermfg=160                cterm=bold
hi Cursor          ctermfg=16   ctermbg=253
hi Debug           ctermfg=225                cterm=bold
hi Define          ctermfg=208
hi Delimiter       ctermfg=241

hi DiffAdd         ctermbg=24
hi DiffChange      ctermfg=181  ctermbg=239
hi DiffDelete      ctermfg=162  ctermbg=53
hi DiffText        ctermbg=102                cterm=bold

hi Directory       ctermfg=33                 cterm=bold
hi Error           ctermfg=255  ctermbg=196   cterm=bold
hi ErrorMsg        ctermfg=196  ctermbg=236   cterm=bold
hi Exception       ctermfg=197                cterm=bold
hi Float           ctermfg=169
hi FoldColumn      ctermfg=67   ctermbg=16
hi Folded          ctermfg=67   ctermbg=16
hi Function        ctermfg=208
hi Identifier      ctermfg=208
hi Ignore          ctermfg=244  ctermbg=232
hi IncSearch       ctermfg=193  ctermbg=16

hi Keyword         ctermfg=197                cterm=bold
hi Label           ctermfg=229                cterm=none
hi Macro           ctermfg=222
hi SpecialKey      ctermfg=81

hi MatchParen      ctermfg=239  ctermbg=none  cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=197

"complete menu
hi Pmenu           ctermfg=250  ctermbg=238
"hi PmenuSel       ctermfg=66   ctermbg=187
hi PmenuSbar       ctermbg=250


hi PreCondit       ctermfg=222                cterm=bold
hi PreProc         ctermfg=222
hi Question        ctermfg=81
hi Repeat          ctermfg=197                cterm=bold
hi Search          ctermfg=16   ctermbg=222   cterm=NONE

" marks column
hi SignColumn      ctermfg=118  ctermbg=235
hi SpecialChar     ctermfg=161                cterm=bold
hi SpecialComment  ctermfg=245                cterm=bold
hi Special         ctermfg=81
if has("spell")
hi SpellBad        ctermbg=88
hi SpellCap        ctermbg=17
hi SpellLocal      ctermbg=17
hi SpellRare       ctermfg=none ctermbg=none cterm=reverse
endif
hi Statement       ctermfg=197                cterm=bold
hi StatusLine      ctermfg=238  ctermbg=253
hi StatusLineNC    ctermfg=244  ctermbg=232
hi StorageClass    ctermfg=208
hi Structure       ctermfg=33                 cterm=bold
hi Tag             ctermfg=197
hi Title           ctermfg=203
hi Todo            ctermfg=231  ctermbg=232   cterm=bold

hi Typedef         ctermfg=33
hi Type            ctermfg=33                 cterm=none
hi Underlined      ctermfg=244                cterm=underline

hi VertSplit       ctermfg=244  ctermbg=232   cterm=bold
hi VisualNOS       ctermbg=238
hi Visual          ctermbg=238
hi WarningMsg      ctermfg=179  ctermbg=236   cterm=bold
hi WildMenu        ctermfg=81   ctermbg=16

hi Comment         ctermfg=66
hi CursorColumn    ctermbg=236
hi ColorColumn     ctermbg=236
hi LineNr          ctermfg=66   ctermbg=236
hi NonText         ctermfg=66

hi SpecialKey      ctermfg=239

hi vimCommand      ctermfg=179
hi vimHiLink       ctermfg=33
hi vimHiGroup      ctermfg=33
hi vimGroup        ctermfg=33

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
