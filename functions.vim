

" ===============================================================================================
"                               Utility Functions
" ===============================================================================================

function! ExpandCMacro()
    "get current info
    let l:macro_file_name = "__macroexpand__" . tabpagenr()
    let l:file_row = line(".")
    let l:file_name = expand("%")
    let l:file_window = winnr()
    "create mark
    execute "normal! Oint " . l:macro_file_name . ";"
    execute "w"
    "open tiny window ... check if we have already an open buffer for macro
    if bufwinnr( l:macro_file_name ) != -1
        execute bufwinnr( l:macro_file_name) . "wincmd w"
        setlocal modifiable
        execute "normal! ggdG"
    else
        execute "bot 10split " . l:macro_file_name
        execute "setlocal filetype=cpp"
        execute "setlocal buftype=nofile"
        nnoremap <buffer> q :q!<CR>
    endif
    "read file with gcc
    silent! execute "r!gcc -E " . l:file_name
    "keep specific macro line
    execute "normal! ggV/int " . l:macro_file_name . ";$\<CR>d"
    execute "normal! jdG"
    "indent
    " execute "%!clang-format"
    " execute "normal! gg=G"
    "resize window
    execute "normal! G"
    let l:macro_end_row = line(".")
    execute "resize " . l:macro_end_row
    execute "normal! gg"
    "no modifiable
    " setlocal nomodifiable
    "return to origin place
    execute l:file_window . "wincmd w"
    execute l:file_row
    execute "normal!u"
    execute "w"
    "highlight origin line
    let @/ = getline('.')
endfunction

nnoremap <leader>= :call ExpandCMacro()<CR>
nnoremap <leader>cr :pyf ~/bin/clang-rename.py<CR>


" highlights yanked text
" augroup highlight_yank
"   autocmd!
"   autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
" augroup END

function! GetActiveBuffersCpp()
    let l:blist = getbufinfo({'bufloaded': 1, 'buflisted': 1})
    let l:result = []
    for l:item in l:blist
        "skip unnamed buffers; also skip hidden buffers?

        if empty(l:item.name)
            continue
        endif
        let l:match = match(l:item.name, '.cpp$\|.h$\|.c$\|.hpp$')
        if l:match == -1 
            continue
        endif
        call add(l:result, (l:item.name))
    endfor
    return l:result
endfunction
