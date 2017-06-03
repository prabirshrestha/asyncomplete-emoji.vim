function! asyncomplete#sources#emoji#get_source_options(opt)
    return a:opt
endfunction

function! asyncomplete#sources#emoji#completor(opt, ctx)
    if !exists('s:emojis')
        let s:emojis = map(sort(keys(asyncomplete#sources#emoji#data#dict())), '{ "word": ":".v:val.":", "kind": asyncomplete#sources#emoji#data#emoji_for(v:val) }')
        call asyncomplete#log('cached emojis')
    endif
    let l:typed = a:ctx['typed']
    let l:startcol = match(l:typed, ':[^: \t]*$')

    if l:startcol > -1
        call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol + 1, s:emojis)
    endif
endfunction
