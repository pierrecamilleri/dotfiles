if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

set tabstop=4
set softtabstop=4
set shiftwidth=4

" Run current script
nmap <silent> <leader>s :call slime#send(interrupt_escape_sequence)<CR>
      \:call slime#send('%run "' .  expand('%:p') . '"' . "\r")<CR>

autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
setlocal commentstring=#%s
