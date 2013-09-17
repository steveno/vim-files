scriptencoding utf-8

" Filetype settings
if exists("did_load_filetypes")
    finish
endif

" Associate unknown file types
augroup filetypedetect
    au! BufRead,BufNewFile *.cmake,*.cmake.in   setfiletype cmake
    au! BufRead,BufNewFile CMakeLists.txt       setfiletype cmake
    au! BufRead,BufNewFile *.hta                setfiletype html
    au! BufRead,BufNewFile *.prog               setfiletype perl
    au! BufRead,BufNewFile *.prc,*.pkg          setfiletype plsql
    au! BufRead,BufNewFile wscript*             setfiletype python
    au! BufRead,BufNewFile *.vala,*.vapi        setfiletype vala
augroup END

" Some languages prefers tabs, some don't
autocmd FileType cmake          set noexpandtab sw=4 sts=4
autocmd FileType go             set noexpandtab sw=8 sts=8
autocmd FileType make           set noexpandtab
autocmd FileType sql            set expandtab sw=2 sts=2
autocmd BufRead *.vala,*.vapi   set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m sw=8 sts=8

" vim: set sw=4 sts=4 et tw=80 :
