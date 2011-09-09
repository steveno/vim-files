all:

install:
	install -p -m 0644 filetype.vim $(HOME)/.vim/filetype.vim
	install -p -m 0644 syntax/plsql.vim $(HOME)/.vim/syntax/plsql.vim
