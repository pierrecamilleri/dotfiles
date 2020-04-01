"Trim whitespace
function s:TrimWhitespace()
  " Only strip if the b:noStripeWhitespace variable isn't set
  if exists('b:noStripWhitespace')
    return
  endif
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l,c)
endfunction


nnoremap <silent> <Plug>TrimWhitespace
      \ :<C-U>call <SID>TrimWhitespace()<CR>



