" Vim syntax file
" Language:    Ioke <http://ioke.org>
" Maintainer:  :flaviusb
" Last Change: August 11, 2011
" URL:         http://github.com/flaviusb/ioke-vim


" For vim-version 5.x: Clear all syntax items
" For vim-version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Cursorline makes using bg highlights less effective for detecting scope
" problems
setlocal nocursorline

" Change this to something sane at some point
setlocal iskeyword=35,36,37,42,43,45,47,48,49,50,51,52,53,54,55,56,57,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,92,94,95,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122

syn case match 

syn region iokeQQ start="\%('\|''\)" end="\%(\_s\|[+\-*&^%<>\\\/[\]]\)\@=" contains=iokeQuoteString,iokeSquareString
syn match iokeQQOp display "\%('\|''\)[+\-*&^%<>\\\/[\]]\+"
syn cluster iokeListCluster contains=TOP,iokeParenError,iokeParen0,iokeParen1,iokeParen2,iokeParen3,iokeParen4,iokeParen5,iokeParen6,iokeParen7,iokeParen8,iokeParen9

syn match iokeCurlyError display "}"
syn region stringSplice matchgroup=StringSpliceRegion start=/#{/ skip="|..\{-}|" end=/}/ contains=@iokeListCluster,iokeParenError2,iokeParen0 contained

syn match iokeParenError display ")" 
syn match iokeParenError2 display ")" contained

syn region iokeParen0 matchgroup=hlLevel0 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel0 end=")" contains=@iokeListCluster,iokeParen1 
syn region iokeParen1 matchgroup=hlLevel1 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel1 end=")" contains=@iokeListCluster,iokeParen2 contained 
syn region iokeParen2 matchgroup=hlLevel2 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel2 end=")" contains=@iokeListCluster,iokeParen3 contained 
syn region iokeParen3 matchgroup=hlLevel3 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel3 end=")" contains=@iokeListCluster,iokeParen4 contained 
syn region iokeParen4 matchgroup=hlLevel4 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel4 end=")" contains=@iokeListCluster,iokeParen5 contained 
syn region iokeParen5 matchgroup=hlLevel5 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel5 end=")" contains=@iokeListCluster,iokeParen6 contained 
syn region iokeParen6 matchgroup=hlLevel6 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel6 end=")" contains=@iokeListCluster,iokeParen7 contained 
syn region iokeParen7 matchgroup=hlLevel7 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel7 end=")" contains=@iokeListCluster,iokeParen8 contained 
syn region iokeParen8 matchgroup=hlLevel8 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel8 end=")" contains=@iokeListCluster,iokeParen9 contained 
syn region iokeParen9 matchgroup=hlLevel9 start="\%(`\|'\|''\)\=(" skip="|..\{-}|" matchgroup=hlLevel9 end=")" contains=@iokeListCluster,iokeParen0 contained 

syn region hashBang start=/^#!\// end=/$/
syn region iokeQuoteString start=/"/ skip=/\\"/ end=/"/ contains=@Spell,stringSplice
syn region iokeSquareString start=/#\[/ skip=/\\]/ end=/]/ contains=@Spell,stringSplice

syn region iokeComment start=/;/ end=/$/ contains=@Spell

hi def link iokeParenError Error
hi def link iokeParenError2 Error
hi def link iokeCurlyError Error
hi def link iokeQuoteString IokeString
hi def link iokeSquareString IokeString
hi def link hashBang Comment
hi def link iokeComment SemicolonComment
hi def link iokeQQ PreProc
hi def link iokeQQOp PreProc

hi def SemicolonComment ctermfg=grey guifg=LightGrey
hi def IokeString guifg=Black guibg=#fff0f0
hi def StringSpliceRegion guifg=Black guibg=LightGreen
hi def LiteralStringDoc guifg=#D04020

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

syn sync lines=300

let b:current_syntax="ioke"
