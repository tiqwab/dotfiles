NeoBundle "Shougo/neosnippet.vim"
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle "honza/vim-snippets"

let g:neosnippet#enable_snipmate_compatibility = 1

let g:neosnippet#disable_runtime_snippets = {'_' : 1}
let g:neosnippet#snippets_directory = []
let g:neosnippet#snippets_directory = ['~/.vim/snippets']
" let g:neosnippet#snippets_directory += ['~/.vim/bundle/neosnippet-snippets/neosnippets']
let g:neosnippet#snippets_directory += ['~/.vim/bundle/vim-snippets/snippets']

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
