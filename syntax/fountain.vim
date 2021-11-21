" minimal syntax highlighting for fountain
" 
if exists("b:current_syntax")
    finish
endif

" put syntax here
syn match fountainScene "\v^(INT|EXT)[.].*$"
syn match fountainChar "\v^[A-Z]{3,}[^.]\s?[A-Z '().]*$"
syn region fountainComment start="\v\/\*" end="\v\*\/" 

highlight link fountainScene title
highlight link fountainChar keyword
highlight link fountainComment comment

let b:current_syntax = "fountain"
