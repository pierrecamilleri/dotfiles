
autocmd BufWritePre <buffer> lua vim.lsp.buf.format({filter = function(client) return client.name == "null-ls" end})
