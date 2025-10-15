" " sourced for filetype=go
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let b:argwrap_tail_comma = 1

" let g:go_fmt_command = "goimports"
nmap <leader># <Plug>(go-alternate-edit)

" vim-go already has these:
" command! -buffer GoTest :!go test
" command! -buffer GoBuild :!go build
" command! -buffer GoInstall :!go install

autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
autocmd BufWritePre <buffer> lua go_org_imports(1000)

setlocal commentstring=//%s
