NeoBundleLazy 'fatih/vim-go', {
            \ "autoload": { "filetypes": ["go"] }
            \ }

if ! empty(neobundle#get("vim-go"))
    " let g:go_highlight_types = 1
    " let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_structs = 1
    autocmd FileType go :highlight goErr ctermfg=214
    autocmd FileType go :match goErr /\<err\>/
endif
