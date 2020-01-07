" for syntax check
NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'cohama/vim-hier'

" ユーザ側で定義した g:quickrun_config
" 書き込み後にシンタックスチェックを行う
let g:watchdogs_check_BufWritePost_enable = 1
let g:watchdogs_check_BufWritePost_enables = {
\   "haskell": 0
\}

" There was '-Z no-trans' in the default cmdopt of rustc,
" but it did'nt work (in stable release of rustc and the option is missing in the current nightly release?).
" That's why I removed it.
" Add new cmdopts if necessary.
"
" Be careful to edit quickrun_config: quickrun_config is also used in vim-quickrun.vim.
if ! exists('g:quickrun_config')
    let g:quickrun_config = {}
endif
let g:quickrun_config["watchdogs_checker/rustc"] = {
\   "cmdopt" : "",
\}
let g:quickrun_config["cpp/watchdogs_checker"] = {
\   "type" : "watchdogs_checker/clang_check",
\   "cmdopt" : "--std=c++14",
\}
