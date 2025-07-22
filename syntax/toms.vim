" Vim syntax file for the 'tom' language
" Maintainer: Edward Fernandez (Strike_F8@pm.me)
" Language: tom (.toms)
" Description: Syntax highlighting based on language spec

if exists("b:current_syntax")
  finish
endif

" === Keywords ===
syntax keyword tomControl if else switch case default for while do repeat break continue return forward import
syntax keyword tomLabelLabel L

" === Types ===
syntax keyword tomType int float bool string class

" === Constant keywords ===
syntax keyword tomConst null true false

" === Definitions ===
syntax keyword tomModule title author native attach compact

" === Language Variables ===
syntax keyword tomLanguageVariable this super

" === Operators ===
syntax match tomOperator '\V++\|--\|.\|\[\|]\|!\|~\|-\|(\|)\|\<is\>\|isnot\|copyof\|sizeof\|typeof\|\\|\|&\|\^'
syntax match tomAssignment /=\|+=\|-=|\*=|\/=|%=|<<=|>>=|&=|\^=|\|=/
syntax match tomConditional /?\|:/

" === Numbers ===
syntax match tomNumber /\v<(\d+\.\d*|\d*\.\d+|\d+)>/

" === Strings ===
syntax region tomString start=/"/ skip=/\\"/ end=/"/

" === Comments ===
syntax match tomComment /\/\/.*/
syntax match tomTodoComment /\v(TODO:)\c/ containedin=tomComment

" === Labels ===
syntax match tomLabel /^\s*\zs\w\+\ze:/

" === Highlight links ===
highlight link tomControl	    Keyword
highlight link tomLabelLabel	    Label
highlight link tomType		    Type
highlight link tomConst		    Constant
highlight link tomOperator	    Operator
highlight link tomAssignment	    Operator
highlight link tomConditional	    Conditional
highlight link tomNumber	    Number
highlight link tomString	    String
highlight link tomComment	    Comment
highlight link tomLabel		    Label
highlight link tomModule	    PreProc
highlight link tomLanguageVariable  Identifier
highlight link tomTodoComment	    Todo

let b:current_syntax = "toms"
