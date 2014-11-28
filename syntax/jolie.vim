" Vim syntax file
" Language: jolie 1.0

if exists("b:current_syntax")
	finish
endif

" Comments
syn keyword jolieTodo TODO FIXME XXX NOTE contained
syn match jolieComment "//.*$" contains=jolieTodo
syn region jolieComment start='/\*' end='\*/' contains=jolieTodo

" Keywords
syn keyword jolieKey if then else for foreach while with in
syn keyword jolieKey inputPort outputPort interface type instanceof courier forward linkIn linkOut
syn keyword jolieKey OneWay RequestResponse Location Protocol Interfaces Aggregates Redirects
syn keyword jolieKey main init define csets this embedded constants
syn keyword jolieKey install scope throw throws synchronized spawn comp run
syn keyword jolieKey undef is_defined is_int is_bool is_string is_double is_long
syn keyword jolieKey execution single concurrent sequential

" Regular int like number with - + or nothing in front
syn match jolieNumber '\d\+' display
syn match jolieNumber '[-+]\d\+' display

" Floating point number with decimal
syn match jolieNumber '\d\+\.\d*' display
syn match jolieNumber '[-+]\d\+\.\d*' display

" Includes
syn keyword joliePreProc include

" Data types
syn keyword jolieType bool int long double string raw void undefined any

" Built-in constants
syn keyword jolieConst nullProcess cH global

" Strings
syn region jolieString start='"' end='"'

let b:current_syntax = "jolie"

hi def link jolieTodo		Todo
hi def link jolieComment	Comment
hi def link jolieKey		Statement
hi def link joliePreProc	PreProc
hi def link jolieType		Type
hi def link jolieConst		Constant
hi def link jolieString		String
hi def link jolieNumber		Constant
