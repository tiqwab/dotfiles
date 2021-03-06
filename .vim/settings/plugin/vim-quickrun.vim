NeoBundleLazy "thinca/vim-quickrun", {
     \ "autoload": {
     \   "mappings": [['nxo', '<Plug>(quickrun)']]
     \ }}


let s:hooks = neobundle#get_hooks("vim-quickrun")
"function! s:hooks.on_source(bundle)
"    let g:quickrun_config = {
"        \ "*": {"runner": "remote/vimproc"},
"        \ }
"endfunction

" runner/vimproc/updatetime で出力バッファの更新間隔をミリ秒で設定できます
" updatetime が一時的に書き換えられてしまうので注意して下さい
"
" Be careful to edit quickrun_config: quickrun_config is also used in vim-quickrun.vim.
if ! exists('g:quickrun_config')
    let g:quickrun_config = {}
endif
let g:quickrun_config["_"] = {
\   "runner" : "vimproc",
\   "runner/vimproc/updatetime" : 60
\}
