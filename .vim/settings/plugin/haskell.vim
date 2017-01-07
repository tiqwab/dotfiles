" To use ghc-mod in vim
NeoBundleLazy 'eagletmt/ghcmod-vim', {
    \ "autoload": { "filetypes": ["haskell"] } }

if ! empty(neobundle#get("ghcmod-vim"))
    " Auto-checking on writing by ghcmod-vim
    autocmd BufWritePost *.hs,*.lhs GhcModCheckAndLintAsync
endif

" For code completion
" omnifunc of neco-ghc is set in `ftplugin/haskell.vim`
NeoBundleLazy 'eagletmt/neco-ghc', {
    \ "autoload": { "filetypes": ["haskell"] } }

" For indent
NeoBundleLazy 'neovimhaskell/haskell-vim', {
    \ "autoload": { "filetypes": ["haskell"] } }

" To be stylish
NeoBundleLazy 'nbouscal/vim-stylish-haskell', {
    \ "autoload": { "filetypes": ["haskell"] } }
