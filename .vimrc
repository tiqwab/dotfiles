" Refers to the help documents by ':help xxx' if required
" To install into Mac: brew install vim --with-lua --with-python3

" The current settings for plugins use features of vim (>= 8) itself.
" ref. https://tyru.hatenablog.com/entry/2017/12/20/035142

" Set up basic configurations
runtime! settings/base/init.vim

" Configure plugins
" runtime! settings/plugin/*.vim
" runtime! settings/plugin/ale.vim
runtime! settings/plugin/syntastic.vim
runtime! settings/plugin/im_control.vim
runtime! settings/plugin/neosnippet.vim

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
