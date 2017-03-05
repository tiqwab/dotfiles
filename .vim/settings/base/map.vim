""""""""""""""""""""""""""""""
" Configuration of key mapping
"""""""""""""""""""""""""""""""

" mapleader defines what key is <Leader>.
let mapleader = "\\"

" To prevent yank when deleting character by 'x' key
nnoremap x "_x

" neocomplete
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

" vim-quickrun
nmap <Leader>r <Plug>(quickrun)

" ghcmod-vim
noremap <silent> tw :GhcModTypeInsert<CR>
noremap <silent> ts :GhcModSplitFunCase<CR>
noremap <silent> tq :GhcModType<CR>
noremap <silent> te :GhcModTypeClear<CR>

" tagbar
nnoremap <F8> :TagbarToggle<CR>

inoremap <silent> <Esc> <Esc>
inoremap <silent> <C-[> <Esc>
inoremap <silent> <C-j> <C-^>

" fcitx
inoremap <silent> <C-j> <c-r>=IMState('FixMode')<CR>

" neosnippet
" Plugin key-mappings.
" Note: It must be imap and smap.  It uses <Plug> mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be imap and smap.  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
