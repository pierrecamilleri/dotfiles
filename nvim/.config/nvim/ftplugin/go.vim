" " sourced for filetype=go

" let g:go_fmt_command = "goimports"
nmap <leader># <Plug>(go-alternate-edit)

" vim-go already has these:
" command! -buffer GoTest :!go test
" command! -buffer GoBuild :!go build
" command! -buffer GoInstall :!go install

autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre <buffer> lua go_org_imports(1000)

