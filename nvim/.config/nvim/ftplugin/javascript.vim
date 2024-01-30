if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

autocmd BufWritePre <buffer> lua vim.lsp.buf.format({filter = function(client) return client.name == "null-ls" end})

autocmd FileType javascript setlocal commentstring=//\ %s
