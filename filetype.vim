scriptencoding utf-8

"---------------------------------------------
" Filetype settings file for Steven Oliver
" Last Updated - 12/05/2008
"---------------------------------------------

" Filetype settings
if exists("did_load_filetypes")
    finish
endif

" Associate unknown filetypes
augroup filetypedetect
    au! BufRead,BufNewFile *.buf	setfiletype plsql
    au! BufRead,BufNewFile *.prog	setfiletype perl
    au! BufRead,BufNewFile *.prc	setfiletype plsql
    au! BufRead,BufNewFile *.pkg        setfiletype plsql
    au! BufRead,BufNewFile *.ps1	setfiletype powershell
    au! BufRead,BufNewFile *.ics	setfiletype icalendar
    au! BufRead,BufNewFile *.fal        setfiletype falcon
    au! BufRead,BufNewFile *.exheres-0  setfiletype exheres-0
augroup END

" Turn off spellchecking for ics files
if strlen(&ft) == 'icalendar'
    setlocal nospell
endif

" Make prefers tabs
autocmd FileType make   set noexpandtab

" Make sure sql files get plsql syntax
let g:sql_type_default = 'plsql'


"---------------------------------------------
" vim: set sw=4 sts=4 et tw=80 :
"

