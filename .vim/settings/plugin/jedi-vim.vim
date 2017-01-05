NeoBundleLazy 'davidhalter/jedi-vim', {
    \ "autoload": { "filetypes": ["python", "python3", "djangohtml"] } }
if ! empty(neobundle#get("jedi-vim"))
    let g:jedi#auto_initialization = 1
    let g:jedi#auto_vim_configuration = 1

    nnoremap [jedi] <Nop>
    xnoremap [jedi] <Nop>
    nmap <Leader>j [jedi]
    xmap <Leader>j [jedi]

    let g:jedi#completions_command = "<C-Space>"    "  補完キーの設定この場合はCtrl+Space
    let g:jedi#goto_assignments_command = "<C-g>"   " 変数の宣言場所へジャンプ（Ctrl + g)
    let g:jedi#goto_definitions_command = "<C-d>"   " クラス、関数定義にジャンプ（Gtrl + d）
    let g:jedi#documentation_command = "<C-k>"      " Pydocを表示（Ctrl + k）
    let g:jedi#rename_command = "[jedi]r"
    let g:jedi#usages_command = "[jedi]n"
    let g:jedi#popup_select_first = 0
    let g:jedi#popup_on_dot = 0

    autocmd FileType python setlocal completeopt-=preview

    " for w/ neocomplete
    if ! empty(neobundle#get("neocomplete.vim"))
        autocmd FileType python setlocal omnifunc=jedi#completions
        let g:jedi#completions_enabled = 0
        let g:jedi#auto_vim_configuration = 0
        if !exists('g:neocomplete#force_omni_input_patterns')
            let g:neocomplete#force_omni_input_patterns = {}
        endif
        let g:neocomplete#force_omni_input_patterns.python =
                        \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    endif
endif
