syntax clear

hi def SemicolonComment ctermfg=grey guifg=LightGrey
hi def IokeString guifg=Black guibg=#fff0f0
hi def StringSpliceRegion guifg=Black guibg=LightGreen
hi def LiteralStringDoc guifg=#D04020
hi def LiteralStringEscape gui=bold guifg=#606060 guibg=#fff0f0
hi def LiteralStringRegex guifg=#000000 guibg=#fff0ff
hi def LiteralStringRegexEscape gui=bold guifg=#606060 guibg=#fff0ff
hi def LiteralStringSymbol guifg=#A06000
hi def LiteralStringOther guifg=#D02000 guibg=#fff0f0

if &bg == "dark"
  hi def hlLevel0 ctermfg=red guifg=red1
  hi def hlLevel1 ctermfg=yellow guifg=orange1
  hi def hlLevel2 ctermfg=green guifg=yellow1
  hi def hlLevel3 ctermfg=cyan guifg=greenyellow
  hi def hlLevel4 ctermfg=magenta guifg=green1
  hi def hlLevel5 ctermfg=red guifg=springgreen1
  hi def hlLevel6 ctermfg=yellow guifg=cyan1
  hi def hlLevel7 ctermfg=green guifg=slateblue1
  hi def hlLevel8 ctermfg=cyan guifg=magenta1
  hi def hlLevel9 ctermfg=magenta guifg=purple1
else
  hi def hlLevel0 ctermfg=red guifg=red3
  hi def hlLevel1 ctermfg=darkyellow guifg=orangered3
  hi def hlLevel2 ctermfg=darkgreen guifg=orange2
  hi def hlLevel3 ctermfg=blue guifg=yellow3
  hi def hlLevel4 ctermfg=darkmagenta guifg=olivedrab4
  hi def hlLevel5 ctermfg=red guifg=green4
  hi def hlLevel6 ctermfg=darkyellow guifg=paleturquoise3
  hi def hlLevel7 ctermfg=darkgreen guifg=deepskyblue4
  hi def hlLevel8 ctermfg=blue guifg=darkslateblue
  hi def hlLevel9 ctermfg=darkmagenta guifg=darkviolet
endif


