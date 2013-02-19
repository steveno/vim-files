all:

install:
    install -p -m 0644 file_type.vim $(HOME)/.vim/
    install -p -m 0644 plsql.vim $(HOME)/.vim/syntax/
    install -p -m 0644 vala.vim $(HOME)/.vim/syntax/
