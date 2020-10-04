Emoji source for asyncomplete.vim
=================================

Provide emoji completions for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)

### Installing

```viml
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-emoji.vim'
```

#### Registration

```vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
    \ 'name': 'emoji',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#emoji#completor'),
    \ }))
```
