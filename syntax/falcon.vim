" Vim syntax file
" Language: Falcon
" Maintainer: Steven Oliver <oliver.steven@gmail.com>
" Website: 
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" When wanted, highlight the trailing whitespace.
if exists("c_space_errors")
  if !exists("c_no_trail_space_error")
    syn match falconSpaceError "\s\+$"
  endif

  if !exists("c_no_tab_space_error")
    syn match falconSpaceError " \+\t"me=e-1
  endif
endif

" Symbols.
syn match   falconSymbol "\(;\|,\|\.\)"

" Operators.
syn match   falconOperator "\(+\|-\|\*\|/\|=\|<\|>\|@\|\*\*\|!=\|\~=\)"
syn match   falconOperator "\(<=\|>=\|=>\|\.\.\|<<\|>>\|\"\)"

" Todo.
syn keyword falconTodo TODO FIXME XXX DEBUG NOTE

syn case ignore

" Keywords.
syn keyword falconKeyword BREAK CONTINUE DROPPING RETURN LAUNCH FROM GLOBAL
syn keyword falconKeyword CONST SELF SENDER CATCH RAISE GIVE CASE DEFAULT
syn keyword falconKeyword PASS LAMBDA DEF DIRECTIVE LOAD EXPORT 
syn keyword falconKeyword FUNCTION INNERFUNC INIT STATIC ATTRIBUTES FORFIRST 
syn keyword falconKeyword ENUM TRY CLASS SWITCH SELECT OBJECT
syn keyword falconKeyword EXIT PRINTL

" Conditionals.
syn keyword falconConditional IF ELIF ELSE END
syn match   falconConditional "END\s\IF"

" Loops.
syn keyword falconRepeat LOOP WHILE FOR
syn keyword falconKeyword FORLAST FORMIDDLE 

" Various types of comments.
if exists("c_comment_strings")
  syntax match falconCommentSkip contained "^\s*\*\($\|\s\+\)"
  syntax region falconCommentString contained start=+L\="+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=falconCommentSkip
  syntax region falconComment2String contained start=+L\="+ skip=+\\\\\|\\"+ end=+"+ end="$"
  syntax region falconComment start="/\*" end="\*/" contains=@falconCommentGroup,falconComment2String,falconCharacter,falconNumbersCom,falconSpaceError
  syntax region falconCommentL start="//" skip="\\$" end="$" keepend contains=@falconCommentGroup,falconComment2String,falconCharacter,falconNumbersCom,falconSpaceError,@Spell
else
  syntax region falconComment start="/\*" end="\*/" contains=@falconCommentGroup,falconSpaceError
endif

syn sync ccomment falconComment

" Various types of literals.
syn match falconNumbers transparent "\<[+-]\=\d\|[+-]\=\.\d" contains=falconIntLiteral,falconFloatLiteral
syn match falconNumbersCom contained transparent "\<[+-]\=\d\|[+-]\=\.\d" contains=falconIntLiteral,falconFloatLiteral
syn match falconIntLiteral contained "[+-]\=\d\+"
syn match falconFloatLiteral contained "[+-]\=\d\+\.\d*"
syn match falconFloatLiteral contained "[+-]\=\d*\.\d*"
syn match falconCharacter    "'[^']'"
syn match falconString  "'\([^']\|''\)*'"
syn region falconString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=@Spell

" Syntax Synchronizing
syn sync minlines=10 maxlines=100

" Define the default highlighting.
if version >= 600 || !exists("did_falcon_syn_inits")
  if version < 600
    let did_falcon_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink falconKeyword		Keyword
  HiLink falconCommentString	String
  HiLink falconTodo		Todo
  HiLink falconConditional      Keyword
  HiLink falconRepeat           Keyword
  HiLink falconcommentSkip      Comment
  HiLink falconComment          Comment
  HiLink falconOperator         Operator
  HiLink falconSymbol           Normal
  HiLink falconSpaceError       Error
  HiLink falconIntLiteral       Number
  HiLink falconFloatLiteral     Number
  HiLink falconCharacter        Character
  HiLink falconString           String

  delcommand HiLink
endif

let b:current_syntax = "falcon"

