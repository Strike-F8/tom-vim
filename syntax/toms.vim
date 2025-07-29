" Vim syntax file for the 'tom' language
" Maintainer: Edward Fernandez (Strike_F8@pm.me)
" Language: tom (.toms)
" Description: Syntax highlighting based on language spec

if exists("b:current_syntax")
  finish
endif

" === Keywords ===
syntax keyword tomControl if else switch case default for while do repeat break continue return forward
highlight link tomControl Statement

syntax keyword tomKeywordDeclaration class const static final abstract new binary native attach author title import extends public private
highlight link tomKeywordDeclaration Keyword

" === Types ===
syntax keyword tomType int double string Vector var void Index Buffer BmpFile Point Object Matrix Plane Path Rect
highlight link tomType Type

syntax keyword tomIdentifier DropDownList TabCtrl CalcBox Dialog ArrangeBar PushBtn EditCtrl CtrlList Arranger Checkbox
highlight link tomIdentifier Identifier

syntax match tomMatchIdentifiers /\v\<[A-Z][a-zA-Z]*(Handle|Scene|Prop|Info)\>/
highlight link tomArithmetic Identifier

syntax match tomMatchIdentifiers2 /\v\< (Kjs|DLG) [A-Z] [a-zA-Z0-9_]* \>/
highlight link tomMatchIdentifiers2 Identifier

" === Constant keywords ===
syntax keyword tomConst null true false
highlight link tomConst	Constant

" === Definitions ===
syntax keyword tomModule title author native attach import
highlight link tomModule PreProc

" === Language Variables ===
syntax keyword tomLanguageVariable this super
highlight link tomLanguageVariable Identifier

" === Operators ===
syntax match tomOperator '\V++\|--\|.\|\[\|]\|!\|~\|-\|(\|)\|\<is\>\|isnot\|copyof\|sizeof\|typeof\|\\|\|&\|\^'
highlight link tomOperator Operator

syntax match tomArithmetic '\V+\|-\|*\|/'
highlight link tomArithmetic Operator

syntax match tomAssignment /=\|+=\|-=|\*=|\/=|%=|<<=|>>=|&=|\^=|\|=/
highlight link tomAssignment Operator

" === Numbers ===
syntax match tomNumber /\v<(\d+\.\d*|\d*\.\d+|\d+)>/
highlight link tomNumber Number

" === Strings ===
" Double-quoted strings
syntax region tomStringDouble start=/"/ end=/"/ contains=tomEscapeSequence keepend
highlight link tomStringDouble String

" Escape sequences inside double-quoted strings
syntax match tomEscapeSequence /\\\([\"'\\ntrbfu]\|x[0-9A-Fa-f]\{2\}\|u[0-9A-Fa-f]\{4\}\)/ contained containedin=tomStringDouble
highlight link tomEscapeSequence SpecialChar

" Single-quoted character literals or strings
syntax region tomCharSingle start=+'+ end=+'+ keepend
highlight link tomCharSingle Character

" === Comments ===
" Single-line comments starting with //
syntax match tomCommentLine "//.*$" contains=tomTodoKeyword
highlight link tomCommentLine Comment

" TODO keyword inside single-line comments
syntax match tomTodoKeyword /\v(TODO:)\c/ contained containedin=tomCommentLine
highlight link tomTodoKeyword Todo

" Block comments starting with /* and ending with */
syntax region tomCommentBlock start="/\*" end="\*/" contains=tomTodoKeyword
highlight link tomCommentBlock Comment

" TODO keyword inside block comments
syntax match tomTodoKeyword /\v(TODO:)\c/ contained containedin=tomCommentBlock
highlight link tomTodoKeyword Todo

" === Labels ===
syntax match tomLabel /^\s*\zs\w\+\ze:/
highlight link tomLabel	Label

syntax match tomSupportFunctionBuiltin /\v\<sizeof|GetItem(Double|Integer|String)?|LoadAttached|BmpFile|SplitText|JoinText|OkCancel\>/
highlight link tomSupportFunctionBuiltin Function

syntax match tomSupportFunctionDebug /\v\<DebugMessage|ErrorMessage\>/
highlight link tomSupportFunctionDebug Function

syntax match tomInvalidShort /\v\<[a-z_][a-zA-Z0-9_]{0,2}\>/
highlight link tomInvalidShort Error

syntax match tomVariableOther /\v\<[a-z_][a-zA-Z0-9_]{3,10}\>/
highlight link tomVariableOther Identifier



let b:current_syntax = "toms"
