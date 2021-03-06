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
syn keyword jolieBlock constants inputPort outputPort interface cset init define main embedded type courier execution
syn keyword jolieControl if then else for foreach while with in
syn keyword jolieInterface OneWay RequestResponse Location Protocol Interfaces Aggregates Redirects throws
syn keyword jolieExecution single concurrent sequential
syn keyword jolieKeyword install scope throw synchronized spawn comp run forward linkIn linkOut
syn keyword jolieKeyword undef instanceof is_defined is_int is_bool is_string is_double is_long

" Integer number
syn match jolieNumber "\<\d\+\>"
" Floating point number, with dot, optional exponent
syn match jolieNumber  "\<\d\+\.\d*\%([eE][-+]\=\d\+\)\=\>"
" Floating point number, starting with a dot, optional exponent
syn match jolieNumber  "\.\d\+\%([eE][-+]\=\d\+\)\=\>"
" Floating point number, without dot, with exponent
syn match jolieNumber  "\<\d\+[eE][-+]\=\d\+\>"

" Includes
syn keyword jolieInclude include

" Data types
syn keyword jolieType bool int long double string raw void undefined any

" Built-in constants
syn keyword jolieConst true false this nullProcess null cH csets global

" Strings
syn match jolieSpecialError	contained "\\."
syn match jolieSpecialChar 	contained "\\[\"\\'ntbrf]"
syn region jolieString start=+"+ end=+"+ contains=jolieSpecialChar,jolieSpecialError

let b:current_syntax = "jolie"

hi def link jolieTodo			Todo
hi def link jolieComment		Comment

hi def link jolieBlock			Statement
hi def link jolieControl		Statement
hi def link jolieInterface		Statement
hi def link jolieExecution		Statement
hi def link jolieKeyword		Statement

hi def link jolieInclude		PreProc
hi def link jolieType			Type
hi def link jolieConst			Constant
hi def link jolieString			String
hi def link jolieNumber			Constant
hi def link jolieSpecialChar	Constant
hi def link jolieSpecialError	Error
