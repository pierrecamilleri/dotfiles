" " sourced for filetype=go
let g:go_def_mapping_enabled = 0
let g:go_list_type = "quickfix"
" let b:ale_linters = ['gofmt', 'golint', 'go vet']

" " run :GoBuild or :GoTestCompile based on the go file
" function! s:build_go_files()
"   let l:file = expand('%')
"   if l:file =~# '^\f\+_test\.go$'
"     call go#test#Test(0, 1)
"   elseif l:file =~# '^\f\+\.go$'
"     call go#cmd#Build(0)
"   endif
" endfunction

" nmap <localleader>r  <Plug>(go-run)
" nmap <localleader>t  <Plug>(go-test)
" nmap <localleader>b :<C-u>call <SID>build_go_files()<CR>
" nmap <localleader>c <Plug>(go-coverage-toggle)
" nmap <leader>h <Plug>(go-doc)
" nmap <localleader>i <Plug>(go-info)
" nmap <localleader>n  <Plug>(go-rename)



" let g:go_fmt_command = "goimports"
nmap <leader># <Plug>(go-alternate-edit)

" vim-go already has these:
" command! -buffer GoTest :!go test
" command! -buffer GoBuild :!go build
" command! -buffer GoInstall :!go install

autocmd BufWritePre <buffer>
        \ call execute('LspCodeActionSync source.organizeImports')
