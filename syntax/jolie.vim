" Vim syntax file
" Language: jolie 1.0

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword jolieKey if then else for foreach while with in
syn keyword jolieKey inputPort outputPort interface type instanceof courier forward
syn keyword jolieKey OneWay RequestResponse Location Protocol Interfaces Aggregates Redirects
syn keyword jolieKey main init define csets this embedded constants
syn keyword jolieKey install scope throw throws synchronized 
syn keyword jolieKey undef is_defined 
syn keyword jolieKey execution single concurrent sequential

" Comments
syn match jolieComment "//.*$"
syn region jolieComment start='/\*' end='\*/'

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

hi def link jolieKey		Statement
hi def link jolieComment	Comment
hi def link joliePreProc	PreProc
hi def link jolieType		Type
hi def link jolieConst		Constant
hi def link jolieString		String
hi def link jolieNumber		Constant
