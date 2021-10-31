set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" vim is mainly used in a simple case, so 'rustc' is enough instead of 'cargo'
let g:syntastic_rust_checkers = ['rustc']

let g:syntastic_go_checkers = ['go', 'golint']
