" Refers to the help documents by ':help xxx' if required
" To install into Mac: brew install vim --with-lua --with-python3

" Set up basic configurations
runtime! settings/base/init.vim

" NeoBundle
let s:noplugin = 0
let s:bundle_root = expand('~/.vim/bundle')
let s:neobundle_root = s:bundle_root . '/neobundle.vim'
if !isdirectory(s:neobundle_root) || v:version < 702
    " NeoBundleが存在しない、もしくはVimのバージョンが古い場合はプラグインを一切
    " 読み込まない
    let s:noplugin = 1
else
    " NeoBundleを'runtimepath'に追加し初期化を行う
    if has('vim_starting')
        execute "set runtimepath+=" . s:neobundle_root
    endif
    call neobundle#begin(s:bundle_root)

    " NeoBundle自身をNeoBundleで管理させる
    NeoBundleFetch 'Shougo/neobundle.vim'

    " Call plugins
    runtime! settings/plugin/*.vim

    " インストールされていないプラグインのチェックおよびダウンロード
    NeoBundleCheck

    call neobundle#end()
endif

" Configure key mappings
runtime! settings/base/map.vim

" Syntax
syntax enable " Enable syntax highlighting
set background=dark
" silent! colorscheme solarized
" silent! colorscheme dracula
" silent! colorscheme hybrid

" use hybrid as colorscheme, but change color of line number
autocmd ColorScheme * highlight LineNr ctermfg=240
colorscheme hybrid

" let g:solarized_termcolors=256
let g:hybrid_custom_term_colors = 1
" syntax on " Set default of syntax highlighting

" For xmonad
set guiheadroom=0

" Enable setting depending on filetype(e.g. *.py, *.hs)
filetype plugin indent on 
