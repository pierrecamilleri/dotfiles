if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1


set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable                     " Disable folding at startup.
