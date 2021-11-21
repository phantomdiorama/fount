" this is a light modification of romainl's headings gist:
" https://gist.github.com/romainl/ac63e108c3d11084be62b3c04156c263

function! s:JumpToNextHeading(direction, count)
    let col = col(".")

    silent execute a:direction == "up" ? '?\v^(INT|EXT)' : '/\v^(INT|EXT)'

    if a:count > 1
        silent execute "normal! " . repeat("n", a:direction == "up" && col != 1 ? a:count : a:count - 1)
    endif

    silent execute "normal! " . col . "|"

    unlet col
endfunction

nnoremap <buffer> <silent> <leader>j :<C-u>call <SID>JumpToNextHeading("down", v:count1)<CR>
nnoremap <buffer> <silent> <leader>k :<C-u>call <SID>JumpToNextHeading("up", v:count1)<CR>
