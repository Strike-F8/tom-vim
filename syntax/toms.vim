" Vim syntax file for the 'tom' language
" Maintainer: Edward Fernandez (Strike_F8@pm.me)
" Language: tom (.toms)
" Description: Syntax highlighting based on language spec

if exists("b:current_syntax")
  finish
endif

" === Keywords ===
syntax keyword tomControl if else switch case default for while do repeat break continue return forward import
highlight link tomControl	    Keyword

" === Types ===
syntax keyword tomType int float bool string class
highlight link tomType		    Type

" === Constant keywords ===
syntax keyword tomConst null true false
highlight link tomConst		    Constant

" === Definitions ===
syntax keyword tomModule title author native attach compact
highlight link tomModule	    PreProc

" === Language Variables ===
syntax keyword tomLanguageVariable this super
highlight link tomLanguageVariable  Identifier

" === Operators ===
syntax match tomOperator '\V++\|--\|.\|\[\|]\|!\|~\|-\|(\|)\|\<is\>\|isnot\|copyof\|sizeof\|typeof\|\\|\|&\|\^'
highlight link tomOperator	    Operator

syntax match tomAssignment /=\|+=\|-=|\*=|\/=|%=|<<=|>>=|&=|\^=|\|=/
highlight link tomAssignment	    Operator

syntax match tomConditional /?\|:/
highlight link tomConditional	    Conditional

" === Numbers ===
syntax match tomNumber /\v<(\d+\.\d*|\d*\.\d+|\d+)>/
highlight link tomNumber	    Number

" === Strings ===
syntax region tomString start=/"/ skip=/\\"/ end=/"/
highlight link tomString	    String

" === Comments ===
syntax match tomComment /\/\/.*/
highlight link tomComment	    Comment

syntax match tomTodoComment /\v(TODO:)\c/ containedin=tomComment
highlight link tomTodoComment	    Todo

" === Labels ===
syntax match tomLabel /^\s*\zs\w\+\ze:/
highlight link tomLabel		    Label


let b:current_syntax = "toms"
