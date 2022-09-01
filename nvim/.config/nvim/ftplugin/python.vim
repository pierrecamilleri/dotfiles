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
" Run tests which are discoverable
nmap <silent> <leader>t :call slime#send(interrupt_escape_sequence)<CR>
      \:call slime#send("!python -m unittest\r")<CR>

autocmd BufWritePre <buffer> LspDocumentFormatSync
setlocal commentstring=#%s
