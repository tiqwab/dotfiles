" Refers to the help documents by ':help xxx' if required

" To install into Mac: brew install vim --with-lua --with-python3

set nocompatible " Let vim be nocompatible with vi, but already set nocompatible when .vimrc is found

" Search
set ignorecase " Enable case-insensitive search
set smartcase " Enable case-sensitive search if a pattern contains uppercase letters
set incsearch " Enable incremental search
set hlsearch " Highlight matched text

" Edit
set showmatch " Highlight pairs of parens
set matchtime=1 " Tenths of a second to show the mathcing paren
set matchpairs& matchpairs+=<:> " Add target of showmatch
set hidden " Enable to switch buffer wihtout saving
set clipboard=unnamed,autoselect " Use clipboard to copy and paste
set backspace=indent,eol,start " Enable backspace to delete characters in the insertion mode
set virtualedit=block " Allow the cursor to be positioned where there is no actual character in the virtual mode.
set whichwrap=b,s,[,],<,> " Allow specified keys to move to the previous/next line
set nowritebackup " Do not create backup files
set nobackup " Do not create backup files
set noswapfile " Do not create swap files

" Display
set list " Display invisible characters
set listchars=tab:»-,trail:-,eol:¬,extends:»,precedes:«,nbsp:% " Characters for list settings
set number " Show line number
set ruler " Show the line and column number of the cursor position
set wrap " Wrap long lines
set textwidth=0
set title

" Indent
set tabstop=4 " Number of spaces that a tub in the file counts for
set expandtab " Use spaces instead of tab
set shiftwidth=4 " Number of spaces used for indent
set smartindent " Do smart autoindenting when starting a new line
set autoindent " Copy indent from current line when starting a new line

" Etc
set ambiwidth=double " Required for unicode characters
set nrformats-=octal
set history=50 " Number of command history to be remembered
set wildmenu " Enable command-line completion by pressing <Tab>
set tags=tags;/,codex.tags;/
set noerrorbells visualbell t_vb= "Suppress beep
set completeopt=menuone

" Extend '%' matching
if !exists('g:loaded_matchit')
  runtime macros/matchit.vim
endif
