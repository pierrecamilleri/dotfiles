if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" autocmd BufWritePre <buffer> lua vim.lsp.buf.format()

autocmd FileType typescript setlocal commentstring=//\ %s
