" Insert bundles here
" if has('lua') && v:version >= 703 && has('patch885')
" if has('lua') && v:version >= 703
"     NeoBundleLazy "Shougo/neocomplete.vim", {
"         \ "autoload": {
"         \   "insert": 1,
"         \ }}
"     let g:neocomplete#enable_at_startup = 1
"     let s:hooks = neobundle#get_hooks("neocomplete.vim")
"     function! s:hooks.on_source(bundle)
"         let g:acp_enableAtStartup = 0
"         let g:neocomplet#enable_smart_case = 1
"     endfunction
" endif
