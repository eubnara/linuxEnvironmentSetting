set sw=4 ts=4
set nocompatible
set showmatch
syntax on
set ci
set ai

set nu
colorscheme koehler
set history=100
set title
set autoindent
set cindent
set smartindent

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp949
set tags=../tags,./tags,./TAGS,tags,TAGS,/usr/include/tags

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"folding option to f1 v%zf or v]}zf on {
map <F1> v]}zf

"Using man page, prefer 'c' than 'shell' command
" ,ma ==> manual page
"This is a little bit different from man page popped up when I press 'K'.
func! Man()
    let sm = expand("<cword>")
    exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
endfunc
nmap ,ma :call Man()<cr><cr>
