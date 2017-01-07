""""""""""""""""""""""""""""""
" Configuration of key mapping
"""""""""""""""""""""""""""""""

" mapleader defines what key is <Leader>.
let mapleader = "\\"

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
