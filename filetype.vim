scriptencoding utf-8

"---------------------------------------------
" Filetype settings file for Steven Oliver
"---------------------------------------------

" Filetype settings
if exists("did_load_filetypes")
    finish
endif

" Associate unknown filetypes
augroup filetypedetect
    au! BufRead,BufNewFile *.buf                setfiletype plsql
    au! BufRead,BufNewFile *.prog               setfiletype perl
    au! BufRead,BufNewFile *.prc                setfiletype plsql
    au! BufRead,BufNewFile *.pkg                setfiletype plsql
    au! BufRead,BufNewFile *.ps1                setfiletype powershell
    au! BufRead,BufNewFile *.ics                setfiletype icalendar
    au! BufRead,BufNewFile *.exheres-0          setfiletype exheres-0
    au! BufRead,BufNewFile *.hta                setfiletype html
    au! BufRead,BufNewFile *.vala,*.vapi        setfiletype vala
augroup END

" Turn off spellchecking for ics files
if strlen(&ft) == 'icalendar'
    setlocal nospell
endif

" Some languages prefers tabs
autocmd FileType make           set noexpandtab
autocmd FileType go             set noexpandtab sw=8 sts=8
autocmd FileType sql            set expandtab sw=2 sts=2
autocmd BufRead *.vala,*.vapi   set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m


" vim: set sw=4 sts=4 et tw=80 :

