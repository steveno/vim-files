scriptencoding utf-8

"---------------------------------------------
" File type settings file for Steven Oliver
"---------------------------------------------

" Filetype settings
if exists("did_load_filetypes")
    finish
endif

" Associate unknown file types
augroup filetypedetect
    au! BufRead,BufNewFile *.buf                setfiletype plsql
    au! BufRead,BufNewFile *.prog               setfiletype perl
    au! BufRead,BufNewFile *.prc                setfiletype plsql
    au! BufRead,BufNewFile *.pkg                setfiletype plsql
    au! BufRead,BufNewFile *.hta                setfiletype html
    au! BufRead,BufNewFile *.vala,*.vapi        setfiletype vala
    au! BufRead,BufNewFile wscript*             setfiletype python
    au! BufRead,BufNewFile *.fal,*.ftd          setfiletype falcon
augroup END

" Some languages prefers tabs
autocmd FileType make           set noexpandtab
autocmd FileType go             set noexpandtab sw=8 sts=8
autocmd FileType sql            set expandtab sw=2 sts=2
autocmd BufRead *.vala,*.vapi   set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m sw=8 sts=8


" vim: set sw=4 sts=4 et tw=80 :
