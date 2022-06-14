augroup autoformat
  au!
  let g:lsp_format_sync_timeout = 1000
  autocmd! BufWritePre *.ts call execute('LspDocumentFormatSync')

  " autocmd BufWritePre *  :LspDocumentFormatSync
  " autocmd BufWritePre *.ts  :EslintFix
augroup END
