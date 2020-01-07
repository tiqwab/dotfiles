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

" There was '-Z no-trans' in the default settings of cmdopt,
" but it did'nt work (in stable release of rustc and the option is missing in the current nightly release?).
" That's why I removed it.
" Add new cmdopts if necessary.
let g:quickrun_config = {
\  "watchdogs_checker/rustc" : {
     "cmdopt" : "",
\  },
\}
