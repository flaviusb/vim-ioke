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

syn region iokeQQ start="\%('\|''\)" end="\%(\_s\|[+\-*&^%<>\\\/[\])]\)\@=" contains=iokeQuoteString,iokeSquareString
syn cluster iokeListCluster contains=TOP,iokeParenError,iokeParen0,iokeParen1,iokeParen2,iokeParen3,iokeParen4,iokeParen5,iokeParen6,iokeParen7,iokeParen8,iokeParen9

syn match iokeCurlyError display "}"
syn region stringSplice matchgroup=StringSpliceRegion start=/#{/ skip="|..\{-}|" end=/}/ contains=@iokeListCluster,iokeParenError2,iokeParen0 contained

syn match iokeParenError display ")" 
syn match iokeParenError2 display ")" contained

syn region iokeParen0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel0 end=")" contains=@iokeListCluster,iokeParen1 
syn region iokeParen1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel1 end=")" contains=@iokeListCluster,iokeParen2 contained 
syn region iokeParen2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel2 end=")" contains=@iokeListCluster,iokeParen3 contained 
syn region iokeParen3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel3 end=")" contains=@iokeListCluster,iokeParen4 contained 
syn region iokeParen4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel4 end=")" contains=@iokeListCluster,iokeParen5 contained 
syn region iokeParen5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel5 end=")" contains=@iokeListCluster,iokeParen6 contained 
syn region iokeParen6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel6 end=")" contains=@iokeListCluster,iokeParen7 contained 
syn region iokeParen7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel7 end=")" contains=@iokeListCluster,iokeParen8 contained 
syn region iokeParen8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel8 end=")" contains=@iokeListCluster,iokeParen9 contained 
syn region iokeParen9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel9 end=")" contains=@iokeListCluster,iokeParen0 contained 

syn region hashBang start=/^#!\// end=/$/
syn region iokeQuoteString start=/"/ skip=/\\"/ end=/"/ contains=@Spell,stringSplice,qStringEscape
syn region iokeSquareString start=/#\[/ skip=/\\]/ end=/]/ contains=@Spell,stringSplice,sStringEscape

syn match qStringEscape display "\(\\b\|\\e\|\\t\|\\n\|\\f\|\\r\|\\\"\|\\\\\|\\#\|\\\Z\|\\u[0-9a-fA-F]{1,4}\|\\[0-3]?[0-7]?[0-7]\)" contained
syn match sStringEscape display "\(\\b\|\\e\|\\t\|\\n\|\\f\|\\r\|\\]\|\\\\\|\\#\|\\\Z\|\\u[0-9a-fA-F]{1,4}\|\\[0-3]?[0-7]?[0-7]\)" contained

syn region iokeComment start=/;/ end=/$/ contains=@Spell

hi def link qStringEscape LiteralStringEscape
hi def link sStringEscape LiteralStringEscape

hi def link iokeParenError Error
hi def link iokeParenError2 Error
hi def link iokeCurlyError Error
hi def link iokeQuoteString IokeString
hi def link iokeSquareString IokeString
hi def link hashBang Comment
hi def link iokeComment SemicolonComment
hi def link iokeQQ PreProc

syn sync lines=300

let b:current_syntax="ioke"
