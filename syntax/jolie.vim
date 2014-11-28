" Vim syntax file
" Language: jolie

if exists("b:current_syntax")
	finish
endif

" Comments
syn keyword jolieTodo TODO FIXME XXX NOTE contained
syn match jolieComment "//.*$" contains=jolieTodo
syn region jolieComment start='/\*' end='\*/' contains=jolieTodo

" Keywords
syn keyword jolieBlock constants inputPort outputPort interface csets init define main embedded type courier execution
syn keyword jolieControl if then else for foreach while with in
syn keyword jolieInterface OneWay RequestResponse Location Protocol Interfaces Aggregates Redirects throws
syn keyword jolieExecution single concurrent sequential
syn keyword jolieKeyword install scope throw synchronized spawn comp run forward linkIn linkOut
syn keyword jolieKeyword undef instanceof is_defined is_int is_bool is_string is_double is_long

" Regular int like number with - + or nothing in front
syn match jolieNumber '\d\+' display
syn match jolieNumber '[-+]\d\+' display

" Floating point number with decimal
syn match jolieNumber '\d\+\.\d*' display
syn match jolieNumber '[-+]\d\+\.\d*' display

" Includes
syn keyword jolieInclude include

" Data types
syn keyword jolieType bool int long double string raw void undefined any

" Built-in constants
syn keyword jolieConst this nullProcess cH global

" Strings
syn region jolieString start='"' end='"'

let b:current_syntax = "jolie"

hi def link jolieTodo		Todo
hi def link jolieComment	Comment

hi def link jolieBlock		Statement
hi def link jolieControl	Statement
hi def link jolieInterface	Statement
hi def link jolieExecution	Statement
hi def link jolieKeyword	Statement

hi def link jolieInclude	PreProc
hi def link jolieType		Type
hi def link jolieConst		Constant
hi def link jolieString		String
hi def link jolieNumber		Constant
